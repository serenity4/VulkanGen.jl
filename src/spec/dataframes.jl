function externsync(node)
    !haskey(node, "externsync") && return false
    node["externsync"] ≠ "false"
end

function fetch_parameters()
    nodes = findall("//command[not(@name)]", xroot)
    df = DataFrame([String, String, String, EzXML.Node, Bool, Bool, Bool], [:command, :name, :type, :node, :constant, :externsync, :optional])
    for node ∈ nodes
        for x ∈ findall("./param", node)
            push!(df, (parent_name(x), extract_identifier(x), extract_type(x), x, is_constant(x), externsync(x), is_optional(x)))
        end
    end
    df
end

is_optional(node) = haskey(node, "optional") && occursin("true", node["optional"])

function fetch_struct_fields()
    nodes = findall("//type[@category='union' or @category='struct']", xroot)
    df = DataFrame([String, String, String, EzXML.Node, Bool, Bool, Bool], [:struct, :name, :type, :node, :constant, :externsync, :optional])
    for node ∈ nodes
        for x ∈ findall("./member", node)
            push!(df, (parent_name(x), extract_identifier_2(x), extract_type(x), x, is_constant(x), externsync(x), is_optional(x)))
        end
    end
    df
end

function fetch_structs(; include_aliases=false)
    nodes = findall("//type[(@category='union' or @category='struct') and not(@alias)]", xroot)
    df = DataFrame([String, Bool, Array{String, 1}], [:name, :returnedonly, :extends])
    for node ∈ nodes
        push!(df, (getattr(node, "name"), haskey(node, "returnedonly"), (haskey(node, "structextends") ? split(node["structextends"], ",") : String[])))
    end
    df
end

params = fetch_parameters()
fields = fetch_struct_fields()
structs = fetch_structs()