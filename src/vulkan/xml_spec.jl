using EzXML
using DataStructures

xdoc = readxml("src/vulkan/vk.xml")

xroot = xdoc.root
members = findall("//member[@len!='null-terminated']", xroot)

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
    # dict["VkShaderModuleCreateInfo"] =  ["codeSize" => "pCode * 4"]
    # dict["VkPipelineMultisampleStateCreateInfo"] = ["rasterizationSamples" => "pSampleMask * 32"]
    dict
end

len_elements = group_len_elements([(member.parentnode["name"], haskey(member, "altlen") ? member["altlen"] : member["len"], nodecontent(findfirst("name", member))) for member ∈ members])

function len_element(name, sname)
    "$sname" ∉ keys(len_elements) && return nothing
    len_els = len_elements["$sname"]
    index = findfirst("$name" .== first.(len_els))
    isnothing(index) && return nothing
    last.(len_els)[index]
end

stype_vals = findall("//member[@values]", xroot)
stypes = OrderedDict(
    stype.parentnode["name"] => stype["values"] for stype ∈ stype_vals
)

alias_nodes = findall("//@alias", xroot)
aliases = OrderedDict(
    alias.parentnode["name"] => alias.parentnode["alias"] for alias ∈ alias_nodes
)

handle_nodes = findall("//type[@category='handle']", xroot)

struct VkHandle
    name::AbstractString
    parent::Union{Nothing,VkHandle}
    is_dispatchable::Bool
end

Base.show(io::IO, h::VkHandle) = print(io, "$(h.is_dispatchable ? "Dispatchable" : "Non dispatchable") handle \"$(h.name)\"$(isnothing(h.parent) ? "" : " ⟶ $(h.parent.name)")")

handles_dict = Dict()
handles = Dict()

function resolve_parent!(handles, handle_name::AbstractString)
    haskey(handles, handle_name) && return # parent already resolved
    parent, is_dispatchable = handles_dict[handle_name]
    if isnothing(parent)
        handles[handle_name] = VkHandle(handle_name, nothing, is_dispatchable)
    else
        if !haskey(handles, parent)
            resolve_parent!(handles, parent)
        end
        handles[handle_name] = VkHandle(handle_name, handles[parent], is_dispatchable)
    end
end

for node ∈ handle_nodes
    haskey(node, "alias") && continue # skip aliases
    name = node.firstnode.nextnode.nextnode.content
    parent = haskey(node, "parent") ? node["parent"] : nothing
    is_dispatchable = node.firstnode.content != "VK_DEFINE_NON_DISPATCHABLE_HANDLE"
    handles_dict[name] = (parent, is_dispatchable)
end

resolve_parent!.(Ref(handles), keys(handles_dict))