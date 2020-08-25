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

default_spacing(::SDefinition) = "\n"^2
default_spacing(decl::FDefinition) = decl.short ? "\n" : "\n"^2
default_spacing(::CDefinition) = "\n"
default_spacing(::EDefinition) = "\n"

unsolved_dependencies(sdef, decls) = collect(values(decls)[findall(keys(decl) .== setdiff(type_dependencies(sdef), keys(decls)))])
are_dependencies_solved(def, decls) = isempty(unsolved_dependencies(def, decls))

function write_api!(io::IO, def::Declaration; spacing, kwargs...)
    write(io, generate(def; kwargs...) * spacing(def))
end

"""Write a wrapped API to files in dest_dir.

Spacing options can be controlled by providing the corresponding argument with a function.
Files that are written to can be controlled by providing the filename argument with a function.
"""
function Base.write(w_api::WrappedAPI, destfile; spacing=default_spacing, check=true)
    decls = OrderedDict((vcat(w_api.consts, w_api.enums, w_api.structs)...)...)
    decls_order = resolve_dependencies(decls)
    check_dependencies(decls, decls_order)
    open(destfile, "w+") do io; nothing end
    for decl ∈ Iterators.flatten((getindex.(Ref(decls), decls_order), values(w_api.funcs)))
        kwargs = typeof(decl) == FDefinition ? (check_identifiers = check,) : ()
        open(destfile, "a+") do io
            write_api!(io, decl; spacing, kwargs...)
        end
    end
    format(destfile)
    nothing
end

stype_splice(fdef) = getproperty(vk, Symbol(stypes[fdef.name]))
name_transform(decl::Declaration) = name_transform(decl.name, typeof(decl))

# arguments whose value is always predetermined by the function signature
# they are dropped as argument and replaced wherever necessary
const spliced_args = Dict(
    "sType" => stype_splice,
)

include("wrapping/struct_logic.jl")
include("wrapping/constructor_logic.jl")
include("wrapping/function_logic.jl")

function wrap!(w_api::WrappedAPI, api::API)
    sdefs = collect(values(api.structs))
    sdef_handles = filter(x -> is_handle(x.name), sdefs)
    sdef_enumerated_properties = filter(is_enumerated_property, sdefs)
    other_structs = setdiff(sdefs, union(sdef_handles, sdef_enumerated_properties))
    errors = OrderedDict()
    wrap!(w_api, api, other_structs, errors)
    wrap!(w_api, api, sdef_enumerated_properties, errors)
    wrap!(w_api, api, sdef_handles, errors)
    wrap!(w_api, api, values(api.funcs), errors)
    wrap!(w_api, api, values(api.consts), errors)
    wrap!(w_api, api, values(api.enums), errors)
    length(errors) == 0 ? @info("API successfully wrapped.") : @warn("API wrapped with $(length(errors)) errors:")
    for (field, msg) ∈ errors
        println("\t\e[31;1;1m$field: $msg\e[m")
    end
    w_api
end

function wrap!(w_api, api, objects, errors)
    for obj ∈ objects
        try
            wrap!(w_api, api, obj)
        catch e
            msg = hasproperty(e, :msg) ? e.msg : "$(typeof(e))"
            errors[obj.name] = msg
            println("\e[31;1;1m$(obj.name): $msg\e[m")
            rethrow(e)
            typeof(e) ∈ [ErrorException, AssertionError] ? continue : rethrow(e)
        end
    end
end

function wrap!(w_api, api, edef::EDefinition)
    new_edef = EDefinition(remove_vk_prefix(edef.name), remove_vk_prefix.(edef.fields), edef.with_begin_block, isnothing(edef.type) ? nothing : remove_vk_prefix(edef.type), edef.enum_macro)
    w_api.enums[new_edef.name] = new_edef
    w_api.funcs["convert_$(edef.name)"] = FDefinition("Base.convert(T::Type{$(new_edef.name)}, e::$(edef.name)) = T(UInt(e))")
end

function wrap!(w_api, api, cdef::CDefinition)
    new_cdef = CDefinition(remove_vk_prefix(cdef.name), is_literal(cdef.value) ? cdef.value : remove_vk_prefix(cdef.value))
    w_api.consts[new_cdef.name] = new_cdef
end

function wrap(api::API)
    w_api = WrappedAPI(api.source, OrderedDict{String, SDefinition}(), OrderedDict{String, FDefinition}(), OrderedDict{String, CDefinition}(), OrderedDict{String, EDefinition}())
    wrap!(w_api, api)
end