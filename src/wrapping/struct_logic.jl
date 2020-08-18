const convention_exceptions = Dict(
    "textureCompressionASTC_LDR" => "texture_compression_astc_ldr",
    "textureCompressionASTC_HDR" => "texture_compression_astc_hdr",
    "formatA4R4G4B4" => "format_a4r4g4b4",
    "formatA4B4G4R4" => "format_a4b4g4r4",
)

const lib_prefix = "VulkanCore.LibVulkan"
# parameters to keep in a constructor rather than in a struct
const parameters = Dict(
    "pNext" => KeywordArgument("pNext", "C_NULL"),
    "flags" => KeywordArgument("flags", "0"),
    "pAllocator" => KeywordArgument("pAllocator", "C_NULL"),
)
const dropped_fields = collect(Iterators.flatten((keys(parameters), keys(spliced_args))))

instance_name(sdef) = convert(SnakeCaseLower, sdef.name)
remove_lib_prefix(str) = replace(str, lib_prefix * "." => "")

function type_dependencies(type; include_type=false)
    if isnothing(match(r"{(.*)}", type))
        return include_type ? type : []
    else
        deps = eachmatch(r"{(.*)}", type) |> Map(x -> getproperty(x, :captures)[1]) |> Map(x -> remove_lib_prefix(x)) |> Map(strip ∘ String) |> collect
        deps = include_type ? deps : filter(x -> x != type, deps)
        subdeps = type_dependencies.(deps, include_type=false)
        final_deps = collect(Iterators.flatten(subdeps))
        final_deps_noshape = filter(x -> isnothing(match(r"^\d+$", x)), final_deps) # remove numbers which include shape information
    end
end


function field_transform(name)
    name ∈ keys(convention_exceptions) && return convention_exceptions[name]
    if !isnothing(match(r"^p+[A-Z]", name))
        cc = CamelCaseUpper(lstrip(name, 'p'))
    else
        cc = detect_convention(name)(name)
    end
    convert(VulkanGen.julia_convention[:variable], cc).value
end

function rename_type(type)
    replace(type, "Vk" => "")
end

function field_transform(name, type)
    startswith(name, "pfn") && return convert(SnakeCaseLower, CamelCaseUpper(name[4:end])).value => "Function"
    field_transform(name) => rename_type(type)
end

discard_field(name, type, sdef) = name ∈ dropped_fields || !isnothing(cardinality(name, sdef.name))

name_transform(decl::SDefinition) = decl.name[3:end]
