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
        haskey(node, "alias") && continue # skip aliases
        name = node.firstnode.nextnode.nextnode.content
        parent = haskey(node, "parent") ? node["parent"] : nothing
        is_dispatchable = node.firstnode.content != "VK_DEFINE_NON_DISPATCHABLE_HANDLE"
        handles_dict[name] = (parent, is_dispatchable)
    end
    
    resolve_parent!.(Ref(handles), keys(handles_dict), Ref(handles_dict))
    handles
end

const handles = fetch_handles(xroot)