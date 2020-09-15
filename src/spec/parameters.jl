function fetch_cardinality_groups(xroot)
    cardinalities_struct = findall("//member[@len!='null-terminated']", xroot)
    cardinalities_func = findall("//param[@len!='null-terminated']", xroot)
    cardinalities_to_group = []
    for card ∈ cardinalities_struct
        push!(cardinalities_to_group, (struct_name(card.parentelement), haskey(card, "altlen") ? card["altlen"] : card["len"], nodecontent(findfirst("name", card))))
    end
    for card ∈ cardinalities_func
        push!(cardinalities_to_group, (command_name(card), haskey(card, "altlen") ? card["altlen"] : card["len"], nodecontent(findfirst("name", card))))
    end
    group_cardinalities(cardinalities_to_group)
end

"""Create a dictionary relating pointer variables to their cardinality.

The dictionary provides a mapping s₁ => [l₁ => p₁, l₂ => p₂...] with sⱼ the VkStructure name, and lᵢ => pᵢ the pairs relating a variable holding a length (often *Count) to a pointer p*.
"""
function group_cardinalities(arr)
    names_arr = getindex.(arr, 1)
    unique_names = unique(names_arr)
    dict_pairs = []
    for name ∈ unique_names
        indices = findall(names_arr .== name)
        entries = getindex.(Ref(arr), indices)
        pair_arr = replace.(getindex.(entries, 2), r",?null-terminated" => "") .=> getindex.(entries, 3)
        push!(dict_pairs, pair_arr)
    end

    dict = OrderedDict(p1 => p2 for (p1, p2) ∈ zip(unique_names, dict_pairs))
    dict
end

cardinality_groups = fetch_cardinality_groups(xroot)


function cardinality_group(name, sname)
    sname ∉ keys(cardinality_groups) && return nothing
    cardinality_groups[sname]
end

cardinality_group_index(name, len_els; compare=first) = findfirst(name .== compare.(len_els))

function is_array_variable(name, sname)
    len_els = cardinality_group(name, sname)
    !isnothing(len_els) && !isnothing(cardinality_group_index(name, len_els; compare=last))
end

function is_count_variable(name, sname)
    len_els = cardinality_group(name, sname)
    !isnothing(len_els) && !isnothing(cardinality_group_index(name, len_els; compare=first))
end

function count_variable(name, sname)
    if is_count_variable(name, sname)
        len_els = cardinality_group(name, sname)
        pos = first
        index = cardinality_group_index(name, len_els; compare=pos)
        pos(len_els[index])
    end
end

function array_variable(name, sname)
    if is_array_variable(name, sname)
        len_els = cardinality_group(name, sname)
        pos = last
        index = cardinality_group_index(name, len_els; compare=pos)
        pos(len_els[index])
    end
end

function default(name, type)
    is_handle(type) && return "C_NULL"
    (is_bitmask(type) || type ∈ ["uint16_t", "uint64_t", "int16_t", "uint32_t", "int32_t", "float", "size_t", "VkBool32", "VkSampleMask", "VkFlags", "VkDeviceSize", "VkDeviceAddress", "DWORD"]) && return "0"
    startswith(name, "p") && return "C_NULL"
    # @warn "Unknown default value for type $type ($name), setting 0 as default"
    "0"
end

"""
    associated_array_variable(name, sname)

# Examples
```
julia> associated_array_variable("enabledLayerCount", "VkInstanceCreateInfo")
"ppEnabledLayerNames"
```
"""
function associated_array_variable(count_var_name, sname)
    els = cardinality_groups[sname]
    for el ∈ els
        el[1] == count_var_name && return el[2]
    end
    error("No array variable associated to $count_var_name was found")
end

function group_optional_parameters(params)
    names = getindex.(params, 1)
    unique_names = unique(names)
    dict_pairs = []
    for name ∈ unique_names
        indices = findall(names .== name)
        entries = getindex.(Ref(params), indices)
        pair_arr = getindex.(entries, 2) .=> getindex.(entries, 3)
        push!(dict_pairs, pair_arr)
    end

    OrderedDict(p1 => p2 for (p1, p2) ∈ zip(unique_names, dict_pairs))
end

function fetch_optional_parameters(xroot)
    member_nodes = findall("//member[@optional='true' or ./child::name = 'pNext']", xroot)
    param_nodes = findall("//param[@optional='true']", xroot)
    optional_parameters = []
    for param ∈ member_nodes
        name, type = member_attr.(Ref(param), ["name", "type"])
        push!(optional_parameters, [struct_name(param), name, default(name, type)])
    end
    for param ∈ param_nodes
        name, type = member_attr.(Ref(param), ["name", "type"])
        push!(optional_parameters, [command_name(param), name, default(name, type)])
    end
    group_optional_parameters(optional_parameters)
end

optional_parameters_dict = fetch_optional_parameters(xroot)

is_optional_parameter(name, sname) = sname ∈ keys(optional_parameters_dict) && name ∈ first.(optional_parameters_dict[sname])

function optional_parameter_default_value(name, sname)
    @assert is_optional_parameter(name, sname) "Parameter $name from structure $sname is not an optional parameter"
    params = optional_parameters_dict[sname]
    last(params[findfirst(first.(params) .== name)])
end

@assert is_array_variable("pQueueFamilyIndices", "VkBufferCreateInfo")
@assert is_count_variable("queueFamilyIndexCount", "VkBufferCreateInfo")