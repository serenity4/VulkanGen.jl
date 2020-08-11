# const any_word = raw"\b\w*\b"

combine(regexes::Regex...) = Regex(join(getproperty.(regexes, :pattern)))

subindex(arr::AbstractArray, indices) = [arr[i] for i ∈ indices]

function splitjoin(str, removed_parts; delim=" ")
    split_str = split(str, delim)
    kept_parts = filter(x -> x ∈ removed_parts, 1:length(split_str))
    join(subindex(split_str, kept_parts), delim)
end

splitstrip(str; delim=",", stripped_chars=[' ']) = strip.(split(str, delim), Ref(stripped_chars))

# const macro_call = Regex(raw"@(" * any_word * raw")[\( ]((?:\s*,?\s*(?!function)" * any_word * raw")*)\)")

function extract_args(str)
    split_str = split(str, ";") # get kwargs first
    @assert length(split_str) <= 2 "More than one kwargs separator ';' in arguments ($str)"
    args, kwargs = first(split_str), length(split_str) == 1 ? nothing : split_str[2]
    splitstrip(args), splitstrip(kwargs)
end

function match_function_definition(str, isshort)
    if isshort
        id, args, body = match(r"(\w+)\((.*)\)\s+=(?!=)(.*)$", str).captures
        body = strip(body)
    else
        id, args = match(r"function (\w+)\((.*)\)", str).captures
        body = splitstrip(str, delim="\n")[2:end - 1] # remove function... and end lines

    end
    (id, args, body)
end

function match_function_definition(str)
    match_function_definition(str, !startswith(str, "function"))
end

using Test

f = "f(x::Int; y = 50) = 50"
g = """
function g(x::Int; y = 50)
    println(x, y)
end"""
matched_f = match_function_definition(f, true)
matched_g = match_function_definition(g, false)


@testset "Regular expressions arithmetic" begin
    @test combine(r"\w+(\d+)", r"[a-z]") == r"\w+(\d+)[a-z]"
    @test extract_args("a, b::Int; c = 5, d = 8, p::Nothing = 50") == (["a", "b::Int"], ["c = 5", "d = 8", "p::Nothing = 50"])
    @test matched_f == ("f", "x::Int; y = 50", "50")
    @test matched_g == ("g", "x::Int; y = 50", ["println(x, y)"])
    @test extract_args(matched_f[2]) == (["x::Int"], ["y = 50"])
    @test match_function_definition(f) == matched_f
    @test match_function_definition(g) == matched_g
end