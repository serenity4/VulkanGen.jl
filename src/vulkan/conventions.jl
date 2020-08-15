const code_object_to_vk_prefix = Dict(
    :struct => "Vk",
    :function => "vk",
    :constant => "VK",
)
const vulkan_convention_rev = Dict(v => k for (k, v) in vulkan_convention)

vk_prefix(::Type{T}) where {T <: NamingConvention} = code_object_to_vk_prefix[vulkan_convention_rev[T]]

"""Prefix a function with the Vulkan convention prefix vk, Vk or VK_ depending on the code object.
"""
function prefix_vk(name)
   convention = detect_convention(name)
   prefix(convention(name), vk_prefix(convention)).value
end
prefix_vk(name::T) where {T <: NamingConvention} = prefix(name, vk_prefix(typeof(name)))

function put_ptr_to_end(name)
    name_snake = SnakeCaseLower(name)
    new_name = SnakeCaseLower([split(name_snake)[2:end]..., "ptr"]).value
end

function replace_count_argument(args, arg)
    !endswith("$arg", "_count") && return arg
    skl_arg = SnakeCaseLower("$arg")
    arg_nocount = remove_parts(skl_arg, [length(split(skl_arg))]).value
    counted_thing_candidates = filter(x -> x != arg && occursin(arg_nocount, "$x"), args)
    @assert length(counted_thing_candidates) == 1 "No or too many candidates for counted elements from $arg ($counted_thing_candidates)"
    sym"length($(counted_thing_candidates[1]))"
end