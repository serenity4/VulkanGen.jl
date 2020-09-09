function fetch_enums(xroot)
    nodes = findall("//type[@category='enum']", xroot)
    getindex.(nodes, "name")
end

function fetch_bitmasks(xroot)
    bitmask_nodes = findall("//type[@category='bitmask']", xroot)
    member_attr.(bitmask_nodes, "name")
end

bitmasks = fetch_bitmasks(xroot)
is_bitmask(type) = type ∈ bitmasks

enums = fetch_enums(xroot)
is_enum(type) = type ∈ enums


# println.(bitmask_nodes);

# flags_correspondence = OrderedDict()

# for node ∈ bitmask_nodes
#     if !haskey(node, "alias")
#         bitmask = haskey(node, "requires") ? node["requires"] : nothing
#         name = node.firstnode.nextnode.nextnode.nextnode.content
#         flags_correspondence[name] = VkFlagType(name, bitmask)
#     end
# end

fetch_enums(xroot)