using EzXML
using DataStructures

xdoc = readxml(joinpath(@__DIR__, "vk.xml"))
xroot = xdoc.root

include("utils.jl")