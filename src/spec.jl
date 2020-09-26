using EzXML
using DataStructures
using LightGraphs
using Vulkan_Headers_jll:vk_xml
using DataFrames
using Query

xdoc = readxml(vk_xml)
xroot = xdoc.root

include("spec/utils.jl")
include("spec/dataframes.jl")
include("spec/aliases.jl")
include("spec/structure_types.jl")
include("spec/handles.jl")
include("spec/enums.jl")
include("spec/parameters.jl")
include("spec/commands.jl")
include("spec/graph.jl")