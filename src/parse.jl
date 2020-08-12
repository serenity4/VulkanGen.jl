struct API
    source
    structs::OrderedDict
    funcs::OrderedDict
    consts::OrderedDict
    enums::OrderedDict
    eval
end

API(source, structs, funcs, consts, enums) = API(source, structs, funcs, consts, enums, nothing)

extract_fields(apis, sym) = OrderedDict(vcat(collect.(getproperty.(apis, sym))...))
merge(apis::API...) = API(getproperty.(apis, :source), extract_fields.(Ref(apis), [:structs, :funcs, :consts, :enums])..., nothing)

API(files::AbstractArray{<: AbstractString}) = merge(API.(files)...)

Base.show(io::IO, pf::API) = print(io, "API with $(length(pf.structs)) structs, $(length(pf.funcs)) functions, $(length(pf.consts)) consts and $(length(pf.enums)) enums from $(pf.source)")

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

function API(file)
    defs = []
    for decl ∈ [SDefinition, FDefinition, CDefinition, EDefinition]
        push!(defs, parse_for_definition(file, decl))
    end
    API(file, OrderedDict.(defs)...)
end
