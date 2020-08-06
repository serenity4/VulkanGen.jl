abstract type Argument end

struct PositionalArgument <: Argument
    symbol::Symbol
    type
end

struct KeywordArgument <: Argument
    symbol::Symbol
    default
end

KeywordArgument(symbol) = KeywordArgument(symbol, nothing)

struct Signature
    method::Method
    args::AbstractArray{PositionalArgument}
    kwargs::AbstractArray{KeywordArgument}
end

argnames(sig::Signature) = [getproperty.(sig.args, :symbol)..., getproperty.(sig.kwargs, :symbol)...]

function Signature(m::Method)
    args_and_types = Base.arg_decl_parts(m)[2][2:end]
    arg_symbols = Symbol.(getindex.(args_and_types, 1))
    arg_types = map(x -> isempty(x) ? nothing : x, getindex.(args_and_types, 2))
    args = PositionalArgument.(arg_symbols, arg_types)
    kwargs = KeywordArgument.(Base.kwarg_decl(m))
    sig = Signature(m, args, kwargs)
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

Base.join(args::Argument...) = join(map((x, y) -> isnothing(y) ? x : join([x, y], "::"), getproperty.(args, :symbol), getproperty.(args, :type)), ", ")
Base.join(args::KeywordArgument...) = join(map((x, y) -> join([x, y], "="), getproperty.(args, :symbol), getproperty.(args, :default)), ", ")
Base.show(io::IO, sig::Signature) = print(io, sig.method.name, "(", join(sig.args...), "; ", join(sig.kwargs...), ")")

generate(f::Signature) = Base.show(f)