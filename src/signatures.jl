abstract type Argument end

struct PositionalArgument <: Argument
    symbol::Symbol
    type
end

struct KeywordArgument <: Argument
    symbol::Symbol
    default
end

KeywordArgument(symbol::Symbol) = KeywordArgument(symbol, nothing)
PositionalArgument(symbol::Symbol) = PositionalArgument(symbol, nothing)

PositionalArgument(str::AbstractString) = PositionalArgument(Symbol.(split(strip(str), "::"))...)

function KeywordArgument(str::AbstractString)
    split_str = split(replace(strip(str), "::" => ""), "=")
    length(split_str) == 1 ? KeywordArgument(Symbol(first(split_str))) : KeywordArgument(Symbol(first(split_str)), last(split_str))
end

struct Signature
    symbol::Symbol
    args::AbstractArray{PositionalArgument}
    kwargs::AbstractArray{KeywordArgument}
end

argnames(sig::Signature) = [getproperty.(sig.args, :symbol)..., getproperty.(sig.kwargs, :symbol)...]
argtypes(sig::Signature) = [getproperty.(sig.args, :type)..., getproperty.(sig.kwargs, :type)...]

function Signature(m::Method)
    args_and_types = Base.arg_decl_parts(m)[2][2:end]
    arg_symbols = Symbol.(getindex.(args_and_types, 1))
    arg_types = map(x -> isempty(x) ? nothing : x, getindex.(args_and_types, 2))
    args = PositionalArgument.(arg_symbols, arg_types)
    kwargs = KeywordArgument.(Base.kwarg_decl(m))
    sig = Signature(sym"$(m.name)", args, kwargs)
end

"""Get argument names from the first method of function f
"""
function Signature(f)
    ms = methods(f)
    length(ms) > 1 && @warn "Function $f has $(length(ms)) methods"
    Signature(first(ms))
end


"""Get argument names from a Vulkan function referenced by f_symbol
"""
function Signature(f_symbol::Symbol)
    cfun = getproperty(vk, f_symbol)
    Signature(cfun)
end

typed_field(symbol, type) = isnothing(type) ? String(symbol) : join([symbol, type], "::")

Base.join(args::Argument...) = join(map(typed_field, getproperty.(args, :symbol), getproperty.(args, :type)), ", ")
Base.join(args::KeywordArgument...) = join(map((x, y) -> join([x, y], "="), getproperty.(args, :symbol), getproperty.(args, :default)), ", ")
Base.show(io::IO, sig::Signature) = print(io, sig.symbol, "(", join(sig.args...), "; ", join(sig.kwargs...), ")")

generate(sig::Signature) = join([sig.symbol, "(", join(sig.args...), isempty(sig.kwargs) ? "" : "; " * join(sig.kwargs...), ")"])