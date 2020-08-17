function arg_transform(decl, arg)
    PositionalArgument(convert(SnakeCaseLower, arg.symbol), arg.type)
end

function kwarg_transform(decl, arg)
    KeywordArgument(convert(SnakeCaseLower, kwarg.symbol), kwarg.default)
end

function name_transform(decl::FDefinition)
    convert(SnakeCaseLower, decl.name)
end