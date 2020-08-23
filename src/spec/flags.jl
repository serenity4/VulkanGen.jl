struct VkFlagType
    name
    bitmask
end

bitmask_nodes = findall("//type[@category='bitmask']", xroot)
bitmasks = member_attr.(bitmask_nodes, "name")
is_bitmask(type) = type ∈ bitmasks

# println.(bitmask_nodes);

# flags_correspondence = OrderedDict()

# for node ∈ bitmask_nodes
#     if !haskey(node, "alias")
#         bitmask = haskey(node, "requires") ? node["requires"] : nothing
#         name = node.firstnode.nextnode.nextnode.nextnode.content
#         flags_correspondence[name] = VkFlagType(name, bitmask)
#     end
# end