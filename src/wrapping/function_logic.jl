function wrap!(w_api, api, fdef::FDefinition)
    if is_enumeration_command(fdef)
        new_fdef = wrap_enumeration_command(fdef)
    else
        args = map(arg_transform, Ref(fdef), fdef.signature.args)
        kwargs = map(kwarg_transform, Ref(fdef), fdef.signature.kwargs)
        name = name_transform(fdef)
            # body = statements(patterns(fdef))
        body = fdef.body
            # new_fdef = FDefinition(name, Signature(name, args, kwargs), fdef.short, body)
        new_fdef = FDefinition(name, Signature(name, fdef.signature.args, fdef.signature.kwargs), fdef.short, [Statement(replace(body[1].body, "PFN" => "vk.PFN"))])
    end
    push!(w_api.funcs, new_fdef)
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

function wrap_enumeration_command(fdef)
    enumerated_type = last(enumeration_command_counts[fdef.name])
    args = map(arg_transform, Ref(fdef), fdef.signature.args[1:end - 2]) # skip future args count and arr
    kwargs = map(kwarg_transform, Ref(fdef), fdef.signature.kwargs)
    name = name_transform(fdef)
    sig = Signature(name, args, kwargs)
    body = [
        Statement("count = Ref{UInt32}(0)", "count", []),
        Statement("@check $(fdef.name)($(join_args([argnames(sig)..., "count", "C_NULL"])))", "count", []),
        Statement("arr = Array{$(enumerated_type)}(undef, count[])", "arr", ["count"]),
        Statement("@check $(fdef.name)($(join_args([argnames(sig)..., "count", "arr"])))", nothing, [argnames(sig)..., "count", "arr"]),
        Statement(is_handle(enumerated_type) ? "arr" : "Base.convert.(Ref($(name_transform(enumerated_type, SDefinition))), arr)", nothing, ["arr"]),
    ]
    FDefinition(name, sig, false, body)
end