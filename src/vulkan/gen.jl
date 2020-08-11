vk_structure_constant(base) = getproperty(vk, Symbol("VK_STRUCTURE_TYPE_" * convert(SnakeCaseUpper, CamelCaseUpper(base)).value))

function statements(ci::CreateInfo)
    base = basename(ci.createinfo_fun)
    stype_arg = vk_structure_constant(base)
    args = argnames(ci.createinfo_fun.signature)[2:end] # remove stype_arg name
    [Statement("create_info = VkCreateInfo$base($stype_arg, $(join_args(args)))", :create_info, args)]
end

function statements(create::Create)
    type = create.vk_type.symbol
    s1 = Statement("ptr = Ref{$type}()", :ptr, [])
    s2 = Statement("@check $(create.f.symbol)(Ref(create_info), allocator, ptr)", nothing, [:create_info, :allocator, :ptr])
    [s1, s2]
end

function statements(f::Finalizer)
    args = argnames(f.f.signature)
    finalized_var = Symbol(convert(CamelCaseLower, CamelCaseUpper(basename(f.vk_type))).value)
    @assert finalized_var ∈ args "Finalized variable $finalized_var not in method arguments"
    finalizer_args = args |> Map(x -> x == finalized_var ? :x : x) |> collect
    [Statement("Base.finalizer(x -> $(f.f.symbol)($(join_args(args))), $finalized_var)", nothing, filter(x -> x != finalized_var, finalizer_args))]
end