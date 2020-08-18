function arg_transform(decl, arg)
    PositionalArgument(nc_convert(SnakeCaseLower, arg.name), arg.type)
end

function kwarg_transform(decl, arg)
    KeywordArgument(nc_convert(SnakeCaseLower, kwarg.name), kwarg.default)
end

function name_transform(decl::FDefinition)
    nc_convert(SnakeCaseLower, decl.name)
end