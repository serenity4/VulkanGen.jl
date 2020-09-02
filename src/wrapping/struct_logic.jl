function wrap!(w_api, api, sdef::SDefinition)
    new_sdef = structure(sdef)
    wrap_structure!(w_api, new_sdef)
    wrap_constructor!(w_api, api, new_sdef, sdef)
end

function wrap_structure!(w_api, new_sdef)
    if new_sdef.name ∉ keys(w_api.structs)
        w_api.structs[new_sdef.name] = new_sdef # add to wrapped structs
    else
        @warn "Wrapping type $(sdef.name) but was already processed"
    end
end

function structure(sdef)
    new_fields = OrderedDict()
    if is_handle(sdef.name)
        handle = sdef.name
        new_fields["handle"] = handle
        if haskey(handle_creation_info, handle)
            new_name_create_info = handle_creation_info[handle][2]
            new_name_create_info_unaliased = isalias(new_name_create_info) ? follow_alias(new_name_create_info) : new_name_create_info
            new_fields["info"] = name_transform(new_name_create_info, SDefinition) # use the wrapped info type
        end
    else
        for (name, type) ∈ sdef.fields
            discard_field(name, type, sdef) && continue
            new_name, new_type = field_transform(name, type) 
            new_fields[new_name] = new_type
        end
        if !is_enumerated_property(sdef)
            new_fields["vk"] = sdef.name
        end
    end
    new_name = name_transform(sdef)
    SDefinition(new_name, any(isa.(Finalizer, typeof.(patterns(sdef)))), new_fields)
end

convention_exceptions = Dict(
    "textureCompressionASTC_LDR" => "texture_compression_astc_ldr",
    "textureCompressionASTC_HDR" => "texture_compression_astc_hdr",
    "formatA4R4G4B4" => "format_a4r4g4b4",
    "formatA4B4G4R4" => "format_a4b4g4r4",
)

const lib_prefix = "VulkanCore.LibVulkan"
# parameters to keep in a constructor rather than in a struct
const parameters_dict = Dict(
    "pNext" => KeywordArgument("next", "C_NULL"),
    "flags" => KeywordArgument("flags", "0"),
    "pAllocator" => KeywordArgument("pAllocator", "C_NULL"),
)
const dropped_fields = collect(Iterators.flatten((keys(parameters_dict), keys(spliced_args))))

instance_name(sdef) = convert(SnakeCaseLower, sdef.name)


"Convert a Ptr{Ptr{T}} to an AbstractArray{fetch_known_type(T)}, or a Ptr{T} to a fetch_known_type(T)."
function convert_nested_type(type)
    eltype = inner_type(type)
    is_ptr_to_ptr(type) && return "AbstractArray{$(fieldtype_transform("", eltype))}"
    is_ptr(type) && is_vulkan_type(eltype) && return fieldtype_transform("", eltype)
    is_ptr(type) && return "Ptr{$(fieldtype_transform("", eltype))}"
    is_ntuple(type) && return replace(type, eltype => fieldtype_transform("", eltype))
    error("Nested type $type is neither a pointer nor an array (pointer to pointer) type")
end


function type_dependencies(sdef::SDefinition)
    type_deps = filter(x -> x ≠ sdef.name, map((x, y) -> isempty(x) ? [y] : x, type_dependencies.(values(sdef.fields)), values(sdef.fields)))
    isempty(type_deps) ? String[] : unique(vcat(type_deps...))
end

function field_transform(name, type)
    new_type = fieldtype_transform(name, type)
    fieldname_transform(name, type) => new_type isa Converted ? new_type.final_type : new_type
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

function fieldtype_transform(name, type)
    startswith(type, "PFN_") && return "Function"
    occursin("version", lowercase(name)) && type == "UInt32" && return Converted(type, "VersionNumber")
    is_ntuple(type) && inner_type(type) == "UInt8" && return Converted(type, "String")
    @return_value_if_key_exists type_conversions type
    is_vulkan_type(type) && return remove_vk_prefix(type)
    (isnothing(type) || type == "Any") && return "Any"
    convert_nested_type(type)
end

property_exceptions = [
    "VkPhysicalDeviceLimits"
]

function is_enumerated_property(sdef)
    (any(enumeration_command_counts[f][2] == sdef.name for f ∈ keys(enumeration_command_counts)) && !is_handle(sdef.name)) || occursin("Properties", sdef.name) || sdef.name ∈ property_exceptions
end

discard_field(name, type, sdef) = name ∈ dropped_fields || !isnothing(cardinality(name, sdef.name))

name_transform(str, ::Type{SDefinition}) = str[3:end]