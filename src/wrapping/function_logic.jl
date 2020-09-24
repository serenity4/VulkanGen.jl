function wrap!(w_api, fdef::FDefinition)
    if is_enumeration_command(fdef.name)
        new_fdef = wrap_enumeration_command(typed_fdef(fdef))
    elseif startswith(fdef.name, "vkDestroy")
        return
    elseif !is_creation_command(fdef)
        # name = name_transform(fdef)
        # body = statements(patterns(fdef))
        # new_fdef = FDefinition(name, Signature(name, args, kwargs), fdef.short, body)
        new_fdef = wrap_generic(typed_fdef(fdef))
    else
        return
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
    # body, pass_results = accumulate_passes(fname, sig.args, pass_new_nametype(FDefinition), [ComputeLengthArgument(), InitializePointers()])
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
            push!(command_args, new_name)
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
    convert_statement = Statement(enumerated_type == "void" ? "arr" : "$enumerated_type_new.(arr)")
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

checked_function_call(fdef) = (fdef.return_type == "VkResult" ? "@check " : "") * fdef.name

function wrap_generic(fdef)
    sig = fdef.signature
    args, kwargs = arguments(sig, transform_name=true), keyword_arguments(sig, transform_name=false)
    new_fname = name_transform(fdef.name, FDefinition)
    new_sig = Signature(new_fname, args, kwargs)
    # body = [Statement("$(sig.name)($(join_args(argnames(new_sig))))")]
    # kept_args = arguments(sig, transform_name=false, drop_type=false)
    # fname = name_transform(fdef.name, FDefinition)
    body, pass_results = accumulate_passes(fdef.name, fdef.signature.args, pass_new_nametype(FDefinition), [ComputeLengthArgument()])
    # new_sig = Signature(fname, remove_type.(args), kwargs)
    last_args_used = getproperty.(getproperty.(last.(values(pass_results)), :pass_args), :last_name)
    # for (i, arg) ∈ enumerate(sig.args)
    #     tmp_argname(arg.name, arg.type) ∉ last_args_used && arg.name ∉ last_args_used && insert!(last_args_used, i, arg.name)
    # end
    _m = fdef.return_type == "VkResult" ? "@check " : ""
    push!(body, Statement("$(checked_function_call(fdef))($(join_args(last_args_used)))"))
    FDefinition(new_fname, new_sig, false, body, "Generic definition")
end

function type_dependencies(fdef::FDefinition)
    types = filter(!isnothing, argtypes(fdef.signature))
    isempty(types) ? String[] : unique(vcat(type_dependencies.(types))...)
end