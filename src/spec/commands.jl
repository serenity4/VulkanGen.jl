function fetch_enumeration_command_counts(xroot)
    falsetrue_opts = findall("//param[@optional='false,true' and not(@len) and following-sibling::param[contains(@len, 'Count') or contains(@len, 'Size')]]", xroot)
    count_vars = Dict()
    
    for node ∈ falsetrue_opts
        name = node.nextelement.firstelement.nextelement.content
        type = node.nextelement.firstelement.content
        count_var = node.firstelement.nextelement.content
        count_vars[command_name(node)] = count_var => (name, type)
    end
    
    count_vars
end

enumeration_command_counts = fetch_enumeration_command_counts(xroot)

is_enumeration_command(fname) = haskey(enumeration_command_counts, fname)
enumeration_command_count_variable(fname) = enumeration_command_counts[fname].first
enumeration_command_array_variable(fname; include_type = false) = (nametype = enumeration_command_counts[fname].second; include_type ? nametype : nametype[1])

function fetch_get_command_nonenum_arrays(xroot)
    getfs = findall(".//command[starts-with(./proto/name, 'vkGet')]", xroot)
    getfs_nonenum = filter(x -> command_name(x) ∉ keys(enumeration_command_counts), getfs)
    written_arrs = Dict()
    for node ∈ getfs_nonenum
        param = node.lastelement
        written_arrs[command_name(node)] = (extract_identifier(param), extract_type(param))
    end
    written_arrs
end

get_command_nonenum_arrays = fetch_get_command_nonenum_arrays(xroot)
enumerated_properties = vcat(last.(getproperty.(values(enumeration_command_counts), :second)), map(x -> startswith(x, "Ptr") ? first(match(r"Ptr{(.*)}", x).captures) : x, last.(values(get_command_nonenum_arrays))))

# enumerated_property_exceptions = [
#     "VkPhysicalDeviceLimits",
# ]

# is_enumerated_property(type) = type ∈ enumerated_property_exceptions || type ∈ last.(getproperty.((values(enumeration_command_counts)), :second))
is_enumerated_property(type) = type ∈ enumerated_properties