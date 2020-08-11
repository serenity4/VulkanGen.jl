struct ParsedFile
    source
    structs::OrderedDict
    funcs::OrderedDict
    consts::OrderedDict
    enums::OrderedDict
    eval
end

ParsedFile(source, structs, funcs, consts, enums) = ParsedFile(source, structs, funcs, consts, enums, nothing)

Base.show(io::IO, pf::ParsedFile) = print(io, "ParsedFile with $(length(pf.structs)) structs, $(length(pf.funcs)) functions and $(length(pf.consts) + length(pf.enums)) globals from $(pf.source)")

OrderedDict(defs::AbstractArray{T}) where {T <: Declaration} = OrderedDict{Symbol,T}(map(x -> x.name => x, defs))

function definition_begins(line, ::Type{FDefinition})
    !isnothing(match(r"\w+\(.*\)\s+=(?!=)", line)) || !isnothing(match(r"^function ", line))
end
definition_ends(line, ::Type{FDefinition}) = strip(line) == "end" || (definition_begins(line, FDefinition) && isnothing(match(r"function \w+", line)))

definition_begins(line, ::Type{SDefinition}) = split(line, " ")[1] ∈ ["mutable", "struct"]
definition_ends(line, ::Type{SDefinition}) = (definition_begins(line, SDefinition) && split(line, " ")[end] == "end") || strip(line) == "end"

definition_begins(line, ::Type{CDefinition}) = startswith(line, "const ")
definition_ends(line, ::Type{CDefinition}) = !endswith(strip(line), ",")


definition_begins(line, ::Type{EDefinition}) = strip(first(split(line, " "))) ∈ ["@enum", "@cenum"]
definition_ends(line, ::Type{EDefinition}) = (definition_begins(line, EDefinition) && strip(split(line, " ")[end]) != "begin") || "end" ∈ strip.(split(line, " "))

function detect_definition(io, T)
    lines = String[]
    line = readline(io)
    if eof(io)
        definition_begins(line, T) && definition_ends(line, T) && return [line]
        return
    end
    while !definition_begins(line, T)
        line = readline(io)
        eof(io) && definition_begins(line, T) && definition_ends(line, T) && return [line]
        eof(io) && return
    end
    push!(lines, line)
    while !definition_ends(line, T)
        line = readline(io)
        eof(io) && !definition_ends(line, T) && error("EOF while scanning for end of definition for type $T")
        push!(lines, line)
    end
    lines
end

function parse_for_definition(file, ::Type{T}) where {T <: Declaration}
    defs = T[]
    open(file) do io
        while !eof(io)
            lines = detect_definition(io, T)
            isnothing(lines) ? nothing : push!(defs, T(join(lines, "\n")))
        end
    end
    defs
end

function ParsedFile(file)
    defs = []
    for decl ∈ [SDefinition, FDefinition, CDefinition, EDefinition]
        push!(defs, parse_for_definition(file, decl))
    end
    ParsedFile(file, OrderedDict.(defs)...)
end
