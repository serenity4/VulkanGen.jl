function fetch_stypes(xroot)
    stype_vals = findall("//member[@values]", xroot)
    res = OrderedDict()
    for stype ∈ stype_vals 
        type = stype.parentnode["name"]
        stype_value = stype["values"]
        res[type] = stype_value
    end
    res
end

stypes = fetch_stypes(xroot)


function fetch_structextends(xroot)
    nodes = findall("//type[@category='struct' and @structextends]", xroot)
    res = DefaultOrderedDict(() -> [])
    for node ∈ nodes
        push!(res[node["structextends"]], node["name"])
    end
    res
end

function fetch_returnedonly(xroot)
    getindex.(findall("//type[@returnedonly='true']", xroot), "name")
end

struct_extensions = fetch_structextends(xroot)

returnedonly_structs = fetch_returnedonly(xroot)
is_struct_returnedonly(sname) = sname ∈ returnedonly_structs