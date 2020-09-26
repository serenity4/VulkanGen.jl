abstract type QueueType end
struct QueueCompute <: QueueType end
struct QueueGraphics <: QueueType end
struct QueueTransfer <: QueueType end
struct QueueSparseBinding <: QueueType end

@enum COMMAND_TYPE CREATE=1 DESTROY ALLOCATE FREE COMMAND ENUMERATE

queue_maps = OrderedDict(
    "compute" => QueueCompute,
    "graphics" => QueueGraphics,
    "transfer" => QueueTransfer,
    "sparse_binding" => QueueSparseBinding,
)

function queue(x)
    x ∈ keys(queue_maps) && return queue_maps[x]()
    error("Unknown queue type $x")
end

abstract type RenderPassRequirement end
struct RenderPassInside <: RenderPassRequirement end
struct RenderPassOutside <: RenderPassRequirement end

function queue_compatibility(node)
    !haskey(node, "queues") && return nothing
    queues = split(node["queues"], ",")
    queue.(queues)
end

render_pass_compatibility(node) = (nr = node["renderpass"]; nr == "both" ? [RenderPassInside(), RenderPassOutside()] : nr == "inside" ? [RenderPassInside()] : nr == "outside" ? [RenderPassOutside()] : error("Unknown render pass compatibility"))

function externsync(node)
    !haskey(node, "externsync") && return false
    node["externsync"] ≠ "false"
end

function fetch_parameters()
    nodes = findall("//command[not(@name)]", xroot)
    df = DataFrame([String, String, String, EzXML.Node, Bool, Bool, Bool], [:command, :name, :type, :node, :constant, :externsync, :optional])
    for node ∈ nodes
        for x ∈ findall("./param", node)
            push!(df, (parent_name(x), extract_identifier(x), extract_type(x), x, is_constant(x), externsync(x), is_optional(x)))
        end
    end
    df
end

is_optional(node) = haskey(node, "optional") && occursin("true", node["optional"])

function fetch_struct_fields()
    nodes = findall("//type[@category='union' or @category='struct']", xroot)
    df = DataFrame([String, String, String, EzXML.Node, Bool, Bool, Bool], [:struct, :name, :type, :node, :constant, :externsync, :optional])
    for node ∈ nodes
        for x ∈ findall("./member", node)
            push!(df, (parent_name(x), extract_identifier(x), extract_type(x), x, is_constant(x), externsync(x), is_optional(x)))
        end
    end
    df
end

function fetch_types()
    nodes = findall("//type[@category and @category != 'include' and @category != 'define' and (@name or @category = 'handle' or @category='bitmask')]", xroot)
    df = DataFrame([String, String, Union{String, Nothing}], [:name, :category, :alias])
    for node ∈ nodes
        name = haskey(node, "name") ? node["name"] : findfirst("./name", node).content
        push!(df, (name, node["category"], getattr(node, "alias")))
    end
    df
end

function fetch_structs()
    nodes = findall("//type[(@category='union' or @category='struct')]", xroot)
    df = DataFrame([String, Bool, Union{Nothing, Array{String, 1}}], [:name, :returnedonly, :extends])
    for node ∈ nodes
        push!(df, (getattr(node, "name"), haskey(node, "returnedonly"), (haskey(node, "structextends") ? split(node["structextends"], ",") : nothing)))
    end
    df
end

function is_struct_returnedonly(t)
    match = findfirst(x -> x == t, structs.name)
    isnothing(match) ? false : structs.returnedonly[match]
end

function fetch_handles()
    nodes = findall("//type[@category='handle' and not(@alias)]", xroot)
    df = DataFrame([String, Union{Nothing, String}, Bool], [:name, :parent, :dispatchable])
    for node ∈ nodes
        is_dispatchable = findfirst("./type", node).content == "VK_DEFINE_HANDLE"
        name = findfirst("./name", node).content
        push!(df, (name, getattr(node, "parent"), is_dispatchable))
    end
    df
end

function fetch_functions()
    nodes = findall("//command[not(@name) or (@name and @alias)]", xroot)
    df = DataFrame([String, Union{Nothing, COMMAND_TYPE}, Union{Nothing, Array{RenderPassRequirement, 1}}, Union{Nothing, Array{QueueType, 1}}, Union{Nothing, String}], [:name, :type, :render_pass_compatibility, :queue_compatibilty, :alias])
    for node ∈ nodes
        types = extract_type.(findall(".//param", node), include_pointer=false)
        is_enum = any(is_struct_returnedonly(t) for t ∈ types)
        alias = getattr(node, "alias")
        name = !isnothing(alias) ? node["name"] : command_name(node)
        queues = queue_compatibility(node)
        rp_reqs = getattr(node, "renderpass")
        if !isnothing(rp_reqs)
            rp_reqs = render_pass_compatibility(node)
        end
        ctype = findfirst(startswith.(name, ["vkCreate", "vkDestroy", "vkAllocate", "vkFree", "vkCmd"]))
        ctype = is_enum ? ENUMERATE : isnothing(ctype) ? nothing : COMMAND_TYPE(ctype)
        push!(df, (name, ctype, rp_reqs, queues, alias))
    end
    df
end

const params = fetch_parameters()
const fields = fetch_struct_fields()
const structs = fetch_structs()
const functions = fetch_functions()

const vulkan_types = fetch_types()
const handles = fetch_handles()