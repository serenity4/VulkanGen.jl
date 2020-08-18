mutable struct WrappedAPI
    source
    structs
    funcs
    consts
    enums
end

# not efficient
vars(w_api) = OrderedDict([k => v for field ∈ getproperty.(Ref(w_api), [:structs, :funcs, :consts, :enums]) for (k, v) ∈ field])

Base.show(io::IO, w_api::WrappedAPI) = print(io, "Wrapped API with $(length(w_api.structs)) structs, $(length(w_api.funcs)) functions, $(length(w_api.consts)) consts and $(length(w_api.enums)) enums wrapped from $(w_api.source)")

abstract type Wrapper end

default_filename(::Type{SDefinition}) = "structs.jl"
default_filename(::Type{FDefinition}) = "functions.jl"
default_filename(::Type{CDefinition}) = "globals.jl"
default_filename(::Type{EDefinition}) = "globals.jl"

default_spacing(::SDefinition) = "\n"^2
default_spacing(decl::FDefinition) = decl.short ? "\n" : "\n"^2
default_spacing(::CDefinition) = "\n"
default_spacing(::EDefinition) = "\n"

Base.write(io::IO, defs::AbstractArray{T}; spacing=default_spacing, kwargs...) where {T <: Declaration} =  write.(Ref(io), join(Iterators.flatten(zip(generate.(defs; kwargs...), spacing.(defs)))))

"""Write a wrapped API to files in dest_dir.

Spacing options can be controlled by providing the corresponding argument with a function.
Files that are written to can be controlled by providing the filename argument with a function.
"""
function Base.write(w_api::WrappedAPI, dest_dir; spacing=default_spacing, filename=default_filename, check=true)
    for defs ∈ collect.(values.([w_api.consts, w_api.enums, w_api.structs, w_api.funcs]))
        dest = filename(eltype(defs))
        kwargs = eltype(defs) == FDefinition ? (check_identifiers = check,) : ()
        open(joinpath(dest_dir, dest), "w+") do io
            write(io, defs; spacing, kwargs...)
        end
    end
end


const default_type_conversions = Dict(
    "Cstring" => "Cstring",
    "Float32" => "Float32",
    "Float64" => "Float64",
    "Int32" => "Int32",
    "Int64" => "Int64",
    "Nothing" => "Nothing",
    "Ptr{Nothing}" => "Ptr{Nothing}",
    "UInt16" => "UInt16",
    "UInt32" => "UInt32",
    "UInt64" => "UInt64",
    "UInt8" => "UInt8",
    "Cdouble" => "Float64",
    "Cfloat" => "Float32",
    "Cint" => "Int32",
    "Csize_t" => "UInt",
    "Cssize_t" => "Int",
    "Cstring" => "String",
    "Cuint" => "UInt32",
    "VkBool32" => "Bool",
    )
    
    
    
is_opaque_ptr(ptr) = ptr == Ptr{Nothing}
stype_splice(fdef) = getproperty(vk, Symbol(stypes[fdef.name]))

# arguments whose value is always predetermined by the function signature
# they are dropped as argument and replaced wherever necessary
const spliced_args = Dict(
    "sType" => stype_splice,
)
include("wrapping/function_logic.jl")
include("wrapping/constructor_logic.jl")
include("wrapping/struct_logic.jl")

function wrap_api(api::API; type_conversions=deepcopy(default_type_conversions))

    w_api = WrappedAPI(api.source, SDefinition[], FDefinition[], CDefinition[], EDefinition[])
    function isknown(type)
        type ∈ keys(type_conversions) && return true
        subtypes = type_dependencies(type)
        !isempty(subtypes) && all(isknown(subtype) for subtype ∈ subtypes)
    end
    isknown(sdef::SDefinition) = isknown(sdef.name)
    isknown(fdef::Declaration) = false

    function is_struct(str)
        sym_eval = api.eval(Symbol(str))
        !(sym_eval <: Tuple) && isstructtype(sym_eval) # tuples are composite types
    end

    function fetch_known_type(type)
        type ∈ keys(type_conversions) && return type_conversions[type]
        new_type = type
        for t ∈ type_dependencies(type)
            new_type = replace(String(new_type), "$t" => "$(type_conversions[t])")
        end
    end

    function wrap_field_transform(name, type)
        type = isknown(type) ? field_transform(name) => fetch_known_type(type) : field_transform(name, type)
    end

    function wrap!(w_api::WrappedAPI, sdef::SDefinition)
        new_sdef = wrap_struct!(w_api, sdef)
        wrap_constructor!(w_api, new_sdef, sdef)
    end

    function wrap_struct!(w_api::WrappedAPI, sdef)
        new_fields = OrderedDict()
        for (name, type) ∈ sdef.fields
            if discard_field(name, type, sdef)
                continue
            end
            if !isknown(type)
                for t ∈ type_dependencies(type)
                    if t != sdef.name && t ∈ keys(api.structs) && t ∉ keys(type_conversions) # avoid recursive struct field definitions, do not parse non-API types and do not rewrap a wrapped type
                        wrap!(w_api, api.structs[t])
                    end
                end
            end
            f = wrap_field_transform(name, type)
            new_fields[f.first] = f.second
        end
        new_fields["vk"] = sdef.name
        new_name = name_transform(sdef)
        new_sdef = SDefinition(new_name, any(isa.(Finalizer, typeof.(patterns(sdef)))), new_fields)
        if sdef.name ∉ keys(type_conversions)
            push!(w_api.structs, new_sdef) # add to wrapped structs
            type_conversions[sdef.name] = new_sdef.name # add as a conversion from its name
        else
            @warn "Parsed type $(sdef.name) but was already processed"
        end
        new_sdef
    end

    function wrap_constructor!(w_api, new_sdef, sdef)
        fname = new_sdef.name
        kwargs = parameters_from_fields(sdef)
        args = filter(x -> x.name != "vk", arguments_from_fields(new_sdef))
        sig = Signature(fname, args, kwargs)
        body = constructor_body(api, new_sdef, sdef, args, kwargs)
        co = FDefinition(fname, sig, length(body) == 1, body)
        push!(w_api.funcs, co)
    end

    function wrap!(w_api, fdef::FDefinition)
        args = isempty(fdef.signature.args) ? [] : map(arg_transform, Ref(fdef), fdef.signature.args)
        kwargs = isempty(fdef.signature.kwargs) ? [] : map(kwarg_transform, Ref(fdef), fdef.signature.kwargs)
        name = name_transform(fdef)
        # body = statements(patterns(fdef))
        body = fdef.body
        new_fdef = FDefinition(name, Signature(name, args, kwargs), fdef.short, body)
        push!(w_api.funcs, new_fdef)
    end

    function parse_ptr(sym)
        base = remove_prefix(sym)
        SDefinition(sym, false, OrderedDict("handle" => "Ptr{Nothing}", "deps" => "Any")) # will be transformed by the struct_wrapper
    end

    function convert_constptr_to_struct!(struct_dict, consts)
        for cdef ∈ consts
            if is_opaque_ptr(api.eval(cdef.value)) && !startswith(cdef.name, "PFN") # ignore function pointers
                sdef = parse_ptr(cdef.name)
                struct_dict[sdef.name] = sdef
            end
        end
    end

    function wrap!(w_api, objects, errors)
        for obj ∈ objects
            if !isknown(obj)
                try
                    wrap!(w_api, obj)
                catch e
                    msg = hasproperty(e, :msg) ? e.msg : "$(typeof(e))"
                    errors[obj.name] = msg
                    println("\e[31;1;1m$(obj.name): $msg\e[m")
                    rethrow(e)
                    typeof(e) ∈ [ErrorException, AssertionError] ? continue : rethrow(e)
                end
            end
        end
    end

    function wrap!(w_api)
        errors = OrderedDict()
        convert_constptr_to_struct!(api.structs, values(api.consts))
        wrap!(w_api, values(api.structs), errors)
        wrap!(w_api, values(api.funcs), errors)
        length(errors) == 0 ? @info("API successfully wrapped.") : @warn("API wrapped with $(length(errors)) errors:")
        for (field, msg) ∈ errors
            println("\t\e[31;1;1m$field: $msg\e[m")
        end
        w_api
    end

    wrap!(w_api)

end