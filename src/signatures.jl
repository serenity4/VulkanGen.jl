struct Signature
    method::Method
    names
    types
end

function Signature(m::Method)
    tv, decls, file, line = Base.arg_decl_parts(m)
    sig = Signature(m, map(first, decls[2:end]), map(x -> getindex(x, 2), decls[2:end]))
end

"""Get argument names from the first method of function f
"""
function Signature(f::Function)
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

Base.show(io::IO, sig::Signature) = print(io, sig.method.name, " ⟶ ", join(map((x, y) -> y != "" ? join([x, y], "::") : x, sig.names, sig.types), ", "))
