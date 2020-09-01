using EzXML
using DataStructures
using LightGraphs

abstract type QueueType end
struct QueueCompute <: QueueType end
struct QueueGraphics <: QueueType end

abstract type RenderPassRequirement end
struct RenderPassInside <: RenderPassRequirement end
struct RenderPassOutside <: RenderPassRequirement end

struct VkCommand
    name
    queue_compatibility::AbstractArray{<:QueueType}
    renderpass_compatibility::AbstractArray{<:RenderPassRequirement}
end

command_queue_compatibility(node) = (nq = node["queues"]; all(occursin.(["graphics", "compute"], nq)) ? [QueueCompute(), QueueGraphics()] : occursin("graphics", nq) ? [QueueGraphics()] : occursin("compute", nq) ? [QueueCompute()] : error("Unknown queue compatibility"))

renderpass_compatibility(node) = (nr = node["renderpass"]; nr == "both" ? [RenderPassInside(), RenderPassOutside()] : nr == "inside" ? [RenderPassInside()] : nr == "outside" ? [RenderPassOutside()] : error("Unknown render pass compatibility"))

VkCommandInfo(node::EzXML.Node) = VkCommandInfo(command_name(node), command_queue_compatibility(node), renderpass_compatibility(node))

xdoc = readxml(joinpath(@__DIR__, "vk.xml"))
xroot = xdoc.root

include("utils.jl")

command_name(node) = findfirst("proto/name", node).content

nodes = findall("//command[contains(@queues, 'compute')]", xroot)
# println.(nodes);

node = first(nodes)
# println(node
# println(findfirst("param", node))
# println.(command_name.(nodes))

# println.(VkCommandInfo.(nodes))

is_compatible(queue_type::QueueType, command::VkCommand) = queue_type ∈ command.queue_compatibility
is_compatible(renderpass_location::RenderPassRequirement, command::VkCommand) = renderpass_location ∈ command.renderpass_compatibility

function fetch_externsync_params(xroot)
    param_nodes = findall("//param[@externsync]", xroot)
    params = DefaultOrderedDict(() -> Pair{String, String}[])
    for node ∈ param_nodes
        push!(params[node.parentnode.firstelement.lastelement.content], node.lastelement.content => node["externsync"])
    end
    # println.(param_nodes);
    params
end

fetch_externsync_params(xroot)