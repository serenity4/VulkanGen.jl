function wrap!(w_api, fdef::FDefinition)
    if is_enumeration_command(fdef.name)
        new_fdef = wrap_enumeration_command(typed_fdef(fdef))
    elseif is_creation_command(fdef)
        new_fdef = wrap_creation_command(typed_fdef(fdef))
    elseif startswith(fdef.name, "vkDestroy")
        return
    else
        name = name_transform(fdef)
        # body = statements(patterns(fdef))
        # new_fdef = FDefinition(name, Signature(name, args, kwargs), fdef.short, body)
        new_fdef = wrap_generic(typed_fdef(fdef))
    end
    w_api.funcs[new_fdef.name] = new_fdef
end

function typed_fdef(fdef::FDefinition)
    @assert startswith(fdef.body[1].body, "ccall")
    called_fun, ret_type, types, names = deconstruct_ccall(fdef.body[1].body)
    FDefinition(called_fun, Signature(called_fun, PositionalArgument.(names, types), KeywordArgument[]), fdef.short, fdef.body, "", ret_type)
end

function arg_transform(arg::PositionalArgument)
    PositionalArgument(argname_transform(arg), argtype_transform(arg))
end


argname_transform(arg::PositionalArgument) = fieldname_transform(arg.name, arg.type)
argtype_transform(arg::PositionalArgument) = fieldtype_transform(arg.name, arg.type)


function name_transform(str, ::Type{FDefinition})
    nc_convert(SnakeCaseLower, str[3:end])
end

is_creation_command(fdef) = startswith(fdef.name, "vkCreate")

pass_new_nametype(::Type{FDefinition}) = (x, y, z) -> (arg = arg_transform(PositionalArgument(x, y)) ; (arg.name, arg.type))

function wrap_enumeration_command(fdef)
    sig = fdef.signature
    fname = fdef.name
    enumerated_type = last(enumeration_command_counts[fname].second)
    args = arguments(sig)
    kwargs = keyword_arguments(sig)
    new_fname = name_transform(fdef)
    new_sig = Signature(new_fname, args, kwargs)
    body = Statement[]
    command_args = []
    for arg ∈ sig.args
        name, type = arg.name, arg.type
        new_name = fieldname_transform(name, type)
        if is_count_variable(name, fname)
            push!(command_args, "count")
        elseif is_array_variable(name, fname)
            push!(command_args, "arr")
        elseif is_handle(type)
            push!(command_args, new_name * ".handle")
        elseif is_ptr(type)
            transform = "pointer($new_name)"
            push!(command_args, is_parameter(name, fname) ? "isnothing($new_name) ? $(optional_parameter_default_value(name, fname)) : $transform" : transform)
        elseif is_parameter(name, fname)
            push!(command_args, new_name)
        end
    end
    body = [
        body...,
        Statement("count = Ref{UInt32}(0)", "count"),
        Statement("@check $(fdef.name)($(join_args([command_args[1:end - 1]..., "C_NULL"])))"),
        Statement("arr = Array{$(enumerated_type)}(undef, count[])", "arr"),
        Statement("@check $(fdef.name)($(join_args(command_args)))"),
    ]
    enumerated_type_new = name_transform(enumerated_type, SDefinition)
    convert_statement = Statement(is_handle(enumerated_type) ? 
    "$enumerated_type_new.(arr$(enumerated_type ∈ keys(optional_create_info_types) ? ", nothing" : ""))" : 
    enumerated_type == "void" ? "arr" : "vk_convert.(Ref($(enumerated_type_new)), arr)")
    push!(body, convert_statement)
    FDefinition(new_fname, new_sig, false, body)
end

deconstruct_ccall(fdef::FDefinition) = deconstruct_ccall(fdef.body[1].body)
function deconstruct_ccall(expr)
    matches = match(r"ccall\(\(:(.*?),.*?\), (\w+), \((.*?)\), (.*?)\)", expr)
    called_fun, ret_type, types_unsplit, names_unsplit = matches.captures
    called_fun, ret_type, split(types_unsplit, ", "), split(names_unsplit, ", ")
end

function skip_wrap(fdef; warn=true)
    warn ? @warn("Skipping creation command $(fdef.name)") : nothing
    name = name_transform(fdef)
    FDefinition(name, Signature(name, fdef.signature.args, fdef.signature.kwargs), fdef.short, fdef.body)
end

# function wrap_creation_command(fdef)
#     fdef.name == "vkCreateDeferredOperationKHR" && return skip_wrap(fdef)
#     names = argnames(fdef.signature)
#     types = argtypes(fdef.signature)
#     new_names = fieldname_transform.(names, types)
#     # TODO: handle creation of multiple objects (with a pCreateInfos field)
#     "pCreateInfos" ∈ names && return skip_wrap(fdef)
#     created_el_type = inner_type(last(types))

#     created_el_name = last(names)
#     created_el_new_type = fieldtype_transform(created_el_name, created_el_type, fdef.name)
#     created_el_new_name = fieldname_transform(created_el_name, created_el_type)
#     ref = Statement("$created_el_name = Ref{$created_el_type}()", created_el_name)
#     create_info_arg = "create_info"
#     ci_ref_wrap = Statement("pCreateInfo = Ref($create_info_arg.vk)", "pCreateInfo")
#     create_info_index = findfirst(names .== "pCreateInfo")
#     args_before_ci = getindex.(Ref(names), 1:(create_info_index - 1))
#     args_before_ci_new = getindex.(Ref(new_names), 1:(create_info_index - 1))        
#     create_args = join_args([(args_before_ci_new .* ".handle")..., "pCreateInfo", "pAllocator", created_el_name])
#     create_statement = Statement("@check $(fdef.name)($create_args)")
#     deref_el = Statement("$created_el_new_name = $created_el_new_type($created_el_name[], $create_info_arg)")
    # args = PositionalArgument.(["$create_info_arg::$(name_transform(inner_type(types[create_info_index]), SDefinition))", map((x, y) -> "$x::$(name_transform(inner_type(types[findfirst(names .== y)]), SDefinition))", args_before_ci_new, args_before_ci)...])
#     kwargs = [KeywordArgument("allocator", "nothing")]
    
#     sig = Signature(name_transform(fdef.name, FDefinition), args, kwargs)
#     body = [
#         ref,
#         ci_ref_wrap,
#         Statement("pAllocator = isnothing(allocator) ? C_NULL : allocator.vk"),
#         create_statement,
#         deref_el,
#         Statement(created_el_new_name)
#         ]
#     if is_handle_destructible(created_el_type)
#         destroy_fun_call = string(handle_destruction_info[created_el_type][1]) * "(" * replace(join_args(map((x, y) -> x == "pAllocator" ? "pAllocator" : fieldname_transform(x, y) * ".handle", handle_destruction_info[created_el_type][2], handle_destruction_info[created_el_type][3])), created_el_new_name => "x") * ")"
#         insert!(body, 6, Statement("Base.finalizer(x -> $destroy_fun_call, $created_el_new_name)"))
#     end
#     if length(args_before_ci_new) > 0 && args_before_ci_new[1] ∈ ["device", "instance"]
#         insert!(body, 7, Statement("preserve(Ref($created_el_new_name), $(args_before_ci[1]))"))
#     end

#     FDefinition(sig.name, sig, false, body)

# end

function wrap_creation_command(fdef)
    names = argnames(fdef.signature)
    
    fdef.name == "vkCreateDeferredOperationKHR" && return skip_wrap(fdef)
    # TODO: handle creation of multiple objects (with a pCreateInfos field)
    "pCreateInfos" ∈ names && return skip_wrap(fdef)
    
    types = argtypes(fdef.signature)
    new_names = fieldname_transform.(names, types)
    created_el_type = inner_type(last(types))

    created_el_name = last(names)
    created_el_new_type = fieldtype_transform(created_el_name, created_el_type, fdef.name)
    created_el_new_name = fieldname_transform(created_el_name, created_el_type)
    ref = Statement("$created_el_name = Ref{$created_el_type}()", created_el_name)
    create_info_index = findfirst(names .== "pCreateInfo")
    args_before_ci = getindex.(Ref(names), 1:(create_info_index - 1))
    args_before_ci_new = getindex.(Ref(new_names), 1:(create_info_index - 1))
    # create_args = join_args([(args_before_ci_new .* ".handle")..., "vk_convert(Ptr{$(handle_creation_info[created_el_type][2])}, create_info)", "vk_convert(Ptr{VkAllocationCallbacks}, allocator)", created_el_name])
    # create_args = join_args([(args_before_ci_new .* ".handle")..., "create_info", "allocator", created_el_name])
    create_args = [args_before_ci_new..., "create_info", "allocator", created_el_name]
    create_statement = Statement("@check $(reconstruct_ccall_twin(fdef.name, fdef.return_type, types, create_args))")
    deref_el = Statement("$created_el_new_name = $created_el_new_type($created_el_name[])")
    args = PositionalArgument.(["create_info::" * name_transform(inner_type(types[create_info_index]), SDefinition), map((x, y) -> "$x::$(name_transform(inner_type(types[findfirst(names .== y)]), SDefinition))", args_before_ci_new, args_before_ci)...])
    kwargs = [KeywordArgument("allocator", "nothing")]
    
    sig = Signature(name_transform(fdef.name, FDefinition), args, kwargs)
    body = [
        ref,
        create_statement,
        deref_el,
        ]
    if is_handle_destructible(created_el_type)
        destruct_fun, destruct_names, destruct_types = handle_destruction_info[created_el_type]
        ccall_str = reconstruct_ccall_twin(api.funcs[destruct_fun], map((x, y) -> x == created_el_new_name ? "x" : fieldname_transform(x, y), destruct_names, destruct_types))
        # destruct_fun_call = string(destruct_fun) * "(" * replace(join_args(map((x, y) -> "vk_convert($y, $(fieldname_transform(x, y)))", destruct_names, destruct_types)), created_el_new_name => "x") * ")"
        push!(body, Statement("Base.finalizer(x -> $ccall_str, $created_el_new_name)"))
    end
    # if length(args_before_ci_new) > 0 && args_before_ci_new[1] ∈ ["device", "instance"]
    #     push!(body, Statement("preserve(Ref($created_el_new_name), $(args_before_ci[1]))"))
    # end
    FDefinition(sig.name, sig, false, body)

end

function wrap_generic(fdef)
    sig = fdef.signature
    args, kwargs = arguments(sig), keyword_arguments(sig)
    kept_args = arguments(sig, transform_name=false, drop_type=false)
    fname = name_transform(fdef.name, FDefinition)
    body, pass_results = accumulate_passes(fdef.name, args, pass_new_nametype(FDefinition), [ComputeLengthArgument()])
    new_sig = Signature(fname, remove_type.(args), kwargs)
    last_args_used = getproperty.(getproperty.(last.(values(pass_results)), :pass_args), :last_name)
    for (i, arg) ∈ enumerate(sig.args)
        tmp_argname(arg.name, arg.type) ∉ last_args_used && arg.name ∉ last_args_used && insert!(last_args_used, i, arg.name)
    end
    _m = fdef.return_type == "VkResult" ? "@check " : ""
    body = [Statement(_m * reconstruct_ccall_twin(fdef, map(fieldname_transform, last_args_used, argtypes(sig))))]
    # push!(body, Statement("$(_m)$(fdef.name)($(join_args(last_args_used .* inline_getproperty.(types(kept_args))"))
    # FDefinition(fname, new_sig, false, body, """
    # Generic definition
    # Inline getproperty: $(join_args(inline_getproperty_annotation.(names(kept_args), types(kept_args), fdef.name)))
    # """)
    FDefinition(fname, new_sig, false, body, "Generic definition")
end

function type_dependencies(fdef::FDefinition)
    types = filter(!isnothing, argtypes(fdef.signature))
    isempty(types) ? String[] : unique(vcat(type_dependencies.(types))...)
end