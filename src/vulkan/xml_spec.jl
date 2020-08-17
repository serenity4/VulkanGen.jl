using EzXML
using DataStructures

xdoc = readxml("src/vulkan/vk.xml")

xroot = xdoc.root

el = findall("//type[@category='struct']", xroot)
# println.(el)
members = findall("//member[@len!='null-terminated']", xroot)
# println.(members);
# println.(getproperty.(members, :parentnode));

# for member ∈ members
#     if occursin("\\", member["len"])
#         println([member["len"], member.parentnode["name"], nodecontent(findfirst("name", member))])
#     end
# end

function group_len_elements(arr)
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
    dict["VkShaderModuleCreateInfo"] =  ["codeSize" => "pCode * 4"]
    dict["VkPipelineMultisampleStateCreateInfo"] = ["rasterizationSamples" => "pSampleMask * 32"]
    dict
end

len_elements = group_len_elements([(member.parentnode["name"], member["len"], nodecontent(findfirst("name", member))) for member ∈ members])

function len_element(name, sname)
    "$sname" ∉ keys(len_elements) && return nothing
    len_els = len_elements["$sname"]
    index = findfirst("$name" .== first.(len_els))
    isnothing(index) && return nothing
    Symbol(last.(len_els)[index])
end

stype_vals = findall("//member[@values]", xroot)
stypes = OrderedDict(
    stype.parentnode["name"] => stype["values"] for stype ∈ stype_vals
)

alias_nodes = findall("//@alias", xroot)
aliases = OrderedDict(
    alias.parentnode["name"] => alias.parentnode["alias"] for alias ∈ alias_nodes
)