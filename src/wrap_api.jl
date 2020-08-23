mutable struct WrappedAPI
    source
    structs
    funcs
    consts
    enums
    converted_types
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

function write_api(io::IO, def::SDefinition; w_api::WrappedAPI, spacing, kwargs...)
    write(io, generate(def; kwargs...) * spacing(def))
    if isalias(def.name)
        const_alias = w_api.consts[alias(def.name)]
        write_api(io, generate(const_alias) * spacing(const_alias))
    end
end

function write_api(io::IO, def::Declaration; spacing, kwargs...)
    write(io, generate(def; kwargs...) * spacing(def))
end

"""
Write a const definition on the condition that it is not a struct alias, because any such alias is already written along with the aliased struct definition.
"""
function write_api(io::IO, def::CDefinition; w_api, spacing, kwargs...)
    if !(isaliased(def.name) && def.name ∈ keys(w_api.structs))
        write(io, generate(def, kwargs...) * spacing(def))
    end
end

"""Write a wrapped API to files in dest_dir.

Spacing options can be controlled by providing the corresponding argument with a function.
Files that are written to can be controlled by providing the filename argument with a function.
"""
function Base.write(w_api::WrappedAPI, dest_dir; spacing=default_spacing, filename=default_filename, check=true)
    for defs ∈ collect.(values.([w_api.consts, w_api.enums, w_api.structs, w_api.funcs]))
        dest = filename(eltype(defs))
        kwargs = eltype(defs) == FDefinition ? (check_identifiers = check,) : eltype(defs) ∈ [CDefinition, SDefinition] ? (w_api=w_api,) : ()
        destfile = joinpath(dest_dir, dest)
        open(destfile, "w+") do io
            write_api.(Ref(io), defs; spacing, kwargs...)
        end
        format(destfile)
    end
end

struct Converted
    initial_type
    final_type
end

type_conversions = Dict(
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
    "Ptr{Cstring}" => "Union{<: AbstractArray, Ptr{Cvoid}}",
    "NTuple{256, UInt8}" => Converted("NTuple{256, UInt8}", "String"),
    "NTuple{16, UInt8}" => Converted("NTuple{256, UInt8}", "String"),
    "Ptr{Cvoid}" => "Ptr{Cvoid}",
)


is_opaque_ptr(ptr) = ptr == Ptr{Nothing}
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
    errors = OrderedDict()
    wrap!(w_api, api, values(api.structs), errors)
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
        if !isknown(obj, w_api.converted_types)
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
end

function wrap!(w_api, api, edef::EDefinition)
    push!(w_api.enums, edef)
end

function wrap!(w_api, api, cdef::CDefinition)
    push!(w_api.consts, cdef)
end

function wrap(api::API)
    w_api = WrappedAPI(api.source, SDefinition[], FDefinition[], CDefinition[], EDefinition[], Dict())
    wrap!(w_api, api)
end