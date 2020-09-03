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
    enumeration_command_counts,
    is_handle,
    handle_creation_info,
    isalias,
    hasalias,
    optional_parameters_dict,
    alias,
    follow_alias,
    aliases_dict,
    aliases_dict_rev,
    cardinality_group_index,
    cardinality_group,
    is_array_variable,
    is_count_variable,
    count_variable,
    array_variable,
    associated_array_variable,
    is_optional_parameter,
    optional_parameter_default_value

end # module