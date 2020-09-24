function member_attr(node, attr)
    attr == "name" && haskey(node, "alias") && return node["name"] # special handling for aliases
    val = findfirst(".//$attr", node)
    isnothing(val) && error("Attribute $attr not found in node\n$node")
    val.content
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

function extract_type(param; include_pointer=true)
    type = split(replace(param.content, "const " => ""))[1]
    type_nostar = rstrip(type, ['*', ' '])
    endswith(type, "*") && include_pointer ? "Ptr{$(type_nostar)}" : type_nostar
end

extract_identifier(param) = split(replace(param.content, "const " => ""))[2]

function parent_name(node)
    parel = node.parentelement
    parel.name == "command" ? command_name(parel) : parel.name == "type" && parel["category"] ∈ ["struct", "union"] ? struct_name(parel) : error("Unknown parent element:\n    $parel")
end

function command_name(node)
    isnothing(findfirst("proto", node)) && return command_name(node.parentelement)
    findfirst("proto/name", node).content
end

function struct_name(node)
    (!haskey(node, "category") || node["category"] ≠ "struct") && return struct_name(node.parentelement)
    node["name"]
end

is_constant(node) = any(split(node.content) .== "const")