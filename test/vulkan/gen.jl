@testset "Pattern automatization" begin
    @test generate(statements(pattern(:vkCreateInstance))) == format_text("ptr = Ref{Instance}()\n@check vkCreateInstance(Ref(create_info), allocator, ptr)")
    @test generate(statements(pattern(:vkDestroyPipeline))) == format_text("Base.finalizer(x -> vkDestroyPipeline(device, pipeline, pAllocator), pipeline)")
    @test @test_logs((:warn, "Function VulkanCore.LibVulkan.VkInstanceCreateInfo has 2 methods"), generate(statements(pattern(:VkInstanceCreateInfo)))) == format_text("create_info = VkCreateInfoInstanceCreateInfo(VK_STRUCTURE_TYPE_INSTANCE_CREATE_INFO, pNext, flags, pApplicationInfo, enabledLayerCount, ppEnabledLayerNames, enabledExtensionCount, ppEnabledExtensionNames)")
end