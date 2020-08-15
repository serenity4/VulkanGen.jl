using VulkanGen

getfile(name) = dirname(dirname(pathof(VulkanCore))) *  "/gen/" * name
files = getfile.(["vk_common.jl", "vk_api.jl"])
api = API(files)
api.eval(sym) = @eval(vk, $(Meta.parse("$sym")))

function wrap_vulkan_api(api)
    
    # parameters to keep in a constructor rather than in a struct
    parameters = Dict(
        :pNext => KeywordArgument(:next, sym"()"),
        :flags => KeywordArgument(:flags, sym"0"),
        :pAllocator => KeywordArgument(:allocator, sym"()"),
    )

    stype_splice(fdef) = vk_structure_constant(fdef.name)

    # arguments whose value is always predetermined by the function signature
    # they are dropped as argument and replaced wherever necessary
    spliced_args = Dict(
        :sType => stype_splice,
    )

    create_fun_to_types_exceptions = Dict(
    "GraphicsPipelines" => "Pipeline"
    )

    types_to_create_info_exceptions = Dict(
    "Queue" => "DeviceQueue"
    )
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

    dropped_fields = collect(Iterators.flatten((keys(parameters), keys(spliced_args))))

    function field_transform(name)
        name ∈ keys(convention_exceptions) && return convention_exceptions[name]
        name_str = "$name"
        if !isnothing(match(r"^p+[A-Z]", name_str))
            cc = CamelCaseUpper(lstrip(name_str, 'p'))
        else
            cc = detect_convention(name_str)(name_str)
        end
        Symbol(convert(VulkanGen.julia_convention[:variable], cc).value)
    end

    function process_type(type)
        Symbol(replace("$type", "Vk" => ""))
    end

    function field_transform(name, type)
        startswith("$name", "pfn") && return Symbol(convert(SnakeCaseLower, CamelCaseUpper("$name"[4:end])).value) => :Function
        field_transform(name) => process_type(type)
    end

    function constructor_body(new_sdef::SDefinition, args, kwargs)
        body = Statement[]
        if :pNext ∈ getproperty.(args, :symbol)
        end

        body
    end

    function arg_transform(decl, arg)
        PositionalArgument(Symbol(convert(SnakeCaseLower, "$(arg.symbol)").value), arg.type)
    end

    function kwarg_transform(decl, arg)
        KeywordArgument(Symbol(convert(SnakeCaseLower, "$(kwarg.symbol)").value), kwarg.default)
    end

    function name_transform(decl)
        Symbol(convert(SnakeCaseLower, decl.name).value)
    end

    struct_wrapper = StructWrapper(; discard_field=(x, y) -> x ∈ dropped_fields, is_mutable_f=hasfinalizer, name_transform=x -> Symbol("$(x.name)"[3:end]), field_transform, constructor_body)
    func_wrapper = FuncWrapper(; arg_transform, kwarg_transform, name_transform)
    const_wrapper = ConstWrapper()

    wrap_api(api; is_mutable=hasfinalizer, lib_prefix="VulkanCore.LibVulkan", spliced_args, type_conversions, parameters, const_wrapper, func_wrapper, struct_wrapper)
end

function print_statements(decl)
    println("Printing statements for \e[34;1;1m$decl\e[m")
    pats = patterns(decl)
    println(generate(statements(first(pats)), check_identifiers=false))
end

w_api = wrap_vulkan_api(api)
write(w_api, joinpath(dirname(@__DIR__), "generated"))

print_statements(api.funcs[:vkDestroyPipeline])
print_statements(api.funcs[:vkCreateDevice])
print_statements(w_api.structs[:InstanceCreateInfo])