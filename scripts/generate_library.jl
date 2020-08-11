using VulkanGen

api = ParsedFile(dirname(pathof(VulkanCore)) * "/../gen/vk_common.jl")
api.eval(sym) = @eval(vk, $(Meta.parse("$sym")))

function wrap_vulkan_api(api)
    
    # parameters to keep in a constructor rather than in a struct
    parameters = [
        :pNext,
        :flags,
        :pAllocator
    ]

    # arguments with a unique possible value
    # they are dropped as argument and replaced wherever necessary by this unique possible value
    spliced_args = [
        :sType,
    ]

    # type => new_type
    type_conversions = Dict(
        :Cstring => :Cstring,
        :Float32 => :Float32,
        :Float64 => :Float64,
        :Int32 => :Int32,
        :Int64 => :Int64,
        :Nothing => :Nothing,
        sym"Ptr{Nothing}" => sym"Ptr{Nothing}",
        :UInt16 => :UInt16,
        :UInt32 => :UInt32,
        :UInt64 => :UInt64,
        :UInt8 => :UInt8,
        :Cdouble => :Float64,
        :Cfloat => :Float32,
        :Cint => :Int32,
        :Csize_t => :UInt,
        :Cssize_t => :Int,
        :Cstring => :String,
        :Cuint => :UInt32,
        :VkBool32 => :Bool,
    )

    convention_exceptions = Dict(
        :textureCompressionASTC_LDR => :texture_compression_astc_ldr,
    )

    function hasfinalizer(vk_type)
        hasproperty(vk, Symbol("vkDestroy$vk_type"))
    end

    dropped_fields = [parameters..., spliced_args...]

    function process_name(name)
        name ∈ keys(convention_exceptions) && return convention_exceptions[name]
        name_str = "$name"
        if startswith(name_str, "pfn")
            cc = CamelCaseUpper(name_str[4:end])
        elseif !isnothing(match(r"^p+[A-Z]", x))
            cc = CamelCaseUpper(lstrip(name_str, 'p'))
        else
            cc = detect_convention(name_str)(name_str)
        end
        Symbol(convert(julia_convention[:variable], cc).value)
    end

    function convert_ctype_to_julia(type)
        
        new_type
    end

    function process_type(type)
        new_type = convert_ctype_to_julia(type)
        Symbol(replace("$new_type", "Vk" => ""))
    end

    function process_field(name, type)
        process_name(name) => process_type(type)
    end

    process_field(name) = process_name(name)

    struct_wrapper = StructWrapper(keep_field_f=x -> x ∉ dropped_fields, is_mutable_f=hasfinalizer)
    func_wrapper = FuncWrapper(keep_arg=x -> isnothing(match(r"^p+[A-Z]", x)))
    const_wrapper = ConstWrapper()

    wrap_api(api; is_mutable=hasfinalizer, lib_prefix="VulkanCore.LibVulkan", spliced_args, type_conversions, parameters, const_wrapper, func_wrapper, struct_wrapper)
end

w_api = wrap_vulkan_api(api)
write(w_api, joinpath(dirname(@__DIR__), "generated"))