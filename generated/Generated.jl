module Generated

using VulkanCore

const vk = VulkanCore.vk
const libvulkan = vk.libvulkan
using VulkanCore.vk
using CEnum

include("../src/vk_utils.jl")
include("../src/ref_util.jl")

include(joinpath(dirname(@__DIR__), "generated", "wrapped_api.jl"))

end # module Generated