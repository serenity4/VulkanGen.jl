function wrap!(w_api, api, fdef::FDefinition)
    if is_enumeration_command(fdef)
        new_fdef = wrap_enumeration_command(fdef)
    elseif is_creation_command(fdef)
        new_fdef = wrap_creation_command(fdef)
    else
        args = map(arg_transform, Ref(fdef), fdef.signature.args)
        kwargs = map(kwarg_transform, Ref(fdef), fdef.signature.kwargs)
        name = name_transform(fdef)
        # body = statements(patterns(fdef))
        # new_fdef = FDefinition(name, Signature(name, args, kwargs), fdef.short, body)
        new_fdef = FDefinition(name, Signature(name, fdef.signature.args, fdef.signature.kwargs), fdef.short, fdef.body)
    end
    w_api.funcs[new_fdef.name] = new_fdef
end


function arg_transform(decl, arg)
    PositionalArgument(nc_convert(SnakeCaseLower, arg.name), arg.type)
end

function kwarg_transform(decl, arg)
    KeywordArgument(nc_convert(SnakeCaseLower, kwarg.name), kwarg.default)
end

function name_transform(str, ::Type{FDefinition})
    nc_convert(SnakeCaseLower, str[3:end])
end

function is_enumeration_command(fdef)
    haskey(enumeration_command_counts, fdef.name)
end

is_creation_command(fdef) = startswith(fdef.name, "vkCreate")

function wrap_enumeration_command(fdef)
    enumerated_type = last(enumeration_command_counts[fdef.name])
    args = map(arg_transform, Ref(fdef), fdef.signature.args[1:end - 2]) # skip future args count and arr
    kwargs = map(kwarg_transform, Ref(fdef), fdef.signature.kwargs)
    name = name_transform(fdef)
    sig = Signature(name, args, kwargs)
    body = [
        Statement("count = Ref{UInt32}(0)", "count"),
        Statement("@check $(fdef.name)($(join_args([argnames(sig)..., "count", "C_NULL"])))", "count"),
        Statement("arr = Array{$(enumerated_type)}(undef, count[])", "arr"),
        Statement("@check $(fdef.name)($(join_args([argnames(sig)..., "count", "arr"])))"),
        Statement(is_handle(enumerated_type) || enumerated_type == "void" ? "arr" : "Base.convert.(Ref($(name_transform(enumerated_type, SDefinition))), arr)"),
    ]
    FDefinition(name, sig, false, body)
end

function deconstruct_ccall(expr)
    matches = match(r"ccall\(\(:(.*?),.*?\), (\w+), \((.*?)\), (.*?)\)", expr)
    called_fun, ret_type, types_unsplit, names_unsplit = matches.captures
    called_fun, ret_type, split(types_unsplit, ", "), split(names_unsplit, ", ")
end

function skip_wrap(fdef)
    @warn("Skipping creation command $(fdef.name)")
    name = name_transform(fdef)
    FDefinition(name, Signature(name, fdef.signature.args, fdef.signature.kwargs), fdef.short, [Statement(replace(fdef.body[1].body, "PFN" => "vk.PFN"))])
end

function wrap_creation_command(fdef)
    called_fun, ret_type, types, names = deconstruct_ccall(fdef.body[1].body)
    #TODO: handle creation of multiple objects
    "pCreateInfos" ∈ names && return skip_wrap(fdef)
    created_el_type = inner_type(last(types))

    #TODO: handle VkSwapchainKHR circular dependency
    created_el_type == "VkSwapchainKHR" && return skip_wrap(fdef)
    created_el_name = last(names)
    created_el_new_type = fieldtype_transform(created_el_name, created_el_type, fdef)
    ref = Statement("$created_el_name = Ref{$created_el_type}()", created_el_name)
    create_info_arg = "create_info"
    ci_ref_wrap = Statement("pCreateInfo = Ref($create_info_arg.vk)", "pCreateInfo")
    create_info_index = findfirst(names .== "pCreateInfo")
    args_before_ci = getindex.(Ref(names), 1:(create_info_index - 1))
    create_args = join_args([(args_before_ci .* ".handle")..., "pCreateInfo", "allocator", created_el_name])
    create_statement = Statement("@check $called_fun($create_args)")
    deref_el = Statement("$created_el_new_type($created_el_name[], $create_info_arg)")
    args = PositionalArgument.(["$create_info_arg::$(name_transform(inner_type(types[create_info_index]), SDefinition))", map(x -> "$x::$(name_transform(inner_type(types[findfirst(names .== x)]), SDefinition))", args_before_ci)...])
    kwargs = [KeywordArgument("allocator", "C_NULL")]
    sig = Signature(name_transform(fdef.name, FDefinition), args, kwargs)
    body = [
        ref,
        ci_ref_wrap,
        create_statement,
        deref_el,
    ]
    FDefinition(sig.name, sig, false, body)

end

function type_dependencies(fdef::FDefinition)
    types = filter(!isnothing, argtypes(fdef.signature))
    isempty(types) ? String[] : unique(vcat(type_dependencies.(types))...)
end