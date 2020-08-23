function wrap!(w_api, api, sdef::SDefinition)
    new_sdef = wrap_struct!(w_api, api, sdef)
    wrap_constructor!(w_api, api, new_sdef, sdef)
end

function wrap_struct!(w_api::WrappedAPI, api, sdef)
    converted_types = w_api.converted_types
    new_fields = OrderedDict()
    if is_handle(sdef.name)
        handle = sdef.name
        new_fields["handle"] = handle
        if haskey(handle_creation_info, handle)
            new_name_create_info = handle_creation_info[handle][2]
            new_name_create_info_unaliased = resolve_alias(new_name_create_info)
            if !isknown(new_name_create_info_unaliased, converted_types)
                wrap!(w_api, api,  api.structs[new_name_create_info_unaliased])
            end
            new_fields["info"] = name_transform(new_name_create_info, SDefinition) # use the wrapped info type
        end
    else
        for (name, type) ∈ sdef.fields
            discard_field(name, type, sdef) && continue
            new_name, new_type = field_transform(name, type, converted_types) 
            if !isknown(new_type, converted_types)
                for t ∈ type_dependencies(new_type)
                    if t != sdef.name && t ∈ keys(api.structs) && t ∉ keys(converted_types) # avoid recursive struct field definitions, do not wrap non-API types and do not rewrap a wrapped type
                        wrap!(w_api, api, api.structs[t])
                    end
                end
            end
            new_fields[new_name] = new_type
        end
        if !is_enumerated_property(sdef)
            new_fields["vk"] = sdef.name
        end
    end
    new_name = name_transform(sdef)
    new_sdef = SDefinition(new_name, any(isa.(Finalizer, typeof.(patterns(sdef)))), new_fields)
    if sdef.name ∉ keys(converted_types)
        push!(w_api.structs, new_sdef) # add to wrapped structs
        converted_types[sdef.name] = new_sdef.name # add as a conversion from its name
    else
        @warn "Parsed type $(sdef.name) but was already processed"
    end
    new_sdef
end

convention_exceptions = Dict(
    "textureCompressionASTC_LDR" => "texture_compression_astc_ldr",
    "textureCompressionASTC_HDR" => "texture_compression_astc_hdr",
    "formatA4R4G4B4" => "format_a4r4g4b4",
    "formatA4B4G4R4" => "format_a4b4g4r4",
)

const lib_prefix = "VulkanCore.LibVulkan"
# parameters to keep in a constructor rather than in a struct
const parameters = Dict(
    "pNext" => KeywordArgument("next", "C_NULL"),
    "flags" => KeywordArgument("flags", "0"),
    "pAllocator" => KeywordArgument("pAllocator", "C_NULL"),
)
const dropped_fields = collect(Iterators.flatten((keys(parameters), keys(spliced_args))))

instance_name(sdef) = convert(SnakeCaseLower, sdef.name)
remove_lib_prefix(str) = replace(str, lib_prefix * "." => "")
has_deps(x) = !isnothing(match(r"{(.*)}", x))

struct TypeDep
    data
    TypeDep(data) = new(replace(data, " " => ""))
end

function AbstractTrees.children(el::TypeDep)
    !has_deps(el.data) && return []

    dep = match(r"{(.*)}", el.data).captures[1]

    cb_count = 0
    siblings = []
    sibling_chars = Char[]
    for (i, char) ∈ enumerate(dep)
        cb_count += 1 * (char == '{')
        cb_count -= 1 * (char == '}')
        found = ((char == ',' || i == length(dep)) && cb_count == 0)
        if found
            if char == dep[end]
                push!(sibling_chars, char)
            end
            push!(siblings, String(sibling_chars))
            sibling_chars = Char[]
        else
            push!(sibling_chars, char)
        end
    end
    TypeDep.(siblings)
end

"Returns whether the given type has a predefined mapping or was already converted. Recurses through inner types."
function isknown(type, converted_types)
    (type ∈ keys(type_conversions) || type ∈ keys(converted_types)) && return true
    subtypes = type_dependencies(type)
    !isempty(subtypes) && all(isknown(subtype, converted_types) for subtype ∈ subtypes)
end

isknown(sdef::SDefinition, converted_types) = isknown(sdef.name, converted_types)
isknown(fdef::Declaration, converted_types) = false

function fetch_known_type(type, converted_types)
    @return_value_if_key_exists type_conversions type
    @return_value_if_key_exists converted_types type
    type
end

function inner_type(type)
    type_deps = type_dependencies(type)
    is_ptr_to_ptr(type) && (@assert(length(type_deps) == 2, "Type $type is a pointer to a pointer with more than one base element"); return last(type_deps))
    is_ptr(type) && (@assert(length(type_deps) == 1, "Type $type is a pointer with more than one base element"); return last(type_deps))
    error("Cannot take inner type of $type")
end

"Convert a Ptr{Ptr{T}} to an AbstractArray{fetch_known_type(T)}, or a Ptr{T} to a fetch_known_type(T)."
function convert_nested_type(type, converted_types)
    eltype = inner_type(type)
    is_ptr_to_ptr(type) && return "AbstractArray{$(fetch_known_type(eltype, converted_types))}"
    is_ptr(type) && eltype ∈ keys(type_conversions) && return "Ptr{$(type_conversions[eltype])}"
    is_ptr(type) && return fetch_known_type(eltype, converted_types)
    error("Nested type $type is neither a pointer nor an array (pointer to pointer) type")
end


"Returns all the nested types that a type depends on."
function type_dependencies(type; include_type=false)
    deps = getproperty.(collect(PreOrderDFS(TypeDep(type))), :data)
    include_type ? deps : filter(x -> x != TypeDep(type).data, deps)
end

function field_transform(name, type, converted_types)
    type = fieldtype_transform(name, type, converted_types)
    fieldname_transform(name, type) => type isa Converted ? type.final_type : type
end

function fieldname_transform(name, type)
    name ∈ keys(convention_exceptions) && return convention_exceptions[name]
    startswith(name, "pfn") && return convert(SnakeCaseLower, CamelCaseUpper(name[4:end])).value
    if !isnothing(match(r"^p+[A-Z]", name))
        cc = CamelCaseUpper(lstrip(name, 'p'))
    else
        cc = detect_convention(name)(name)
    end
    convert(VulkanGen.julia_convention[:variable], cc).value
end

property_exceptions = [
    "VkPhysicalDeviceLimits"
]

function is_enumerated_property(sdef)
    (any(enumeration_command_counts[f][2] == sdef.name for f ∈ keys(enumeration_command_counts))) || occursin("Properties", sdef.name) || sdef.name ∈ property_exceptions
end

function fieldtype_transform(name, type, converted_types)
    startswith(type, "PFN_") && return "Function"
    isnothing(type) && return "Any"
    occursin("version", lowercase(name)) && type == "UInt32" && return Converted(type, "VersionNumber")
    (!is_ptr(type) || (is_ptr(type) && type ∈ keys(type_conversions))) && return fetch_known_type(type, converted_types)
    convert_nested_type(type, converted_types)
end

discard_field(name, type, sdef) = name ∈ dropped_fields || !isnothing(cardinality(name, sdef.name))

is_ptr_to_ptr(type) = startswith(type, "Ptr{Ptr{")
is_ptr(type) = startswith(type, "Ptr{")

name_transform(str, ::Type{SDefinition}) = str[3:end]