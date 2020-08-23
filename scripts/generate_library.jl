using VulkanGen

getfile(name) = dirname(dirname(pathof(VulkanCore))) *  "/gen/" * name
files = getfile.(["vk_common.jl", "vk_api.jl"])
api = API(files, sym -> @eval(vk, $(Meta.parse("$sym"))))

ignored_symbols = [
    "VkBaseOutStructure",
    "VkBaseInStructure",
]

function filter_api(api)
    new_api = deepcopy(api)
    for sym ∈ ignored_symbols
        delete!(new_api.structs, sym)
    end
    new_api
end

f_api = filter_api(api)
w_api = wrap(f_api)
write(w_api, joinpath(dirname(@__DIR__), "generated"), check=false)