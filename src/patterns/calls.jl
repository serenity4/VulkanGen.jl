abstract type CallPattern <: Pattern end
    
struct Create <: CallPattern
    m::Method
end
struct CreateInfo <: CallPattern
    m::Method
end
struct Command <: CallPattern
    m::Method
end

function pattern(name)
    occursin("CreateInfo", name) && return CreateInfo()
    occursin("vkCreate", name) && return Create()
    startswith(name, "vkCmd") && return Command()
    
    nothing
end

abstract type ConstructorPattern <: Pattern end

struct Info <: ConstructorPattern end
struct Instantiate <: ConstructorPattern end