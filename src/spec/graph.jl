struct_nodes = findall("//type[@category='struct']", xroot)
ignored_types = [
    "VkBaseInStructure",
    "VkBaseOutStructure",
]

ignored_inds = findall(x -> x ∈ ignored_types, getindex.(struct_nodes, "name"))
is_ignored(node) = node["name"] ∈ ignored_types
vulkan_structs = vcat(getindex.(struct_nodes, "name"), collect(keys(handles)))


function adj_list(struct_nodes, vulkan_structs)
    adjl = Edge{Int}[]
    for (i, node) ∈ enumerate(struct_nodes)
        i ∈ ignored_inds && continue
        types = member_attr.(findall(".//member", node), "type")
        append!(adjl, Edge.(filter(!isnothing, indexin(unique(types), vulkan_structs)), i))
    end

    adjl
end

check_acyclic(g) = !is_cyclic(g) || println("Cycles: $(getindex.(Ref(vulkan_structs), simplecycles_hawick_james(g)))")

adj = adj_list(struct_nodes, vulkan_structs)
# filter(!isempty, adj)

g = SimpleDiGraph(adj)

# add verts to fill the graph with isolated types (avoid bound errors for isolated types)
nv(g) < length(vulkan_structs) && add_vertices!(g, length(vulkan_structs) - nv(g))
check_acyclic(g)

macro check_in_graph(type) :($(esc(type)) ∉ vulkan_structs && error(string($(esc(type))) * " not in graph")) end

macro graph_index(type)
    quote
        @check_in_graph $(esc(type))
        $(esc(type)) = findfirst(vulkan_structs .== $(esc(type)))
    end
end

macro graph_index(id, type)
    quote
        @check_in_graph $(esc(type))
        $(esc(id)) = findfirst(vulkan_structs .== $(esc(type)))
    end
end

"""
    depends_on(a, b)

Returns whether b depends on a

# Examples
```
julia> depends_on("VkPhysicalDeviceProperties", "VkPhysicalDeviceLimits")
false
julia> depends_on("VkPhysicalDeviceLimits", "VkPhysicalDeviceProperties")
true
```
"""
function depends_on(a, b)
    @graph_index a
    @graph_index b
    a ∈ inneighbors(g, b)
end



"""
    vk_dependencies(a)

# Examples
```
julia> vk_dependencies("VkPhysicalDeviceProperties")
2-element Array{String,1}:
 "VkPhysicalDeviceSparseProperties"
 "VkPhysicalDeviceLimits"
```
"""
function vk_dependencies(a)
    @graph_index a
    getindex.(Ref(vulkan_structs), inneighbors(g, a))
end