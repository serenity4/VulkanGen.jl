using VulkanGen
using JuliaFormatter:format_text
using Test

include("naming_conventions.jl")
include("parsing.jl")
include("signatures.jl")
include("definitions.jl")
include(joinpath(@__DIR__, "..", "src", "ref_util.jl"))
include(joinpath(@__DIR__, "..", "src", "vk_util.jl"))
include("pointers/wrapping.jl")