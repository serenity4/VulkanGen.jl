function fetch_enumeration_command_counts(xroot)
    falsetrue_opts = findall("//param[@optional='false,true' and not(@len) and following-sibling::param[contains(@len, 'Count') or contains(@len, 'Size')]]", xroot)
    count_vars = Dict()
    
    for node ∈ falsetrue_opts
        count_vars[node.parentelement.firstelement.firstelement.nextelement.content] = node.firstelement.nextelement.content => node.nextelement.firstelement.content
    end
    
    count_vars
end

enumeration_command_counts = fetch_enumeration_command_counts(xroot)
enumeration_command_counts["vkGetPhysicalDeviceSurfaceCapabilitiesKHR"] = "pSurfaceCapabilities" => "VkSurfaceCapabilitiesKHR"

is_enumeration_command(fdef) = haskey(enumeration_command_counts, fdef.name)