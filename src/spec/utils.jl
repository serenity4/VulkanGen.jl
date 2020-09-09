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

macro return_if_nothing(expr)
    lhs = expr.args[1]
    quote
        $(esc(expr))
        isnothing($(esc(lhs))) && return nothing
    end
end

function extract_type(param)
    type = split(replace(param.content, "const " => ""))[1]
    endswith(type, "*") ? "Ptr{$(type[1:end-1])}" : type
end

extract_identifier(param) = split(replace(param.content, "const " => ""))[2]