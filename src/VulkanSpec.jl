module VulkanSpec

using EzXML
using DataStructures

xdoc = readxml(joinpath(@__DIR__, "spec", "vk.xml"))
xroot = xdoc.root

for file ∈ [
    "aliases",
    "structure_types",
    "handles",
    "pointers"
    ]
    include(joinpath("spec", file * ".jl"))
end

export aliases,
    handles,
    stypes,
    cardinality_groups,
    cardinality

end # module