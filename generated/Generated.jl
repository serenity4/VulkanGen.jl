module Generated

using VulkanCore

const vk = VulkanCore.vk
const libvulkan = vk.libvulkan
using VulkanCore.vk
using CEnum

include("../src/vk_utils.jl")
include("../src/ref_utils.jl")

include(joinpath(dirname(@__DIR__), "generated", "wrapped_api.jl"))

export REFERENCE_DICT,
       clear_refs,
       is_referenceable,
       preserve,
       preserved_ref

end # module Generated