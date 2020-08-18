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
    index = findfirst(name .== first.(len_els))
    isnothing(index) && return nothing
    last.(len_els)[index]
end