function fetch_cardinality_groups(xroot)
    cardinalities = findall("//member[@len!='null-terminated']", xroot)
    group_cardinalities([(member.parentnode["name"], haskey(member, "altlen") ? member["altlen"] : member["len"], nodecontent(findfirst("name", member))) for member ∈ cardinalities])
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
        pair_arr = getindex.(entries, 2) .=> getindex.(entries, 3)
        push!(dict_pairs, pair_arr)
    end

    dict = OrderedDict(p1 => p2 for (p1, p2) ∈ zip(unique_names, dict_pairs))
    # dict["VkShaderModuleCreateInfo"] =  ["codeSize" => "pCode * 4"]
    # dict["VkPipelineMultisampleStateCreateInfo"] = ["rasterizationSamples" => "pSampleMask * 32"]
    dict
end

const cardinality_groups = fetch_cardinality_groups(xroot)

function cardinality(name, sname)
    sname ∉ keys(cardinality_groups) && return nothing
    len_els = cardinality_groups[sname]
    index = findfirst(occursin.(Ref(name), first.(len_els)))
    isnothing(index) && return nothing
    last(len_els[index])
end

function default(name, type)
    is_handle(type) && return "VK_NULL_HANDLE"
    (is_bitmask(type) || type ∈ ["uint16_t", "uint64_t", "int16_t", "uint32_t", "int32_t", "float", "size_t", "VkBool32", "VkSampleMask", "VkFlags", "VkDeviceSize", "VkDeviceAddress", "DWORD"]) && return "0"
    startswith(name, "p") && return "C_NULL"
    # @warn "Unknown default value for type $type ($name), setting 0 as default"
    "0"
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
    member_nodes = findall("//member[@optional='true']", xroot)
    # println.(member_nodes)
    optional_parameters = []
    for param ∈ member_nodes
        name, type = member_attr.(Ref(param), ["name", "type"])
        push!(optional_parameters, [param.parentnode["name"], name, default(name, type)])
    end
    group_optional_parameters(optional_parameters)
end

const optional_parameters_dict = fetch_optional_parameters(xroot)