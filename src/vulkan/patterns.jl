"""Abstract type of all possible patterns.
"""

abstract type VkSymbol
end

struct VkType <: VkSymbol
    symbol::Symbol
    is_createinfo::Bool
end

struct VkFunction <: VkSymbol
    symbol::Symbol
    signature::Signature
end

abstract type Pattern end
    
struct Create <: Pattern
    f::VkFunction
    vk_type::VkType
end

struct CreateInfo <: Pattern
    createinfo_fun::VkFunction
end

struct Command <: Pattern
    command::VkFunction
end

struct Finalizer <: Pattern
    f::VkFunction
    vk_type::VkType
end

VkType(sym::Symbol) = VkType(sym, occursin("CreateInfo", String(sym)))
VkFunction(sym::Symbol) = VkFunction(sym, Signature(sym))

basename(vks::VkSymbol) = remove_prefix(detect_convention(String(vks.symbol), instance=true)).value

construct(sym::Symbol, VkSym::Type{T}) where {T <: Pattern} = T((type(sym) for type in fieldtypes(T))...)

function pattern(sym::Symbol)
    name = String(sym)
    occursin("CreateInfo", name) && return construct(sym, CreateInfo)
    occursin("vkCreate", name) && return Create(VkFunction(sym), VkType(Symbol(convert(CamelCaseUpper, remove_parts(CamelCaseLower(String(sym)), [1, 2])).value)))
    startswith(name, "vkCmd") && return construct(sym, Command)
    startswith(name, "vkDestroy") && return Finalizer(VkFunction(sym), VkType(Symbol(vk_prefix(CamelCaseUpper) * convert(CamelCaseUpper, remove_parts(CamelCaseLower(String(sym)), [1, 2])).value)))
    error("No pattern matching symbol $sym")
end



Base.match(pat::CreateInfo, basename::Symbol; max_matches=nothing) = return_match(names(vk) |> Filter(x -> occursin("Vk$(basename)CreateInfo", String(x))) |> collect; max_matches)
Base.match(pat::Finalizer, basename::Symbol; max_matches=nothing) = return_match(names(vk) |> Filter(x -> String(x) == "vkDestroy$basename") |> collect; max_matches)

struct Match{T}
    count
    elements::T
end

Match(elements) = Match(length(elements), elements)

function return_match(m::Match; max_matches)
    if !isnothing(max_matches)
        @assert m.count <= max_matches "Too many matches returned: $(m.count) < $max_matches"
    end
    @assert m.count > 0 "No matches"
    m.elements
end

function return_match(elements; max_matches)
    m = Match(elements)
    return_match(m; max_matches)
end

abstract type ConstructorPattern <: Pattern end

struct Info <: ConstructorPattern end
struct Instantiate <: ConstructorPattern end