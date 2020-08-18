"""Code generator which aims at automating idenfitied patterns.
"""

abstract type Declaration end

generate(cgs::Declaration) = error("No generator available for type $(typeof(cgs))")

struct Statement
    body::AbstractString
    assigned_id
    evaluated_ids
end


struct SDefinition <: Declaration
    name::AbstractString
    is_mutable::Bool
    fields::OrderedDict
end


struct FDefinition <: Declaration
    name::AbstractString
    signature::Signature
    short::Bool
    body::AbstractArray{Statement}
end

struct CDefinition <: Declaration
    name::AbstractString
    value
end

@with_kw struct EDefinition <: Declaration
    name::AbstractString
    fields
    with_begin_block::Bool = length(fields) > 8
    type = nothing
    enum_macro::AbstractString = "@enum"
end

OrderedDict(defs::AbstractArray{T}) where {T <: Declaration} = OrderedDict{AbstractString,T}(map(x -> x.name => x, defs))

generate(cdef::CDefinition) = format_text("const $(cdef.name) = $(cdef.value)")
function generate(edef::EDefinition)
    bg = edef.with_begin_block
    format_text("@enum $(edef.name) $(bg ? "begin\n" : "") $(join(edef.fields, bg ? "\n" : " ")) $(bg ? "\nend" : "")")
end

Statement(body::AbstractString) = Statement(strip(body), nothing, [])
SDefinition(name::AbstractString, is_mutable::Bool; fields=()) = SDefinition(name, is_mutable, OrderedDict(fields))
Signature(sdef::SDefinition) = Signature(sdef.name, PositionalArgument.(keys(sdef.fields)), KeywordArgument[])

function extract_args(str)
    split_str = split(str, ";") # get kwargs first
    @assert length(split_str) <= 2 "More than one kwargs separator ';' in arguments ($str)"
    args, kwargs = first(split_str), length(split_str) == 1 ? nothing : split_str[2]
    splitstrip(args), splitstrip(kwargs)
end

function FDefinition(str::AbstractString)
    short = !startswith(str, "function")
    if short
        id, args, body = match(r"(\w+)\((.*)\)\s+=(?!=)(.*)$", str).captures
        body = [Statement(body)]
    else
        id, args = match(r"function (\w+)\((.*)\)", str).captures
        body = Statement.(split(str, "\n")[2:end - 1]) # remove function... and end lines
    end
    if occursin(";", args)
        args_str, kwargs_str = split(args, ";")
        kwargs = KeywordArgument.(splitargs(kwargs_str))
    else
        args_str, kwargs_str = args, []
        kwargs = []
    end
    args = PositionalArgument.(splitargs(args_str))
    sig = Signature(id, args, kwargs)
    FDefinition(id, sig, short, body)
end

function CDefinition(str::AbstractString)
    split_str = split(str, " ")
    id = split_str[2]
    value_multiline = splitjoin(str, [1], delim="=")
    value = replace(join(splitstrip(value_multiline; delim="\n"), "\n"), "\n" => " ") # remove any whitespace for each line
    CDefinition(id, value)
end

function EDefinition(str::AbstractString)
    split_str = split(str, " ")
    enum_macro, id = split_str[1:2]
    id, type = decompose_field_decl(id)
    split_str_n = splitstrip(str, delim="\n")
    with_begin_block = last(split(split_str_n[1], " ")) == "begin"
    values = with_begin_block ? strip.(split(join(split_str_n[2:end - 1], "\n"), "\n")) : strip.(splitjoin(str, [1, 2], delim=" "))
    EDefinition(id, values, with_begin_block, type, enum_macro)
end

function SDefinition(str::AbstractString)
    split_str = strip.(split(str, "\n"))
    def = split_str[1]
    def_parts = split(def, " ")
    is_mutable = def_parts[1] == "mutable"
    name = is_mutable ? def_parts[3] : def_parts[2]
    field_decls = OrderedDict(decompose_field_decl(field) for field ∈ split_str[2:end - 1]) # skip struct... and end lines
    SDefinition(name, is_mutable, field_decls)
end

function check(statements::AbstractArray{Statement}, init_ids)
    ids = copy(init_ids)
    for st ∈ statements
        if !isnothing(st.assigned_id)
            st.assigned_id ∉ ids || @warn "Overriding identifier $(st.assigned_id)"
            push!(ids, st.assigned_id)
        end
        for id ∈ st.evaluated_ids
            id ∈ ids || error("Unknown identifier $id in \n$(join(getproperty.(statements, :body), "\n"))")
        end
    end
end

function generate(statements::AbstractArray{Statement}; init_ids=[], check_identifiers=true)
    isempty(statements) && return ""
    if check_identifiers
        check(statements, init_ids)
    end
    format_text(join(getproperty.(statements, :body), "\n"))
end

generate(statements::AbstractArray{Statement}, sig::Signature) = generate(statements; init_ids=argnames(sig))

function generate(s::SDefinition)
    def = (s.is_mutable ? "mutable " : "") * "struct $(s.name)"
    fields = join(typed_field.(keys(s.fields), values(s.fields)), "\n")
    format_text("$def $fields end")
end

function generate(f::FDefinition; check_identifiers=true)
    body = check_identifiers ? generate(f.body, f.signature) : generate(f.body, check_identifiers=false)
    if f.short
        str = generate(f.signature) * " = " * body
    else
        str = "function $(generate(f.signature)) $(body) end"
    end
    format_text(str)
end