mutable struct WrappedAPI
    source
    structs
    funcs
    consts
    enums
end

# not efficient
vars(w_api) = OrderedDict([Pair(k, v) for field ∈ getproperty.(Ref(w_api), [:structs, :funcs, :consts, :enums]) for (k, v) ∈ field])

Base.show(io::IO, w_api::WrappedAPI) = print(io, "Wrapped API with $(length(w_api.structs)) structs, $(length(w_api.funcs)) functions, $(length(w_api.consts)) consts and $(length(w_api.enums)) enums wrapped from $(w_api.source)")

abstract type Wrapper end

field_transform_default(name) = name
field_transform_default(name, type) = name => type

const default_filenames = Dict(
    SDefinition => "structs.jl",
    FDefinition => "functions.jl",
    CDefinition => "globals.jl",
    EDefinition => "globals.jl",
)

const default_spacings = Dict(
    SDefinition => "\n" ^ 2,
    FDefinition => "\n" ^ 2,
    CDefinition => "\n",
    EDefinition => "\n",
)
    
Base.write(io::IO, defs::AbstractArray{T}; spacings=default_spacings) where {T<: Declaration} =  write.(Ref(io), join(generate.(defs), spacings[T]))

function Base.write(w_api::WrappedAPI, dest_dir; spacings=default_spacings, filenames=default_filenames)
    for defs ∈ collect.(values.([w_api.consts, w_api.enums, w_api.structs, w_api.funcs]))
        dest = filenames[eltype(defs)]
        open(joinpath(dest_dir, dest), "w+") do io
            write(io, defs; spacings)
        end
    end
end

@with_kw mutable struct StructWrapper <: Wrapper
    structs::AbstractArray{SDefinition} = SDefinition[]
    constructors::AbstractArray{FDefinition} = FDefinition[]
    keep_field_f = (x, y) -> true # function which operates on name, type args for each struct field, returns a Bool
    field_transform = field_transform_default # function which operates on a name, type args for each struct field, returns a name => type pair or nothing
    name_transform = x -> x.name
    is_mutable_f = x -> false
end

@with_kw mutable struct FuncWrapper <: Wrapper
    funcs::AbstractArray{FDefinition} = FDefinition[]
    keep_arg = x -> true # function which operates on an Argument (PositionalArgument or KeywordArgument)
    splice_arg = x -> nothing
end

@with_kw mutable struct ConstWrapper <: Wrapper # just here to hold consts and enums
    consts::AbstractArray{CDefinition} = CDefinition[]
    enums::AbstractArray{EDefinition} = EDefinition[]
end

function remove_shape_info(sym)
    list = unique(split(String(sym), ",") |> Filter(x -> isnothing(match(r"^\d+$", x))) |> collect)
    @assert length(list) == 1 list
    list[1]
end

remove_lib_prefix(sym, lib_prefix) = isnothing(lib_prefix) ? sym : Symbol(replace(String(sym), lib_prefix * "." => ""))

function type_dependencies(type::Symbol, lib_prefix)
    eachmatch(r"{(.*)}", "$type ") |> Map(x -> getproperty(x, :captures)[1]) |> Map(x -> remove_lib_prefix(sym"$x", lib_prefix)) |> Map(remove_shape_info) |> Map(strip) |> Map(Symbol) |> collect
end

is_opaque_ptr(ptr) = ptr == Ptr{Nothing}

function wrap_api(api::API; is_mutable=x -> false, lib_prefix=nothing, parameters=[], spliced_args=[], type_conversions=Dict(), struct_wrapper=StructWrapper(), func_wrapper=FuncWrapper(), const_wrapper=ConstWrapper(), wrapped_api= nothing)

    w_api = isnothing(wrapped_api) ? WrappedAPI(api.source, SDefinition[], FDefinition[], CDefinition[], EDefinition[]) : wrapped_api
    
    function isknown(type)
        type ∈ keys(type_conversions) && return true
        subtypes = filter(x -> x != type, type_dependencies(type, lib_prefix))
        !isempty(subtypes) && all(isknown(subtype) for subtype ∈ subtypes)
    end
    isknown(sdef::SDefinition) = isknown(sdef.name)

    function is_struct(sym)
        sym_eval = api.eval(sym)
        !(sym_eval <: Tuple) && isstructtype(sym_eval)
    end


    function fetch_known_type(type)
        type ∈ keys(type_conversions) && return type_conversions[type]
        new_type = type
        for t ∈ type_dependencies(type, lib_prefix)
            new_type = Symbol(replace(String(new_type), "$t" => "$(type_conversions[t])"))
        end
    end

    function wrap_field_transform(struct_wrapper, name, type)
        type = isknown(type) ? struct_wrapper.field_transform(name) => fetch_known_type(type) : struct_wrapper.field_transform(name, type)
    end

    function wrap!(struct_wrapper::StructWrapper, def::SDefinition)
        if is_opaque_ptr(api.eval(def.name))
            new_def = parse_ptr(def)
        elseif is_struct(def.name)
            new_def = wrap_struct!(struct_wrapper, def)
        end
        if def.name ∉ keys(type_conversions)
            push!(struct_wrapper.structs, new_def) # add to wrapped structs
            type_conversions[def.name] = new_def.name # add as a conversion from its name
        else
            @warn "Parsed type $(def.name) but was already processed"
        end
    end

    function wrap_struct!(struct_wrapper::StructWrapper, sdef)
        new_fields = OrderedDict()
        for (name, type) ∈ sdef.fields
            if !struct_wrapper.keep_field_f(name, type)
                continue
            end
            if !isknown(type)
                for t ∈ type_dependencies(type, lib_prefix) # also includes original type
                    if t != sdef.name && t ∈ keys(api.structs) && t ∉ keys(type_conversions) # avoid recursive struct field definitions, do not parse non-API types and do not rewrap a wrapped type
                        wrap!(struct_wrapper, api.structs[t])
                    end
                end
            end
            f = wrap_field_transform(struct_wrapper, name, type)
            if !isnothing(f) && !isnothing(f.first)
                new_fields[f.first] = f.second
            end
        end
        new_name = struct_wrapper.name_transform(sdef)
        SDefinition(new_name, struct_wrapper.is_mutable_f(new_name), new_fields)
    end

    function parse_ptr(sym)
        str = String(sym)
        base = Symbol(startswith(str, vk_prefix(CamelCaseUpper)) ? str[3:end] : sym)
        SDefinition(base, is_mutable(base), OrderedDict(:handle => Ptr{Nothing}, :deps => nothing))
    end

    function wrap!(wrapper::Wrapper, objects, errors)
        for obj ∈ objects
            if !isknown(obj)
                try
                    wrap!(wrapper, obj)
                catch e
                    msg = hasproperty(e, :msg) ? e.msg : "$(typeof(e))"
                    errors[s.name] = msg
                    println("\e[31;1;1m$(s.name): $msg\e[m")
                    rethrow(e)
                    # typeof(e) == ErrorException ? continue : rethrow(e)
                end
            end
        end
    end

    function wrap!(w_api)
        errors = OrderedDict()
        wrap!(struct_wrapper, values(api.structs), errors)
        # wrap!(func_wrapper, values(api.funcs), errors)
        length(errors) == 0 ? @info("API successfully wrapped.") : @warn("API wrapped with $(length(errors)) errors:")
        for (field, msg) ∈ errors
            println("\t\e[31;1;1m$field: $msg\e[m")
        end
        w_api.structs = OrderedDict(struct_wrapper.structs)
        w_api.funcs = OrderedDict(FDefinition[struct_wrapper.constructors..., func_wrapper.funcs...])
        w_api.consts = OrderedDict(const_wrapper.consts)
        w_api.enums = OrderedDict(const_wrapper.enums)
        w_api
    end

    wrap!(w_api)

end