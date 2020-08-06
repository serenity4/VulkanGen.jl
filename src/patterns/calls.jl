abstract type CallPattern <: Pattern end
    
struct Create <: CallPattern
end
struct CreateInfo <: CallPattern
end
struct Command <: CallPattern
end

struct Finalizer <: CallPattern
end

function pattern(name)
    occursin("CreateInfo", name) && return CreateInfo()
    occursin("vkCreate", name) && return Create()
    startswith(name, "vkCmd") && return Command()
    
    nothing
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