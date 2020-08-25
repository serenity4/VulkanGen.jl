function fetch_aliases(xroot)
    alias_nodes = findall("//@alias", xroot)
    OrderedDict(
        alias.parentnode["name"] => alias.parentnode["alias"] for alias ∈ alias_nodes
    )
end

function build_alias_graph(alias_verts, aliases_dict)
    g = SimpleDiGraph(length(alias_verts))

    for (j, vert) ∈ enumerate(alias_verts)
        !haskey(aliases_dict, vert) && continue
        dest_vert = aliases_dict[vert]
        i = findfirst(dest_vert .== alias_verts)
        add_edge!(g, i, j)
    end
    g
end

const aliases_dict = fetch_aliases(xroot)
const aliases_dict_rev = OrderedDict(v => k for (k, v) ∈ aliases_dict)

"""
Whether this name is an alias.
"""
isalias(name) = name ∈ keys(aliases_dict)

"""
Whether an alias was built from this name.
"""
hasalias(name) = name ∈ values(aliases_dict)

alias_verts = unique(vcat(keys(aliases_dict)..., values(aliases_dict)...))

g = build_alias_graph(alias_verts, aliases_dict)

aliases(g::SimpleDiGraph, index) = getindex.(Ref(alias_verts), outneighbors(g, index))
aliases(name) = (index = findfirst(alias_verts .== name); isnothing(index) ? error("Name $name not found") : aliases(g, index))

follow_alias(g::SimpleDiGraph, index) = getindex.(Ref(alias_verts), inneighbors(g, index))
follow_alias(name) = (index = findfirst(alias_verts .== name); isnothing(index) ? error("Name $name not found") : follow_alias(g, index))

# for el ∈ topological_sort_by_dfs(g)
#     elname = alias_verts[el]
#     println("$(lpad("$elname ($el)", 120)) => $(isalias(elname) ? "ALIAS" : "NOALIAS")")
# end