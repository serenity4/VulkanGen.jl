using EzXML
using DataStructures
using LightGraphs

xdoc = readxml(joinpath(@__DIR__, "vk.xml"))
xroot = xdoc.root

include("utils.jl")

