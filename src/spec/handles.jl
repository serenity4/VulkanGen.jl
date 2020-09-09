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

handles = fetch_handles(xroot)
is_handle(type) = type ∈ (keys(handles)..., "HANDLE")

function fetch_handle_creation_info(xroot)
    nodes = findall("//command/proto[contains(./child::name, 'vkCreate')]/following-sibling::param[contains(., 'const ')]/child::type[contains(., 'CreateInfo')]", xroot)
    res = OrderedDict()
    for node ∈ nodes
        type = node.parentelement.parentelement.lastelement.firstelement.content
        create_fun = node.parentelement.parentelement.firstelement.firstelement.nextelement.content
        create_info_struct = node.content
        identifier = node.nextelement.content
        if haskey(res, type) # several create info were available for a given handle
            cf, cis, i = res[type]
            if !(cf isa AbstractArray) # first time that an array needs to be created
                cf, cis, i = [cf], [cis], [i]
            end
            res[type] = [[cf..., create_fun], [cis..., create_info_struct], [i..., identifier]]
        else
            res[type] = (create_fun, create_info_struct, identifier)
        end
    end
    res
end

handle_creation_info = fetch_handle_creation_info(xroot)
is_handle_with_create_info(name) = name ∈ keys(handle_creation_info)

function fetch_handle_destruction_info(xroot)
    nodes = findall("//command/proto[contains(./child::name, 'vkDestroy')]", xroot)
    res = OrderedDict()
    for node ∈ nodes
        destroyed_el = findfirst(".//param[@externsync='true']", node.parentelement)
        destroy_fun = findfirst(".//child::name", node).content
        destroyed_type = extract_type(destroyed_el)
        all_params = findall(".//param[..//../command]", node.parentelement)
        identifiers = extract_identifier.(all_params)
        types = extract_type.(all_params)
        res[destroyed_type] = (destroy_fun, identifiers, types)
    end
    res
end

handle_destruction_info = fetch_handle_destruction_info(xroot)
is_handle_destructible(type) = type ∈ keys(handle_destruction_info)

@assert issubset(keys(handle_creation_info), keys(handles))
@assert collect(keys(handle_creation_info)) == unique(keys(handle_creation_info))
