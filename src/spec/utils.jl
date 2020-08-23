function member_attr(node, attr)
    attr == "name" && haskey(node, "alias") && return node["name"] # special handling for aliases
    attrnode = node.firstelement
    while attrnode.name != attr
        attrnode = attrnode.nextelement
    end
    attrnode.content
end

function resolve_aliases!(collection::Dict, nodes)
    for node ∈ nodes
        if haskey(node, "alias")
            collection[node["name"]] = collection[node["alias"]]
        end
    end
end