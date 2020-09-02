module VulkanSpec

using EzXML
using DataStructures
using LightGraphs

xdoc = readxml(joinpath(@__DIR__, "spec", "vk.xml"))
xroot = xdoc.root

include("spec/utils.jl")
include("spec/aliases.jl")
include("spec/structure_types.jl")
include("spec/handles.jl")
include("spec/flags.jl")
include("spec/parameters.jl")
include("spec/commands.jl")

export aliases,
    handles,
    stypes,
    cardinality_groups,
    cardinality,
    enumeration_command_counts,
    is_handle,
    handle_creation_info,
    isalias,
    hasalias,
    optional_parameters_dict,
    alias,
    follow_alias,
    aliases_dict,
    aliases_dict_rev

end # module