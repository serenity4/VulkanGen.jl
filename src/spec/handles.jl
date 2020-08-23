struct VkHandle
    name::AbstractString
    parent::Union{Nothing,VkHandle}
    is_dispatchable::Bool
end
Base.show(io::IO, h::VkHandle) = print(io, "$(h.is_dispatchable ? "Dispatchable" : "Non dispatchable") handle \"$(h.name)\"$(isnothing(h.parent) ? "" : " ⟶ $(h.parent.name)")")

function resolve_parent!(handles, handle_name::AbstractString, handles_dict)
    haskey(handles, handle_name) && return # parent already resolved
    parent, is_dispatchable = handles_dict[handle_name]
    if isnothing(parent)
        handles[handle_name] = VkHandle(handle_name, nothing, is_dispatchable)
    else
        if !haskey(handles, parent)
            resolve_parent!(handles, parent, handles_dict)
        end
        handles[handle_name] = VkHandle(handle_name, handles[parent], is_dispatchable)
    end
end

function fetch_handles(xroot)
    handle_nodes = findall("//type[@category='handle']", xroot)
    handles_dict = Dict()
    handles = Dict()
    for node ∈ handle_nodes
        haskey(node, "alias") && continue # skip aliases for now
        name = member_attr(node, "name")
        parent = haskey(node, "parent") ? node["parent"] : nothing
        is_dispatchable = node.firstnode.content != "VK_DEFINE_NON_DISPATCHABLE_HANDLE"
        handles_dict[name] = (parent, is_dispatchable)
    end
    
    resolve_parent!.(Ref(handles), keys(handles_dict), Ref(handles_dict))
    resolve_aliases!(handles, handle_nodes)
    handles
end

const handles = fetch_handles(xroot)
is_handle(type) = type ∈ (keys(handles)..., "HANDLE")

function fetch_handle_creation_info(xroot)
    nodes = findall("//command/proto[contains(./child::name, 'vkCreate')]/following-sibling::param[contains(., 'const ')]/child::type[contains(., 'CreateInfo')]", xroot)
    OrderedDict(node.parentelement.parentelement.lastelement.firstelement.content => (node.parentelement.parentelement.firstelement.firstelement.nextelement.content, node.content, node.nextelement.content) for node ∈ nodes)
end

handle_creation_info = fetch_handle_creation_info(xroot)

@assert issubset(keys(handle_creation_info), keys(handles))
@assert collect(keys(handle_creation_info)) == unique(keys(handle_creation_info))