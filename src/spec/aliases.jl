function fetch_aliases(xroot)
    alias_nodes = findall("//@alias", xroot)
    OrderedDict(
        alias.parentnode["name"] => alias.parentnode["alias"] for alias ∈ alias_nodes
    )
end

const aliases = fetch_aliases(xroot)