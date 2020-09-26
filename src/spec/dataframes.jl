abstract type QueueType end
struct QueueCompute <: QueueType end
struct QueueGraphics <: QueueType end
struct QueueTransfer <: QueueType end
struct QueueSparseBinding <: QueueType end

@enum COMMAND_TYPE CREATE=1 DESTROY ALLOCATE FREE COMMAND ENUMERATE
@enum STRUCT_TYPE CREATE_INFO=1 ALLOCATE_INFO GENERIC_INFO DATA PROPERTY

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
    df = DataFrame([String, String, String, EzXML.Node, Bool, Bool, Bool, Union{Nothing, String}, Array{String, 1}], [:command, :name, :type, :node, :constant, :externsync, :optional, :len, :arglen])
    for node ∈ nodes
        for x ∈ findall("./param", node)
            push!(df, (parent_name(x), extract_identifier(x), extract_type(x), x, is_constant(x), externsync(x), is_optional(x), len(x), arglen(x)))
        end
    end
    df
end

is_optional(node) = haskey(node, "optional") && occursin("true", node["optional"])

function fetch_struct_fields()
    nodes = findall("//type[@category='union' or @category='struct']", xroot)
    df = DataFrame([String, String, String, EzXML.Node, Bool, Bool, Bool, Union{Nothing, String}, Array{String, 1}], [:struct, :name, :type, :node, :constant, :externsync, :optional, :len, :arglen])
    for node ∈ nodes
        for x ∈ findall("./member", node)
            push!(df, (parent_name(x), extract_identifier(x), extract_type(x), x, is_constant(x), externsync(x), is_optional(x), len(x), arglen(x, neighbor_type="member")))
        end
    end
    df
end

function len(node)
    haskey(node, "altlen") && return node["altlen"]
    val = getattr(node, "len")
    isnothing(val) && return val
    val_arr = filter(x -> x ≠ "null-terminated", split(val, ","))
    @assert length(val_arr) <= 1
    isempty(val_arr) ? nothing : first(val_arr)
end

function arglen(node; neighbor_type="param")
    neighbors = findall("../$neighbor_type", node)
    name = findfirst("./name", node).content
    arglens = String[]
    for node ∈ neighbors
        len(node) == name ? push!(arglens, findfirst("./name", node).content) : nothing
    end
    arglens
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
    df = DataFrame([String, STRUCT_TYPE, Bool, Union{Nothing, Array{String, 1}}], [:name, :type, :returnedonly, :extends])
    for node ∈ nodes
        name = getattr(node, "name")
        @assert !isnothing(name) "Found the following structure without name:\n    $node"
        returnedonly = haskey(node, "returnedonly")
        type = returnedonly ? PROPERTY : occursin("CreateInfo", name) ? CREATE_INFO : occursin("AllocateInfo", name) ? ALLOCATE_INFO : occursin("Info", name) ? GENERIC_INFO : DATA
        push!(df, (name, type, returnedonly, (haskey(node, "structextends") ? split(node["structextends"], ",") : nothing)))
    end
    df
end

function is_struct_returnedonly(t)
    match = findfirst(x -> x == t, vulkan_structs.name)
    isnothing(match) ? false : vulkan_structs.returnedonly[match]
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

function fetch_creation_info()
    nodes = findall("//command/proto[contains(./child::name, 'vkCreate') or contains(./child::name, 'vkAllocate')]", xroot)
    df = DataFrame([String, String, String, Array{String, 1}, Array{String, 1}], [:name, :create_function, :identifier, :create_info_structs, :create_info_identifiers])
    vulkan_create_info_structs = (vulkan_structs |> @filter(_.type ∈ [CREATE_INFO, ALLOCATE_INFO]) |> DataFrame).name
    for node ∈ nodes
        create_el_node = findlast("../param", node)
        name = findfirst("./type", create_el_node).content
        create_fun = findfirst("./name", node).content
        create_info_nodes = filter!(x -> findfirst("./type", x).content ∈ vulkan_create_info_structs, findall("../param", node))
        create_info_structs = getproperty.(findfirst.("./type", create_info_nodes), :content)
        create_info_identifiers = getproperty.(findfirst.("./name", create_info_nodes), :content)
        identifier = findfirst("./name", create_el_node).content
        push!(df, (name, create_fun, identifier, create_info_structs, create_info_identifiers))
    end
    df
end

function fetch_destruction_info()
    nodes = findall("//command/proto[contains(./child::name, 'vkDestroy') or contains(./child::name, 'vkFree')]", xroot)
    df = DataFrame([String, String, String], [:name, :destroy_function, :identifier])
    for node ∈ nodes
        destroy_fun = findfirst("./name", node).content
        destroy_el_node = findlast("../param[@externsync]", node)
        name = findfirst("./type", destroy_el_node).content
        identifier = findfirst("./name", destroy_el_node).content
        push!(df, (name, destroy_fun, identifier))
    end
    df
end

vulkan_params = fetch_parameters()
vulkan_fields = fetch_struct_fields()
const vulkan_structs = fetch_structs()
const vulkan_functions = fetch_functions()
const vulkan_types = fetch_types()
const vulkan_handles = fetch_handles()
const vulkan_creation_info = fetch_creation_info()
const vulkan_destruction_info = fetch_destruction_info()

is_handle(type) = type ∈ (vulkan_handles.name..., "HANDLE")
is_handle_with_create_info(type) = type ∈ vulkan_creation_info.name
is_handle_destructible(type) = type ∈ vulkan_destruction_info.name
function is_handle_with_multiple_create_info(type)
    index = findall(vulkan_creation_info.name .== type)
    !isnothing(index) && length(index) > 1
end

is_category(type, cat) = type ∈ (vulkan_types |> @filter(_.category == cat) |> DataFrame).name
is_enum(type) = is_category(type, "enum")
is_bitmask(type) = is_category(type, "bitmask")
isalias(type) = !isnothing(vulkan_types[findfirst(x -> x == type, vulkan_types.name), :].alias)


@assert is_handle("VkInstance")
@assert !is_handle("VkInstanceCreateInfo")
@assert is_handle_with_create_info("VkInstance")
@assert !is_handle_with_create_info("VkPhysicalDevice")
@assert is_handle_destructible("VkDevice")
@assert !is_handle_destructible("VkPhysicalDevice")
@assert is_handle_with_multiple_create_info("VkPipeline")
@assert !is_handle_with_multiple_create_info("VkPhysicalDevice")
@assert issubset(filter(!isalias, unique(vulkan_creation_info.name)), vulkan_handles.name)

@assert is_bitmask("VkQueryPoolCreateFlags")
@assert is_enum("VkDebugUtilsMessageSeverityFlagBitsEXT")
@assert !is_bitmask("VkInstance")
@assert is_enum("VkResult")
@assert !is_enum("VkInstance")