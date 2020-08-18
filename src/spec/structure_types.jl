function fetch_stypes(xroot)
    stype_vals = findall("//member[@values]", xroot)
    OrderedDict(
        stype.parentnode["name"] => stype["values"] for stype ∈ stype_vals
    )
end

stypes = fetch_stypes(xroot)