using VulkanGen

getfile(name) = dirname(dirname(pathof(VulkanCore))) *  "/gen/" * name
files = getfile.(["vk_common.jl", "vk_api.jl"])
api = API(files)
api.eval(sym) = @eval(vk, $(Meta.parse("$sym")))

function print_statements(decl)
    println("Printing statements for \e[34;1;1m$decl\e[m")
    pats = patterns(decl)
    println(generate(statements(first(pats)), check_identifiers=false))
end

const remove_symbols = [
    :VkBaseOutStructure,
    :VkBaseInStructure,
    :VkPhysicalDeviceShaderIntegerFunctions2INTEL,
]

function filter_api(api)
    new_api = deepcopy(api)
    for sym ∈ remove_symbols
        delete!(new_api.structs, sym)
    end
    new_api
end

f_api = filter_api(api)
w_api = wrap_api(f_api)
write(w_api, joinpath(dirname(@__DIR__), "generated"), check=false)

# print_statements(api.funcs[:vkDestroyPipeline])
# print_statements(api.funcs[:vkCreateDevice])
# print_statements(w_api.structs[:InstanceCreateInfo])