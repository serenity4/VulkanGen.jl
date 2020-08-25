struct PhysicalDeviceRayTracingPropertiesKHR
    shader_group_handle_size::Int32
    max_recursion_depth::Int32
    max_shader_group_stride::Int32
    shader_group_base_alignment::Int32
    max_geometry_count::Int32
    max_instance_count::Int32
    max_primitive_count::Int32
    max_descriptor_set_acceleration_structures::Int32
    shader_group_handle_capture_replay_size::Int32
end

struct PhysicalDeviceFragmentDensityMap2PropertiesEXT
    subsampled_loads::Bool
    subsampled_coarse_reconstruction_early_access::Bool
    max_subsampled_array_layers::UInt32
    max_descriptor_set_subsampled_samplers::UInt32
end

struct PhysicalDeviceCustomBorderColorPropertiesEXT
    max_custom_border_color_samplers::UInt32
end

struct PhysicalDeviceDeviceGeneratedCommandsPropertiesNV
    max_graphics_shader_group_count::UInt32
    max_indirect_sequence_count::UInt32
    max_indirect_commands_token_count::UInt32
    max_indirect_commands_stream_count::UInt32
    max_indirect_commands_token_offset::UInt32
    max_indirect_commands_stream_stride::UInt32
    min_sequences_count_buffer_offset_alignment::UInt32
    min_sequences_index_buffer_offset_alignment::UInt32
    min_indirect_commands_buffer_offset_alignment::UInt32
end

struct PhysicalDeviceLineRasterizationPropertiesEXT
    line_sub_pixel_precision_bits::UInt32
end

struct PhysicalDevicePCIBusInfoPropertiesEXT
    pci_domain::UInt32
    pci_bus::UInt32
    pci_device::UInt32
    pci_function::UInt32
end

struct PhysicalDeviceMeshShaderPropertiesNV
    max_draw_mesh_tasks_count::UInt32
    max_task_work_group_invocations::UInt32
    max_task_work_group_size::NTuple{3,UInt32}
    max_task_total_memory_size::UInt32
    max_task_output_count::UInt32
    max_mesh_work_group_invocations::UInt32
    max_mesh_work_group_size::NTuple{3,UInt32}
    max_mesh_total_memory_size::UInt32
    max_mesh_output_vertices::UInt32
    max_mesh_output_primitives::UInt32
    max_mesh_multiview_view_count::UInt32
    mesh_output_per_vertex_granularity::UInt32
    mesh_output_per_primitive_granularity::UInt32
end

struct PhysicalDeviceVertexAttributeDivisorPropertiesEXT
    max_vertex_attrib_divisor::UInt32
end

struct PhysicalDeviceShaderCorePropertiesAMD
    shader_engine_count::UInt32
    shader_arrays_per_engine_count::UInt32
    compute_units_per_shader_array::UInt32
    simd_per_compute_unit::UInt32
    wavefronts_per_simd::UInt32
    wavefront_size::UInt32
    sgprs_per_simd::UInt32
    min_sgpr_allocation::UInt32
    max_sgpr_allocation::UInt32
    sgpr_allocation_granularity::UInt32
    vgprs_per_simd::UInt32
    min_vgpr_allocation::UInt32
    max_vgpr_allocation::UInt32
    vgpr_allocation_granularity::UInt32
end

struct MemoryHostPointerPropertiesEXT
    memory_type_bits::UInt32
end

struct FilterCubicImageViewImageFormatPropertiesEXT
    filter_cubic::Bool
    filter_cubic_minmax::Bool
end

struct PhysicalDeviceRayTracingPropertiesNV
    shader_group_handle_size::UInt32
    max_recursion_depth::UInt32
    max_shader_group_stride::UInt32
    shader_group_base_alignment::UInt32
    max_geometry_count::UInt64
    max_instance_count::UInt64
    max_triangle_count::UInt64
    max_descriptor_set_acceleration_structures::UInt32
end

struct ImageDrmFormatModifierPropertiesEXT
    drm_format_modifier::UInt64
end

struct PhysicalDeviceShaderSMBuiltinsPropertiesNV
    shader_sm_count::UInt32
    shader_warps_per_sm::UInt32
end

struct PhysicalDeviceBlendOperationAdvancedPropertiesEXT
    advanced_blend_max_color_attachments::UInt32
    advanced_blend_independent_blend::Bool
    advanced_blend_non_premultiplied_src_color::Bool
    advanced_blend_non_premultiplied_dst_color::Bool
    advanced_blend_correlated_overlap::Bool
    advanced_blend_all_operations::Bool
end

struct PhysicalDeviceInlineUniformBlockPropertiesEXT
    max_inline_uniform_block_size::UInt32
    max_per_stage_descriptor_inline_uniform_blocks::UInt32
    max_per_stage_descriptor_update_after_bind_inline_uniform_blocks::UInt32
    max_descriptor_set_inline_uniform_blocks::UInt32
    max_descriptor_set_update_after_bind_inline_uniform_blocks::UInt32
end

struct PhysicalDeviceConservativeRasterizationPropertiesEXT
    primitive_overestimation_size::Float32
    max_extra_primitive_overestimation_size::Float32
    extra_primitive_overestimation_size_granularity::Float32
    primitive_underestimation::Bool
    conservative_point_and_line_rasterization::Bool
    degenerate_triangles_rasterized::Bool
    degenerate_lines_rasterized::Bool
    fully_covered_fragment_shader_input_variable::Bool
    conservative_rasterization_post_depth_coverage::Bool
end

struct PhysicalDeviceDiscardRectanglePropertiesEXT
    max_discard_rectangles::UInt32
end

struct PhysicalDeviceMultiviewPerViewAttributesPropertiesNVX
    per_view_position_all_components::Bool
end

struct PastPresentationTimingGOOGLE
    present_id::UInt32
    desired_present_time::UInt64
    actual_present_time::UInt64
    earliest_present_time::UInt64
    present_margin::UInt64
end

struct TextureLODGatherFormatPropertiesAMD
    supports_texture_gather_lod_bias_amd::Bool
end

struct PipelineExecutableInternalRepresentationKHR
    name::String
    description::String
    is_text::Bool
    data::Ptr{Cvoid}
end

struct PhysicalDevicePipelineExecutablePropertiesFeaturesKHR
    pipeline_executable_info::Bool
end

struct PhysicalDevicePerformanceQueryPropertiesKHR
    allow_command_buffer_query_copies::Bool
end

struct PhysicalDevicePushDescriptorPropertiesKHR
    max_push_descriptors::UInt32
end

struct MemoryFdPropertiesKHR
    memory_type_bits::UInt32
end

struct PhysicalDeviceTimelineSemaphoreProperties
    max_timeline_semaphore_value_difference::UInt64
end

struct PhysicalDeviceSamplerFilterMinmaxProperties
    filter_minmax_single_component_formats::Bool
    filter_minmax_image_component_mapping::Bool
end

struct PhysicalDeviceDescriptorIndexingProperties
    max_update_after_bind_descriptors_in_all_pools::UInt32
    shader_uniform_buffer_array_non_uniform_indexing_native::Bool
    shader_sampled_image_array_non_uniform_indexing_native::Bool
    shader_storage_buffer_array_non_uniform_indexing_native::Bool
    shader_storage_image_array_non_uniform_indexing_native::Bool
    shader_input_attachment_array_non_uniform_indexing_native::Bool
    robust_buffer_access_update_after_bind::Bool
    quad_divergent_implicit_lod::Bool
    max_per_stage_descriptor_update_after_bind_samplers::UInt32
    max_per_stage_descriptor_update_after_bind_uniform_buffers::UInt32
    max_per_stage_descriptor_update_after_bind_storage_buffers::UInt32
    max_per_stage_descriptor_update_after_bind_sampled_images::UInt32
    max_per_stage_descriptor_update_after_bind_storage_images::UInt32
    max_per_stage_descriptor_update_after_bind_input_attachments::UInt32
    max_per_stage_update_after_bind_resources::UInt32
    max_descriptor_set_update_after_bind_samplers::UInt32
    max_descriptor_set_update_after_bind_uniform_buffers::UInt32
    max_descriptor_set_update_after_bind_uniform_buffers_dynamic::UInt32
    max_descriptor_set_update_after_bind_storage_buffers::UInt32
    max_descriptor_set_update_after_bind_storage_buffers_dynamic::UInt32
    max_descriptor_set_update_after_bind_sampled_images::UInt32
    max_descriptor_set_update_after_bind_storage_images::UInt32
    max_descriptor_set_update_after_bind_input_attachments::UInt32
end

struct PhysicalDeviceIDProperties
    device_uuid::String
    driver_uuid::String
    device_luid::String
    device_node_mask::UInt32
    device_luid_valid::Bool
end

struct SamplerYcbcrConversionImageFormatProperties
    combined_image_sampler_descriptor_count::UInt32
end

struct PhysicalDeviceProtectedMemoryProperties
    protected_no_fault::Bool
end

struct PhysicalDeviceMultiviewProperties
    max_multiview_view_count::UInt32
    max_multiview_instance_index::UInt32
end

struct LayerProperties
    layer_name::String
    spec_version::VersionNumber
    implementation_version::VersionNumber
    description::String
end

struct ExtensionProperties
    extension_name::String
    spec_version::VersionNumber
end

struct PhysicalDeviceSparseProperties
    residency_standard_2_d_block_shape::Bool
    residency_standard_2_d_multisample_block_shape::Bool
    residency_standard_3_d_block_shape::Bool
    residency_aligned_mip_size::Bool
    residency_non_resident_strict::Bool
end

struct CopyAccelerationStructureInfoKHR
    src::Int32
    dst::Int32
    mode::Int32
    vk::VkCopyAccelerationStructureInfoKHR
end

struct TraceRaysIndirectCommandKHR
    width::Int32
    height::Int32
    depth::Int32
    vk::VkTraceRaysIndirectCommandKHR
end

struct StridedBufferRegionKHR
    buffer::Int32
    offset::Int32
    stride::Int32
    size::Int32
    vk::VkStridedBufferRegionKHR
end

struct AccelerationStructureVersionKHR
    version_data::Ptr{Int32}
    vk::VkAccelerationStructureVersionKHR
end

struct AccelerationStructureDeviceAddressInfoKHR
    acceleration_structure::Int32
    vk::VkAccelerationStructureDeviceAddressInfoKHR
end

struct PhysicalDeviceRayTracingFeaturesKHR
    ray_tracing::Int32
    ray_tracing_shader_group_handle_capture_replay::Int32
    ray_tracing_shader_group_handle_capture_replay_mixed::Int32
    ray_tracing_acceleration_structure_capture_replay::Int32
    ray_tracing_indirect_trace_rays::Int32
    ray_tracing_indirect_acceleration_structure_build::Int32
    ray_tracing_host_acceleration_structure_commands::Int32
    ray_query::Int32
    ray_tracing_primitive_culling::Int32
    vk::VkPhysicalDeviceRayTracingFeaturesKHR
end

struct AccelerationStructureCreateGeometryTypeInfoKHR
    geometry_type::Int32
    max_primitive_count::Int32
    index_type::Int32
    max_vertex_count::Int32
    vertex_format::Int32
    allows_transforms::Int32
    vk::VkAccelerationStructureCreateGeometryTypeInfoKHR
end

struct AccelerationStructureCreateInfoKHR
    compacted_size::Int32
    type::Int32
    geometry_infos::AccelerationStructureCreateGeometryTypeInfoKHR
    device_address::Int32
    vk::VkAccelerationStructureCreateInfoKHR
end

struct RayTracingPipelineInterfaceCreateInfoKHR
    max_payload_size::Int32
    max_attribute_size::Int32
    max_callable_size::Int32
    vk::VkRayTracingPipelineInterfaceCreateInfoKHR
end

struct RayTracingShaderGroupCreateInfoKHR
    type::Int32
    general_shader::Int32
    closest_hit_shader::Int32
    any_hit_shader::Int32
    intersection_shader::Int32
    shader_group_capture_replay_handle::Ptr{Cvoid}
    vk::VkRayTracingShaderGroupCreateInfoKHR
end

struct AccelerationStructureBuildOffsetInfoKHR
    primitive_count::Int32
    primitive_offset::Int32
    first_vertex::Int32
    transform_offset::Int32
    vk::VkAccelerationStructureBuildOffsetInfoKHR
end

struct DeviceOrHostAddressConstKHR
    host_address::Ptr{Cvoid}
    vk::VkDeviceOrHostAddressConstKHR
end

struct CopyMemoryToAccelerationStructureInfoKHR
    src::DeviceOrHostAddressConstKHR
    dst::Int32
    mode::Int32
    vk::VkCopyMemoryToAccelerationStructureInfoKHR
end

struct AccelerationStructureGeometryInstancesDataKHR
    array_of_pointers::Int32
    data::DeviceOrHostAddressConstKHR
    vk::VkAccelerationStructureGeometryInstancesDataKHR
end

struct AccelerationStructureGeometryAabbsDataKHR
    data::DeviceOrHostAddressConstKHR
    stride::Int32
    vk::VkAccelerationStructureGeometryAabbsDataKHR
end

struct AccelerationStructureGeometryTrianglesDataKHR
    vertex_format::Int32
    vertex_data::DeviceOrHostAddressConstKHR
    vertex_stride::Int32
    index_type::Int32
    index_data::DeviceOrHostAddressConstKHR
    transform_data::DeviceOrHostAddressConstKHR
    vk::VkAccelerationStructureGeometryTrianglesDataKHR
end

struct AccelerationStructureGeometryDataKHR
    triangles::AccelerationStructureGeometryTrianglesDataKHR
    vk::VkAccelerationStructureGeometryDataKHR
end

struct AccelerationStructureGeometryKHR
    geometry_type::Int32
    geometry::AccelerationStructureGeometryDataKHR
    vk::VkAccelerationStructureGeometryKHR
end

struct DeviceOrHostAddressKHR
    host_address::Ptr{Cvoid}
    vk::VkDeviceOrHostAddressKHR
end

struct CopyAccelerationStructureToMemoryInfoKHR
    src::Int32
    dst::DeviceOrHostAddressKHR
    mode::Int32
    vk::VkCopyAccelerationStructureToMemoryInfoKHR
end

struct AccelerationStructureBuildGeometryInfoKHR
    type::Int32
    update::Int32
    src_acceleration_structure::Int32
    dst_acceleration_structure::Int32
    geometry_array_of_pointers::Int32
    geometry_count::Int32
    geometries::AbstractArray{AccelerationStructureGeometryKHR}
    scratch_data::DeviceOrHostAddressKHR
    vk::VkAccelerationStructureBuildGeometryInfoKHR
end

struct PipelineLibraryCreateInfoKHR
    libraries::Ptr{Int32}
    vk::VkPipelineLibraryCreateInfoKHR
end

struct RayTracingPipelineCreateInfoKHR
    stages::Ptr{Int32}
    groups::RayTracingShaderGroupCreateInfoKHR
    max_recursion_depth::Int32
    libraries::PipelineLibraryCreateInfoKHR
    library_interface::RayTracingPipelineInterfaceCreateInfoKHR
    layout::Int32
    base_pipeline_handle::Int32
    base_pipeline_index::Int32
    vk::VkRayTracingPipelineCreateInfoKHR
end

struct DeferredOperationInfoKHR
    operation_handle::Int32
    vk::VkDeferredOperationInfoKHR
end

struct PhysicalDevice4444FormatsFeaturesEXT
    format_a4r4g4b4::Bool
    format_a4b4g4r4::Bool
    vk::VkPhysicalDevice4444FormatsFeaturesEXT
end

struct PhysicalDeviceImageRobustnessFeaturesEXT
    robust_image_access::Bool
    vk::VkPhysicalDeviceImageRobustnessFeaturesEXT
end

struct PhysicalDeviceFragmentDensityMap2FeaturesEXT
    fragment_density_map_deferred::Bool
    vk::VkPhysicalDeviceFragmentDensityMap2FeaturesEXT
end

struct DeviceDiagnosticsConfigCreateInfoNV
    vk::VkDeviceDiagnosticsConfigCreateInfoNV
end

struct PhysicalDeviceDiagnosticsConfigFeaturesNV
    diagnostics_config::Bool
    vk::VkPhysicalDeviceDiagnosticsConfigFeaturesNV
end

struct PhysicalDevicePipelineCreationCacheControlFeaturesEXT
    pipeline_creation_cache_control::Bool
    vk::VkPhysicalDevicePipelineCreationCacheControlFeaturesEXT
end

struct PrivateDataSlotCreateInfoEXT
    vk::VkPrivateDataSlotCreateInfoEXT
end

struct DevicePrivateDataCreateInfoEXT
    private_data_slot_request_count::UInt32
    vk::VkDevicePrivateDataCreateInfoEXT
end

struct PhysicalDevicePrivateDataFeaturesEXT
    private_data::Bool
    vk::VkPhysicalDevicePrivateDataFeaturesEXT
end

struct PhysicalDeviceCustomBorderColorFeaturesEXT
    custom_border_colors::Bool
    custom_border_color_without_format::Bool
    vk::VkPhysicalDeviceCustomBorderColorFeaturesEXT
end

struct PhysicalDeviceRobustness2FeaturesEXT
    robust_buffer_access_2::Bool
    robust_image_access_2::Bool
    null_descriptor::Bool
    vk::VkPhysicalDeviceRobustness2FeaturesEXT
end

struct PhysicalDeviceTexelBufferAlignmentFeaturesEXT
    texel_buffer_alignment::Bool
    vk::VkPhysicalDeviceTexelBufferAlignmentFeaturesEXT
end

struct SetStateFlagsIndirectCommandNV
    data::UInt32
    vk::VkSetStateFlagsIndirectCommandNV
end

struct BindShaderGroupIndirectCommandNV
    group_index::UInt32
    vk::VkBindShaderGroupIndirectCommandNV
end

struct PhysicalDeviceDeviceGeneratedCommandsFeaturesNV
    device_generated_commands::Bool
    vk::VkPhysicalDeviceDeviceGeneratedCommandsFeaturesNV
end

struct PhysicalDeviceShaderDemoteToHelperInvocationFeaturesEXT
    shader_demote_to_helper_invocation::Bool
    vk::VkPhysicalDeviceShaderDemoteToHelperInvocationFeaturesEXT
end

struct PhysicalDeviceExtendedDynamicStateFeaturesEXT
    extended_dynamic_state::Bool
    vk::VkPhysicalDeviceExtendedDynamicStateFeaturesEXT
end

struct PhysicalDeviceIndexTypeUint8FeaturesEXT
    index_type_uint_8::Bool
    vk::VkPhysicalDeviceIndexTypeUint8FeaturesEXT
end

struct PhysicalDeviceShaderAtomicFloatFeaturesEXT
    shader_buffer_float_32_atomics::Bool
    shader_buffer_float_32_atomic_add::Bool
    shader_buffer_float_64_atomics::Bool
    shader_buffer_float_64_atomic_add::Bool
    shader_shared_float_32_atomics::Bool
    shader_shared_float_32_atomic_add::Bool
    shader_shared_float_64_atomics::Bool
    shader_shared_float_64_atomic_add::Bool
    shader_image_float_32_atomics::Bool
    shader_image_float_32_atomic_add::Bool
    sparse_image_float_32_atomics::Bool
    sparse_image_float_32_atomic_add::Bool
    vk::VkPhysicalDeviceShaderAtomicFloatFeaturesEXT
end

struct PhysicalDeviceLineRasterizationFeaturesEXT
    rectangular_lines::Bool
    bresenham_lines::Bool
    smooth_lines::Bool
    stippled_rectangular_lines::Bool
    stippled_bresenham_lines::Bool
    stippled_smooth_lines::Bool
    vk::VkPhysicalDeviceLineRasterizationFeaturesEXT
end

struct HeadlessSurfaceCreateInfoEXT
    vk::VkHeadlessSurfaceCreateInfoEXT
end

struct PhysicalDeviceYcbcrImageArraysFeaturesEXT
    ycbcr_image_arrays::Bool
    vk::VkPhysicalDeviceYcbcrImageArraysFeaturesEXT
end

struct PhysicalDeviceFragmentShaderInterlockFeaturesEXT
    fragment_shader_sample_interlock::Bool
    fragment_shader_pixel_interlock::Bool
    fragment_shader_shading_rate_interlock::Bool
    vk::VkPhysicalDeviceFragmentShaderInterlockFeaturesEXT
end

struct PhysicalDeviceCoverageReductionModeFeaturesNV
    coverage_reduction_mode::Bool
    vk::VkPhysicalDeviceCoverageReductionModeFeaturesNV
end

struct PhysicalDeviceCooperativeMatrixFeaturesNV
    cooperative_matrix::Bool
    cooperative_matrix_robust_buffer_access::Bool
    vk::VkPhysicalDeviceCooperativeMatrixFeaturesNV
end

struct PhysicalDeviceBufferDeviceAddressFeaturesEXT
    buffer_device_address::Bool
    buffer_device_address_capture_replay::Bool
    buffer_device_address_multi_device::Bool
    vk::VkPhysicalDeviceBufferDeviceAddressFeaturesEXT
end

struct PhysicalDeviceDedicatedAllocationImageAliasingFeaturesNV
    dedicated_allocation_image_aliasing::Bool
    vk::VkPhysicalDeviceDedicatedAllocationImageAliasingFeaturesNV
end

struct MemoryPriorityAllocateInfoEXT
    priority::Float32
    vk::VkMemoryPriorityAllocateInfoEXT
end

struct PhysicalDeviceMemoryPriorityFeaturesEXT
    memory_priority::Bool
    vk::VkPhysicalDeviceMemoryPriorityFeaturesEXT
end

struct PhysicalDeviceCoherentMemoryFeaturesAMD
    device_coherent_memory::Bool
    vk::VkPhysicalDeviceCoherentMemoryFeaturesAMD
end

struct PipelineShaderStageRequiredSubgroupSizeCreateInfoEXT
    required_subgroup_size::UInt32
    vk::VkPipelineShaderStageRequiredSubgroupSizeCreateInfoEXT
end

struct PhysicalDeviceSubgroupSizeControlFeaturesEXT
    subgroup_size_control::Bool
    compute_full_subgroups::Bool
    vk::VkPhysicalDeviceSubgroupSizeControlFeaturesEXT
end

struct PhysicalDeviceFragmentDensityMapFeaturesEXT
    fragment_density_map::Bool
    fragment_density_map_dynamic::Bool
    fragment_density_map_non_subsampled_images::Bool
    vk::VkPhysicalDeviceFragmentDensityMapFeaturesEXT
end

struct SwapchainDisplayNativeHdrCreateInfoAMD
    local_dimming_enable::Bool
    vk::VkSwapchainDisplayNativeHdrCreateInfoAMD
end

struct DisplayNativeHdrSurfaceCapabilitiesAMD
    local_dimming_support::Bool
    vk::VkDisplayNativeHdrSurfaceCapabilitiesAMD
end

struct PerformanceStreamMarkerInfoINTEL
    marker::UInt32
    vk::VkPerformanceStreamMarkerInfoINTEL
end

struct PerformanceMarkerInfoINTEL
    marker::UInt64
    vk::VkPerformanceMarkerInfoINTEL
end

struct InitializePerformanceApiInfoINTEL
    user_data::Ptr{Cvoid}
    vk::VkInitializePerformanceApiInfoINTEL
end

struct PerformanceValueDataINTEL
    value64::UInt64
    vk::VkPerformanceValueDataINTEL
end

struct PhysicalDeviceShaderIntegerFunctions2FeaturesINTEL
    shader_integer_functions_2::Bool
    vk::VkPhysicalDeviceShaderIntegerFunctions2FeaturesINTEL
end

struct PhysicalDeviceExclusiveScissorFeaturesNV
    exclusive_scissor::Bool
    vk::VkPhysicalDeviceExclusiveScissorFeaturesNV
end

struct PhysicalDeviceShaderImageFootprintFeaturesNV
    image_footprint::Bool
    vk::VkPhysicalDeviceShaderImageFootprintFeaturesNV
end

struct PhysicalDeviceFragmentShaderBarycentricFeaturesNV
    fragment_shader_barycentric::Bool
    vk::VkPhysicalDeviceFragmentShaderBarycentricFeaturesNV
end

struct DrawMeshTasksIndirectCommandNV
    task_count::UInt32
    first_task::UInt32
    vk::VkDrawMeshTasksIndirectCommandNV
end

struct PhysicalDeviceMeshShaderFeaturesNV
    task_shader::Bool
    mesh_shader::Bool
    vk::VkPhysicalDeviceMeshShaderFeaturesNV
end

struct PhysicalDeviceComputeShaderDerivativesFeaturesNV
    compute_derivative_group_quads::Bool
    compute_derivative_group_linear::Bool
    vk::VkPhysicalDeviceComputeShaderDerivativesFeaturesNV
end

struct PipelineCreationFeedbackEXT
    duration::UInt64
    vk::VkPipelineCreationFeedbackEXT
end

struct PipelineCreationFeedbackCreateInfoEXT
    pipeline_creation_feedback::PipelineCreationFeedbackEXT
    pipeline_stage_creation_feedbacks::PipelineCreationFeedbackEXT
    vk::VkPipelineCreationFeedbackCreateInfoEXT
end

struct PhysicalDeviceVertexAttributeDivisorFeaturesEXT
    vertex_attribute_instance_rate_divisor::Bool
    vertex_attribute_instance_rate_zero_divisor::Bool
    vk::VkPhysicalDeviceVertexAttributeDivisorFeaturesEXT
end

struct VertexInputBindingDivisorDescriptionEXT
    binding::UInt32
    divisor::UInt32
    vk::VkVertexInputBindingDivisorDescriptionEXT
end

struct PipelineVertexInputDivisorStateCreateInfoEXT
    vertex_binding_divisors::VertexInputBindingDivisorDescriptionEXT
    vk::VkPipelineVertexInputDivisorStateCreateInfoEXT
end

struct PipelineRepresentativeFragmentTestStateCreateInfoNV
    representative_fragment_test_enable::Bool
    vk::VkPipelineRepresentativeFragmentTestStateCreateInfoNV
end

struct PhysicalDeviceRepresentativeFragmentTestFeaturesNV
    representative_fragment_test::Bool
    vk::VkPhysicalDeviceRepresentativeFragmentTestFeaturesNV
end

struct AabbPositionsKHR
    min_x::Float32
    min_y::Float32
    min_z::Float32
    max_x::Float32
    max_y::Float32
    max_z::Float32
    vk::VkAabbPositionsKHR
end

struct TransformMatrixKHR
    matrix::NTuple{3,NTuple{4,Float32}}
    vk::VkTransformMatrixKHR
end

struct AccelerationStructureInstanceKHR
    transform::TransformMatrixKHR
    instance_custom_index::UInt32
    mask::UInt32
    instance_shader_binding_table_record_offset::UInt32
    acceleration_structure_reference::UInt64
    vk::VkAccelerationStructureInstanceKHR
end

struct CoarseSampleLocationNV
    pixel_x::UInt32
    pixel_y::UInt32
    sample::UInt32
    vk::VkCoarseSampleLocationNV
end

struct PhysicalDeviceShadingRateImageFeaturesNV
    shading_rate_image::Bool
    shading_rate_coarse_sample_order::Bool
    vk::VkPhysicalDeviceShadingRateImageFeaturesNV
end

struct ValidationCacheCreateInfoEXT
    initial_data::Ptr{Cvoid}
    vk::VkValidationCacheCreateInfoEXT
end

struct ImageDrmFormatModifierListCreateInfoEXT
    drm_format_modifiers::Ptr{UInt64}
    vk::VkImageDrmFormatModifierListCreateInfoEXT
end

struct PhysicalDeviceShaderSMBuiltinsFeaturesNV
    shader_sm_builtins::Bool
    vk::VkPhysicalDeviceShaderSMBuiltinsFeaturesNV
end

struct PipelineCoverageToColorStateCreateInfoNV
    coverage_to_color_enable::Bool
    coverage_to_color_location::UInt32
    vk::VkPipelineCoverageToColorStateCreateInfoNV
end

struct PhysicalDeviceBlendOperationAdvancedFeaturesEXT
    advanced_blend_coherent_operations::Bool
    vk::VkPhysicalDeviceBlendOperationAdvancedFeaturesEXT
end

struct SampleLocationEXT
    x::Float32
    y::Float32
    vk::VkSampleLocationEXT
end

struct DescriptorPoolInlineUniformBlockCreateInfoEXT
    max_inline_uniform_block_bindings::UInt32
    vk::VkDescriptorPoolInlineUniformBlockCreateInfoEXT
end

struct WriteDescriptorSetInlineUniformBlockEXT
    data::Ptr{Cvoid}
    vk::VkWriteDescriptorSetInlineUniformBlockEXT
end

struct PhysicalDeviceInlineUniformBlockFeaturesEXT
    inline_uniform_block::Bool
    descriptor_binding_inline_uniform_block_update_after_bind::Bool
    vk::VkPhysicalDeviceInlineUniformBlockFeaturesEXT
end

struct DebugUtilsLabelEXT
    label_name::String
    color::NTuple{4,Float32}
    vk::VkDebugUtilsLabelEXT
end

struct XYColorEXT
    x::Float32
    y::Float32
    vk::VkXYColorEXT
end

struct HdrMetadataEXT
    display_primary_red::XYColorEXT
    display_primary_green::XYColorEXT
    display_primary_blue::XYColorEXT
    white_point::XYColorEXT
    max_luminance::Float32
    min_luminance::Float32
    max_content_light_level::Float32
    max_frame_average_light_level::Float32
    vk::VkHdrMetadataEXT
end

struct PipelineRasterizationDepthClipStateCreateInfoEXT
    depth_clip_enable::Bool
    vk::VkPipelineRasterizationDepthClipStateCreateInfoEXT
end

struct PhysicalDeviceDepthClipEnableFeaturesEXT
    depth_clip_enable::Bool
    vk::VkPhysicalDeviceDepthClipEnableFeaturesEXT
end

struct PresentTimeGOOGLE
    present_id::UInt32
    desired_present_time::UInt64
    vk::VkPresentTimeGOOGLE
end

struct PresentTimesInfoGOOGLE
    times::PresentTimeGOOGLE
    vk::VkPresentTimesInfoGOOGLE
end

struct RefreshCycleDurationGOOGLE
    refresh_duration::UInt64
    vk::VkRefreshCycleDurationGOOGLE
end

struct ViewportWScalingNV
    xcoeff::Float32
    ycoeff::Float32
    vk::VkViewportWScalingNV
end

struct PipelineViewportWScalingStateCreateInfoNV
    viewport_w_scaling_enable::Bool
    viewport_w_scalings::ViewportWScalingNV
    vk::VkPipelineViewportWScalingStateCreateInfoNV
end

struct CommandBufferInheritanceConditionalRenderingInfoEXT
    conditional_rendering_enable::Bool
    vk::VkCommandBufferInheritanceConditionalRenderingInfoEXT
end

struct PhysicalDeviceConditionalRenderingFeaturesEXT
    conditional_rendering::Bool
    inherited_conditional_rendering::Bool
    vk::VkPhysicalDeviceConditionalRenderingFeaturesEXT
end

struct PhysicalDeviceASTCDecodeFeaturesEXT
    decode_mode_shared_exponent::Bool
    vk::VkPhysicalDeviceASTCDecodeFeaturesEXT
end

struct PhysicalDeviceTextureCompressionASTCHDRFeaturesEXT
    texture_compression_astc_hdr::Bool
    vk::VkPhysicalDeviceTextureCompressionASTCHDRFeaturesEXT
end

struct PhysicalDeviceCornerSampledImageFeaturesNV
    corner_sampled_image::Bool
    vk::VkPhysicalDeviceCornerSampledImageFeaturesNV
end

struct ShaderResourceUsageAMD
    num_used_vgprs::UInt32
    num_used_sgprs::UInt32
    lds_size_per_local_work_group::UInt32
    lds_usage_size_in_bytes::UInt
    scratch_mem_usage_in_bytes::UInt
    vk::VkShaderResourceUsageAMD
end

struct PipelineRasterizationStateStreamCreateInfoEXT
    rasterization_stream::UInt32
    vk::VkPipelineRasterizationStateStreamCreateInfoEXT
end

struct PhysicalDeviceTransformFeedbackFeaturesEXT
    transform_feedback::Bool
    geometry_streams::Bool
    vk::VkPhysicalDeviceTransformFeedbackFeaturesEXT
end

struct DedicatedAllocationBufferCreateInfoNV
    dedicated_allocation::Bool
    vk::VkDedicatedAllocationBufferCreateInfoNV
end

struct DedicatedAllocationImageCreateInfoNV
    dedicated_allocation::Bool
    vk::VkDedicatedAllocationImageCreateInfoNV
end

struct DebugMarkerMarkerInfoEXT
    marker_name::String
    color::NTuple{4,Float32}
    vk::VkDebugMarkerMarkerInfoEXT
end

struct DebugReportCallbackCreateInfoEXT
    callback::Function
    user_data::Ptr{Cvoid}
    vk::VkDebugReportCallbackCreateInfoEXT
end

struct PipelineExecutableStatisticValueKHR
    i64::Int64
    vk::VkPipelineExecutableStatisticValueKHR
end

struct SurfaceProtectedCapabilitiesKHR
    supports_protected::Bool
    vk::VkSurfaceProtectedCapabilitiesKHR
end

struct PhysicalDeviceShaderClockFeaturesKHR
    shader_subgroup_clock::Bool
    shader_device_clock::Bool
    vk::VkPhysicalDeviceShaderClockFeaturesKHR
end

struct PerformanceQuerySubmitInfoKHR
    counter_pass_index::UInt32
    vk::VkPerformanceQuerySubmitInfoKHR
end

struct AcquireProfilingLockInfoKHR
    timeout::UInt64
    vk::VkAcquireProfilingLockInfoKHR
end

struct PerformanceCounterResultKHR
    int64::Int64
    vk::VkPerformanceCounterResultKHR
end

struct QueryPoolPerformanceCreateInfoKHR
    queue_family_index::UInt32
    counter_indices::Ptr{UInt32}
    vk::VkQueryPoolPerformanceCreateInfoKHR
end

struct PerformanceCounterDescriptionKHR
    name::String
    category::String
    description::String
    vk::VkPerformanceCounterDescriptionKHR
end

struct PhysicalDevicePerformanceQueryFeaturesKHR
    performance_counter_query_pools::Bool
    performance_counter_multiple_query_pools::Bool
    vk::VkPhysicalDevicePerformanceQueryFeaturesKHR
end

struct MemoryOpaqueCaptureAddressAllocateInfo
    opaque_capture_address::UInt64
    vk::VkMemoryOpaqueCaptureAddressAllocateInfo
end

struct BufferOpaqueCaptureAddressCreateInfo
    opaque_capture_address::UInt64
    vk::VkBufferOpaqueCaptureAddressCreateInfo
end

struct PhysicalDeviceBufferDeviceAddressFeatures
    buffer_device_address::Bool
    buffer_device_address_capture_replay::Bool
    buffer_device_address_multi_device::Bool
    vk::VkPhysicalDeviceBufferDeviceAddressFeatures
end

struct TimelineSemaphoreSubmitInfo
    wait_semaphore_values::Ptr{UInt64}
    signal_semaphore_values::Ptr{UInt64}
    vk::VkTimelineSemaphoreSubmitInfo
end

struct PhysicalDeviceTimelineSemaphoreFeatures
    timeline_semaphore::Bool
    vk::VkPhysicalDeviceTimelineSemaphoreFeatures
end

struct PhysicalDeviceHostQueryResetFeatures
    host_query_reset::Bool
    vk::VkPhysicalDeviceHostQueryResetFeatures
end

struct PhysicalDeviceSeparateDepthStencilLayoutsFeatures
    separate_depth_stencil_layouts::Bool
    vk::VkPhysicalDeviceSeparateDepthStencilLayoutsFeatures
end

struct PhysicalDeviceShaderSubgroupExtendedTypesFeatures
    shader_subgroup_extended_types::Bool
    vk::VkPhysicalDeviceShaderSubgroupExtendedTypesFeatures
end

struct PhysicalDeviceUniformBufferStandardLayoutFeatures
    uniform_buffer_standard_layout::Bool
    vk::VkPhysicalDeviceUniformBufferStandardLayoutFeatures
end

struct PhysicalDeviceImagelessFramebufferFeatures
    imageless_framebuffer::Bool
    vk::VkPhysicalDeviceImagelessFramebufferFeatures
end

struct PhysicalDeviceVulkanMemoryModelFeatures
    vulkan_memory_model::Bool
    vulkan_memory_model_device_scope::Bool
    vulkan_memory_model_availability_visibility_chains::Bool
    vk::VkPhysicalDeviceVulkanMemoryModelFeatures
end

struct PhysicalDeviceScalarBlockLayoutFeatures
    scalar_block_layout::Bool
    vk::VkPhysicalDeviceScalarBlockLayoutFeatures
end

struct DescriptorSetVariableDescriptorCountLayoutSupport
    max_variable_descriptor_count::UInt32
    vk::VkDescriptorSetVariableDescriptorCountLayoutSupport
end

struct DescriptorSetVariableDescriptorCountAllocateInfo
    descriptor_counts::Ptr{UInt32}
    vk::VkDescriptorSetVariableDescriptorCountAllocateInfo
end

struct PhysicalDeviceDescriptorIndexingFeatures
    shader_input_attachment_array_dynamic_indexing::Bool
    shader_uniform_texel_buffer_array_dynamic_indexing::Bool
    shader_storage_texel_buffer_array_dynamic_indexing::Bool
    shader_uniform_buffer_array_non_uniform_indexing::Bool
    shader_sampled_image_array_non_uniform_indexing::Bool
    shader_storage_buffer_array_non_uniform_indexing::Bool
    shader_storage_image_array_non_uniform_indexing::Bool
    shader_input_attachment_array_non_uniform_indexing::Bool
    shader_uniform_texel_buffer_array_non_uniform_indexing::Bool
    shader_storage_texel_buffer_array_non_uniform_indexing::Bool
    descriptor_binding_uniform_buffer_update_after_bind::Bool
    descriptor_binding_sampled_image_update_after_bind::Bool
    descriptor_binding_storage_image_update_after_bind::Bool
    descriptor_binding_storage_buffer_update_after_bind::Bool
    descriptor_binding_uniform_texel_buffer_update_after_bind::Bool
    descriptor_binding_storage_texel_buffer_update_after_bind::Bool
    descriptor_binding_update_unused_while_pending::Bool
    descriptor_binding_partially_bound::Bool
    descriptor_binding_variable_descriptor_count::Bool
    runtime_descriptor_array::Bool
    vk::VkPhysicalDeviceDescriptorIndexingFeatures
end

struct PhysicalDeviceShaderFloat16Int8Features
    shader_float_16::Bool
    shader_int_8::Bool
    vk::VkPhysicalDeviceShaderFloat16Int8Features
end

struct PhysicalDeviceShaderAtomicInt64Features
    shader_buffer_int_64_atomics::Bool
    shader_shared_int_64_atomics::Bool
    vk::VkPhysicalDeviceShaderAtomicInt64Features
end

struct PhysicalDevice8BitStorageFeatures
    storage_buffer_8_bit_access::Bool
    uniform_and_storage_buffer_8_bit_access::Bool
    storage_push_constant_8::Bool
    vk::VkPhysicalDevice8BitStorageFeatures
end

struct SubpassEndInfo
    vk::VkSubpassEndInfo
end

struct ConformanceVersion
    major::UInt8
    minor::UInt8
    subminor::UInt8
    patch::UInt8
    vk::VkConformanceVersion
end

struct PhysicalDeviceVulkan12Features
    sampler_mirror_clamp_to_edge::Bool
    draw_indirect_count::Bool
    storage_buffer_8_bit_access::Bool
    uniform_and_storage_buffer_8_bit_access::Bool
    storage_push_constant_8::Bool
    shader_buffer_int_64_atomics::Bool
    shader_shared_int_64_atomics::Bool
    shader_float_16::Bool
    shader_int_8::Bool
    descriptor_indexing::Bool
    shader_input_attachment_array_dynamic_indexing::Bool
    shader_uniform_texel_buffer_array_dynamic_indexing::Bool
    shader_storage_texel_buffer_array_dynamic_indexing::Bool
    shader_uniform_buffer_array_non_uniform_indexing::Bool
    shader_sampled_image_array_non_uniform_indexing::Bool
    shader_storage_buffer_array_non_uniform_indexing::Bool
    shader_storage_image_array_non_uniform_indexing::Bool
    shader_input_attachment_array_non_uniform_indexing::Bool
    shader_uniform_texel_buffer_array_non_uniform_indexing::Bool
    shader_storage_texel_buffer_array_non_uniform_indexing::Bool
    descriptor_binding_uniform_buffer_update_after_bind::Bool
    descriptor_binding_sampled_image_update_after_bind::Bool
    descriptor_binding_storage_image_update_after_bind::Bool
    descriptor_binding_storage_buffer_update_after_bind::Bool
    descriptor_binding_uniform_texel_buffer_update_after_bind::Bool
    descriptor_binding_storage_texel_buffer_update_after_bind::Bool
    descriptor_binding_update_unused_while_pending::Bool
    descriptor_binding_partially_bound::Bool
    descriptor_binding_variable_descriptor_count::Bool
    runtime_descriptor_array::Bool
    sampler_filter_minmax::Bool
    scalar_block_layout::Bool
    imageless_framebuffer::Bool
    uniform_buffer_standard_layout::Bool
    shader_subgroup_extended_types::Bool
    separate_depth_stencil_layouts::Bool
    host_query_reset::Bool
    timeline_semaphore::Bool
    buffer_device_address::Bool
    buffer_device_address_capture_replay::Bool
    buffer_device_address_multi_device::Bool
    vulkan_memory_model::Bool
    vulkan_memory_model_device_scope::Bool
    vulkan_memory_model_availability_visibility_chains::Bool
    shader_output_viewport_index::Bool
    shader_output_layer::Bool
    subgroup_broadcast_dynamic_id::Bool
    vk::VkPhysicalDeviceVulkan12Features
end

struct PhysicalDeviceVulkan11Features
    storage_buffer_16_bit_access::Bool
    uniform_and_storage_buffer_16_bit_access::Bool
    storage_push_constant_16::Bool
    storage_input_output_16::Bool
    multiview::Bool
    multiview_geometry_shader::Bool
    multiview_tessellation_shader::Bool
    variable_pointers_storage_buffer::Bool
    variable_pointers::Bool
    protected_memory::Bool
    sampler_ycbcr_conversion::Bool
    shader_draw_parameters::Bool
    vk::VkPhysicalDeviceVulkan11Features
end

struct PhysicalDeviceShaderDrawParametersFeatures
    shader_draw_parameters::Bool
    vk::VkPhysicalDeviceShaderDrawParametersFeatures
end

struct DescriptorSetLayoutSupport
    supported::Bool
    vk::VkDescriptorSetLayoutSupport
end

struct PhysicalDeviceSamplerYcbcrConversionFeatures
    sampler_ycbcr_conversion::Bool
    vk::VkPhysicalDeviceSamplerYcbcrConversionFeatures
end

struct ProtectedSubmitInfo
    protected_submit::Bool
    vk::VkProtectedSubmitInfo
end

struct DeviceQueueInfo2
    queue_family_index::UInt32
    queue_index::UInt32
    vk::VkDeviceQueueInfo2
end

struct PhysicalDeviceProtectedMemoryFeatures
    protected_memory::Bool
    vk::VkPhysicalDeviceProtectedMemoryFeatures
end

struct PhysicalDeviceVariablePointersFeatures
    variable_pointers_storage_buffer::Bool
    variable_pointers::Bool
    vk::VkPhysicalDeviceVariablePointersFeatures
end

struct PhysicalDeviceMultiviewFeatures
    multiview::Bool
    multiview_geometry_shader::Bool
    multiview_tessellation_shader::Bool
    vk::VkPhysicalDeviceMultiviewFeatures
end

struct RenderPassMultiviewCreateInfo
    view_masks::Ptr{UInt32}
    view_offsets::Ptr{Int32}
    correlation_masks::Ptr{UInt32}
    vk::VkRenderPassMultiviewCreateInfo
end

struct BindBufferMemoryDeviceGroupInfo
    device_indices::Ptr{UInt32}
    vk::VkBindBufferMemoryDeviceGroupInfo
end

struct DeviceGroupBindSparseInfo
    resource_device_index::UInt32
    memory_device_index::UInt32
    vk::VkDeviceGroupBindSparseInfo
end

struct DeviceGroupSubmitInfo
    wait_semaphore_device_indices::Ptr{UInt32}
    command_buffer_device_masks::Ptr{UInt32}
    signal_semaphore_device_indices::Ptr{UInt32}
    vk::VkDeviceGroupSubmitInfo
end

struct DeviceGroupCommandBufferBeginInfo
    device_mask::UInt32
    vk::VkDeviceGroupCommandBufferBeginInfo
end

struct MemoryAllocateFlagsInfo
    device_mask::UInt32
    vk::VkMemoryAllocateFlagsInfo
end

struct MemoryDedicatedRequirements
    prefers_dedicated_allocation::Bool
    requires_dedicated_allocation::Bool
    vk::VkMemoryDedicatedRequirements
end

struct PhysicalDevice16BitStorageFeatures
    storage_buffer_16_bit_access::Bool
    uniform_and_storage_buffer_16_bit_access::Bool
    storage_push_constant_16::Bool
    storage_input_output_16::Bool
    vk::VkPhysicalDevice16BitStorageFeatures
end

struct ClearDepthStencilValue
    depth::Float32
    stencil::UInt32
    vk::VkClearDepthStencilValue
end

struct ClearColorValue
    float32::NTuple{4,Float32}
    vk::VkClearColorValue
end

struct ClearValue
    color::ClearColorValue
    vk::VkClearValue
end

struct CommandPoolCreateInfo
    queue_family_index::UInt32
    vk::VkCommandPoolCreateInfo
end

struct Viewport
    x::Float32
    y::Float32
    width::Float32
    height::Float32
    min_depth::Float32
    max_depth::Float32
    vk::VkViewport
end

struct PipelineTessellationStateCreateInfo
    patch_control_points::UInt32
    vk::VkPipelineTessellationStateCreateInfo
end

struct SpecializationMapEntry
    constant_id::UInt32
    offset::UInt32
    size::UInt
    vk::VkSpecializationMapEntry
end

struct SpecializationInfo
    map_entries::SpecializationMapEntry
    data::Ptr{Cvoid}
    vk::VkSpecializationInfo
end

struct PipelineCacheCreateInfo
    initial_data::Ptr{Cvoid}
    vk::VkPipelineCacheCreateInfo
end

struct ShaderModuleCreateInfo
    code::Ptr{UInt32}
    vk::VkShaderModuleCreateInfo
end

struct EventCreateInfo
    vk::VkEventCreateInfo
end

struct SemaphoreCreateInfo
    vk::VkSemaphoreCreateInfo
end

struct FenceCreateInfo
    vk::VkFenceCreateInfo
end

struct DeviceQueueCreateInfo
    queue_family_index::UInt32
    queue_priorities::Ptr{Float32}
    vk::VkDeviceQueueCreateInfo
end

struct PhysicalDeviceFeatures
    robust_buffer_access::Bool
    full_draw_index_uint_32::Bool
    image_cube_array::Bool
    independent_blend::Bool
    geometry_shader::Bool
    tessellation_shader::Bool
    sample_rate_shading::Bool
    dual_src_blend::Bool
    logic_op::Bool
    multi_draw_indirect::Bool
    draw_indirect_first_instance::Bool
    depth_clamp::Bool
    depth_bias_clamp::Bool
    fill_mode_non_solid::Bool
    depth_bounds::Bool
    wide_lines::Bool
    large_points::Bool
    alpha_to_one::Bool
    multi_viewport::Bool
    sampler_anisotropy::Bool
    texture_compression_etc_2::Bool
    texture_compression_astc_ldr::Bool
    texture_compression_bc::Bool
    occlusion_query_precise::Bool
    pipeline_statistics_query::Bool
    vertex_pipeline_stores_and_atomics::Bool
    fragment_stores_and_atomics::Bool
    shader_tessellation_and_geometry_point_size::Bool
    shader_image_gather_extended::Bool
    shader_storage_image_extended_formats::Bool
    shader_storage_image_multisample::Bool
    shader_storage_image_read_without_format::Bool
    shader_storage_image_write_without_format::Bool
    shader_uniform_buffer_array_dynamic_indexing::Bool
    shader_sampled_image_array_dynamic_indexing::Bool
    shader_storage_buffer_array_dynamic_indexing::Bool
    shader_storage_image_array_dynamic_indexing::Bool
    shader_clip_distance::Bool
    shader_cull_distance::Bool
    shader_float_64::Bool
    shader_int_64::Bool
    shader_int_16::Bool
    shader_resource_residency::Bool
    shader_resource_min_lod::Bool
    sparse_binding::Bool
    sparse_residency_buffer::Bool
    sparse_residency_image_2_d::Bool
    sparse_residency_image_3_d::Bool
    sparse_residency_2_samples::Bool
    sparse_residency_4_samples::Bool
    sparse_residency_8_samples::Bool
    sparse_residency_16_samples::Bool
    sparse_residency_aliased::Bool
    variable_multisample_rate::Bool
    inherited_queries::Bool
    vk::VkPhysicalDeviceFeatures
end

struct PhysicalDeviceFeatures2
    features::PhysicalDeviceFeatures
    vk::VkPhysicalDeviceFeatures2
end

struct DeviceCreateInfo
    queue_create_infos::DeviceQueueCreateInfo
    enabled_layer_names::Union{<:AbstractArray,Ptr{Cvoid}}
    enabled_extension_names::Union{<:AbstractArray,Ptr{Cvoid}}
    enabled_features::PhysicalDeviceFeatures
    vk::VkDeviceCreateInfo
end

struct ApplicationInfo
    application_name::String
    application_version::VersionNumber
    engine_name::String
    engine_version::VersionNumber
    api_version::VersionNumber
    vk::VkApplicationInfo
end

struct InstanceCreateInfo
    application_info::ApplicationInfo
    enabled_layer_names::Union{<:AbstractArray,Ptr{Cvoid}}
    enabled_extension_names::Union{<:AbstractArray,Ptr{Cvoid}}
    vk::VkInstanceCreateInfo
end

struct AllocationCallbacks
    user_data::Ptr{Cvoid}
    allocation::Function
    reallocation::Function
    free::Function
    internal_allocation::Function
    internal_free::Function
    vk::VkAllocationCallbacks
end

struct DrawIndirectCommand
    vertex_count::UInt32
    instance_count::UInt32
    first_vertex::UInt32
    first_instance::UInt32
    vk::VkDrawIndirectCommand
end

struct DrawIndexedIndirectCommand
    index_count::UInt32
    instance_count::UInt32
    first_index::UInt32
    vertex_offset::Int32
    first_instance::UInt32
    vk::VkDrawIndexedIndirectCommand
end

struct DispatchIndirectCommand
    x::UInt32
    y::UInt32
    z::UInt32
    vk::VkDispatchIndirectCommand
end

struct Offset3D
    x::Int32
    y::Int32
    z::Int32
    vk::VkOffset3D
end

struct Offset2D
    x::Int32
    y::Int32
    vk::VkOffset2D
end

struct Extent3D
    width::UInt32
    height::UInt32
    depth::UInt32
    vk::VkExtent3D
end

struct Extent2D
    width::UInt32
    height::UInt32
    vk::VkExtent2D
end

struct PhysicalDeviceFragmentDensityMapPropertiesEXT
    min_fragment_density_texel_size::Extent2D
    max_fragment_density_texel_size::Extent2D
    fragment_density_invocations::Bool
end

struct PhysicalDeviceShadingRateImagePropertiesNV
    shading_rate_texel_size::Extent2D
    shading_rate_palette_size::UInt32
    shading_rate_max_coarse_samples::UInt32
end

struct MultisamplePropertiesEXT
    max_sample_location_grid_size::Extent2D
end

struct Rect2D
    offset::Offset2D
    extent::Extent2D
end

struct PipelineViewportExclusiveScissorStateCreateInfoNV
    exclusive_scissors::Rect2D
    vk::VkPipelineViewportExclusiveScissorStateCreateInfoNV
end

struct DisplayPresentInfoKHR
    src_rect::Rect2D
    dst_rect::Rect2D
    persistent::Bool
    vk::VkDisplayPresentInfoKHR
end

struct BindImageMemoryDeviceGroupInfo
    device_indices::Ptr{UInt32}
    split_instance_bind_regions::Rect2D
    vk::VkBindImageMemoryDeviceGroupInfo
end

struct DeviceGroupRenderPassBeginInfo
    device_mask::UInt32
    device_render_areas::Rect2D
    vk::VkDeviceGroupRenderPassBeginInfo
end

struct ClearRect
    rect::Rect2D
    base_array_layer::UInt32
    layer_count::UInt32
    vk::VkClearRect
end

struct PipelineViewportStateCreateInfo
    viewports::Viewport
    scissors::Rect2D
    vk::VkPipelineViewportStateCreateInfo
end

struct RectLayerKHR
    offset::Offset2D
    extent::Extent2D
    layer::UInt32
    vk::VkRectLayerKHR
end

struct PresentRegionKHR
    rectangles::RectLayerKHR
    vk::VkPresentRegionKHR
end

struct PresentRegionsKHR
    regions::PresentRegionKHR
    vk::VkPresentRegionsKHR
end

struct DisplayModeParametersKHR
    visible_region::Extent2D
    refresh_rate::UInt32
    vk::VkDisplayModeParametersKHR
end

struct DisplayModeCreateInfoKHR
    parameters::DisplayModeParametersKHR
    vk::VkDisplayModeCreateInfoKHR
end

@cenum AccelerationStructureBuildTypeKHR::UInt32 begin
    ACCELERATION_STRUCTURE_BUILD_TYPE_HOST_KHR = 0
    ACCELERATION_STRUCTURE_BUILD_TYPE_DEVICE_KHR = 1
    ACCELERATION_STRUCTURE_BUILD_TYPE_HOST_OR_DEVICE_KHR = 2
    ACCELERATION_STRUCTURE_BUILD_TYPE_MAX_ENUM_KHR = 2147483647
end
struct AccelerationStructureMemoryRequirementsInfoKHR
    type::Int32
    build_type::AccelerationStructureBuildTypeKHR
    acceleration_structure::Int32
    vk::VkAccelerationStructureMemoryRequirementsInfoKHR
end

@cenum DeviceDiagnosticsConfigFlagBitsNV::UInt32 begin
    DEVICE_DIAGNOSTICS_CONFIG_ENABLE_SHADER_DEBUG_INFO_BIT_NV = 1
    DEVICE_DIAGNOSTICS_CONFIG_ENABLE_RESOURCE_TRACKING_BIT_NV = 2
    DEVICE_DIAGNOSTICS_CONFIG_ENABLE_AUTOMATIC_CHECKPOINTS_BIT_NV = 4
    DEVICE_DIAGNOSTICS_CONFIG_FLAG_BITS_MAX_ENUM_NV = 2147483647
end
@cenum PrivateDataSlotCreateFlagBitsEXT::UInt32 begin
    PRIVATE_DATA_SLOT_CREATE_FLAG_BITS_MAX_ENUM_EXT = 2147483647
end
@cenum IndirectCommandsLayoutUsageFlagBitsNV::UInt32 begin
    INDIRECT_COMMANDS_LAYOUT_USAGE_EXPLICIT_PREPROCESS_BIT_NV = 1
    INDIRECT_COMMANDS_LAYOUT_USAGE_INDEXED_SEQUENCES_BIT_NV = 2
    INDIRECT_COMMANDS_LAYOUT_USAGE_UNORDERED_SEQUENCES_BIT_NV = 4
    INDIRECT_COMMANDS_LAYOUT_USAGE_FLAG_BITS_MAX_ENUM_NV = 2147483647
end
@cenum IndirectStateFlagBitsNV::UInt32 begin
    INDIRECT_STATE_FLAG_FRONTFACE_BIT_NV = 1
    INDIRECT_STATE_FLAG_BITS_MAX_ENUM_NV = 2147483647
end
@cenum IndirectCommandsTokenTypeNV::UInt32 begin
    INDIRECT_COMMANDS_TOKEN_TYPE_SHADER_GROUP_NV = 0
    INDIRECT_COMMANDS_TOKEN_TYPE_STATE_FLAGS_NV = 1
    INDIRECT_COMMANDS_TOKEN_TYPE_INDEX_BUFFER_NV = 2
    INDIRECT_COMMANDS_TOKEN_TYPE_VERTEX_BUFFER_NV = 3
    INDIRECT_COMMANDS_TOKEN_TYPE_PUSH_CONSTANT_NV = 4
    INDIRECT_COMMANDS_TOKEN_TYPE_DRAW_INDEXED_NV = 5
    INDIRECT_COMMANDS_TOKEN_TYPE_DRAW_NV = 6
    INDIRECT_COMMANDS_TOKEN_TYPE_DRAW_TASKS_NV = 7
    INDIRECT_COMMANDS_TOKEN_TYPE_MAX_ENUM_NV = 2147483647
end
@cenum LineRasterizationModeEXT::UInt32 begin
    LINE_RASTERIZATION_MODE_DEFAULT_EXT = 0
    LINE_RASTERIZATION_MODE_RECTANGULAR_EXT = 1
    LINE_RASTERIZATION_MODE_BRESENHAM_EXT = 2
    LINE_RASTERIZATION_MODE_RECTANGULAR_SMOOTH_EXT = 3
    LINE_RASTERIZATION_MODE_MAX_ENUM_EXT = 2147483647
end
struct PipelineRasterizationLineStateCreateInfoEXT
    line_rasterization_mode::LineRasterizationModeEXT
    stippled_line_enable::Bool
    line_stipple_factor::UInt32
    line_stipple_pattern::UInt16
    vk::VkPipelineRasterizationLineStateCreateInfoEXT
end

@cenum CoverageReductionModeNV::UInt32 begin
    COVERAGE_REDUCTION_MODE_MERGE_NV = 0
    COVERAGE_REDUCTION_MODE_TRUNCATE_NV = 1
    COVERAGE_REDUCTION_MODE_MAX_ENUM_NV = 2147483647
end
struct PipelineCoverageReductionStateCreateInfoNV
    coverage_reduction_mode::CoverageReductionModeNV
    vk::VkPipelineCoverageReductionStateCreateInfoNV
end

@cenum ScopeNV::UInt32 begin
    SCOPE_DEVICE_NV = 1
    SCOPE_WORKGROUP_NV = 2
    SCOPE_SUBGROUP_NV = 3
    SCOPE_QUEUE_FAMILY_NV = 5
    SCOPE_MAX_ENUM_NV = 2147483647
end
@cenum ComponentTypeNV::UInt32 begin
    COMPONENT_TYPE_FLOAT16_NV = 0
    COMPONENT_TYPE_FLOAT32_NV = 1
    COMPONENT_TYPE_FLOAT64_NV = 2
    COMPONENT_TYPE_SINT8_NV = 3
    COMPONENT_TYPE_SINT16_NV = 4
    COMPONENT_TYPE_SINT32_NV = 5
    COMPONENT_TYPE_SINT64_NV = 6
    COMPONENT_TYPE_UINT8_NV = 7
    COMPONENT_TYPE_UINT16_NV = 8
    COMPONENT_TYPE_UINT32_NV = 9
    COMPONENT_TYPE_UINT64_NV = 10
    COMPONENT_TYPE_MAX_ENUM_NV = 2147483647
end
struct CooperativeMatrixPropertiesNV
    m_size::UInt32
    n_size::UInt32
    k_size::UInt32
    a_type::ComponentTypeNV
    b_type::ComponentTypeNV
    c_type::ComponentTypeNV
    d_type::ComponentTypeNV
    scope::ScopeNV
end

@cenum ValidationFeatureDisableEXT::UInt32 begin
    VALIDATION_FEATURE_DISABLE_ALL_EXT = 0
    VALIDATION_FEATURE_DISABLE_SHADERS_EXT = 1
    VALIDATION_FEATURE_DISABLE_THREAD_SAFETY_EXT = 2
    VALIDATION_FEATURE_DISABLE_API_PARAMETERS_EXT = 3
    VALIDATION_FEATURE_DISABLE_OBJECT_LIFETIMES_EXT = 4
    VALIDATION_FEATURE_DISABLE_CORE_CHECKS_EXT = 5
    VALIDATION_FEATURE_DISABLE_UNIQUE_HANDLES_EXT = 6
    VALIDATION_FEATURE_DISABLE_MAX_ENUM_EXT = 2147483647
end
@cenum ValidationFeatureEnableEXT::UInt32 begin
    VALIDATION_FEATURE_ENABLE_GPU_ASSISTED_EXT = 0
    VALIDATION_FEATURE_ENABLE_GPU_ASSISTED_RESERVE_BINDING_SLOT_EXT = 1
    VALIDATION_FEATURE_ENABLE_BEST_PRACTICES_EXT = 2
    VALIDATION_FEATURE_ENABLE_DEBUG_PRINTF_EXT = 3
    VALIDATION_FEATURE_ENABLE_SYNCHRONIZATION_VALIDATION_EXT = 4
    VALIDATION_FEATURE_ENABLE_MAX_ENUM_EXT = 2147483647
end
struct ValidationFeaturesEXT
    enabled_validation_features::ValidationFeatureEnableEXT
    disabled_validation_features::ValidationFeatureDisableEXT
    vk::VkValidationFeaturesEXT
end

@cenum ToolPurposeFlagBitsEXT::UInt32 begin
    TOOL_PURPOSE_VALIDATION_BIT_EXT = 1
    TOOL_PURPOSE_PROFILING_BIT_EXT = 2
    TOOL_PURPOSE_TRACING_BIT_EXT = 4
    TOOL_PURPOSE_ADDITIONAL_FEATURES_BIT_EXT = 8
    TOOL_PURPOSE_MODIFYING_FEATURES_BIT_EXT = 16
    TOOL_PURPOSE_DEBUG_REPORTING_BIT_EXT = 32
    TOOL_PURPOSE_DEBUG_MARKERS_BIT_EXT = 64
    TOOL_PURPOSE_FLAG_BITS_MAX_ENUM_EXT = 2147483647
end
@cenum ShaderCorePropertiesFlagBitsAMD::UInt32 begin
    SHADER_CORE_PROPERTIES_FLAG_BITS_MAX_ENUM_AMD = 2147483647
end
@cenum PerformanceValueTypeINTEL::UInt32 begin
    PERFORMANCE_VALUE_TYPE_UINT32_INTEL = 0
    PERFORMANCE_VALUE_TYPE_UINT64_INTEL = 1
    PERFORMANCE_VALUE_TYPE_FLOAT_INTEL = 2
    PERFORMANCE_VALUE_TYPE_BOOL_INTEL = 3
    PERFORMANCE_VALUE_TYPE_STRING_INTEL = 4
    PERFORMANCE_VALUE_TYPE_MAX_ENUM_INTEL = 2147483647
end
struct PerformanceValueINTEL
    type::PerformanceValueTypeINTEL
    data::PerformanceValueDataINTEL
    vk::VkPerformanceValueINTEL
end

@cenum PerformanceParameterTypeINTEL::UInt32 begin
    PERFORMANCE_PARAMETER_TYPE_HW_COUNTERS_SUPPORTED_INTEL = 0
    PERFORMANCE_PARAMETER_TYPE_STREAM_MARKER_VALID_BITS_INTEL = 1
    PERFORMANCE_PARAMETER_TYPE_MAX_ENUM_INTEL = 2147483647
end
@cenum PerformanceOverrideTypeINTEL::UInt32 begin
    PERFORMANCE_OVERRIDE_TYPE_NULL_HARDWARE_INTEL = 0
    PERFORMANCE_OVERRIDE_TYPE_FLUSH_GPU_CACHES_INTEL = 1
    PERFORMANCE_OVERRIDE_TYPE_MAX_ENUM_INTEL = 2147483647
end
struct PerformanceOverrideInfoINTEL
    type::PerformanceOverrideTypeINTEL
    enable::Bool
    parameter::UInt64
    vk::VkPerformanceOverrideInfoINTEL
end

@cenum QueryPoolSamplingModeINTEL::UInt32 begin
    QUERY_POOL_SAMPLING_MODE_MANUAL_INTEL = 0
    QUERY_POOL_SAMPLING_MODE_MAX_ENUM_INTEL = 2147483647
end
struct QueryPoolPerformanceQueryCreateInfoINTEL
    performance_counters_sampling::QueryPoolSamplingModeINTEL
    vk::VkQueryPoolPerformanceQueryCreateInfoINTEL
end

@cenum PerformanceConfigurationTypeINTEL::UInt32 begin
    PERFORMANCE_CONFIGURATION_TYPE_COMMAND_QUEUE_METRICS_DISCOVERY_ACTIVATED_INTEL = 0
    PERFORMANCE_CONFIGURATION_TYPE_MAX_ENUM_INTEL = 2147483647
end
struct PerformanceConfigurationAcquireInfoINTEL
    type::PerformanceConfigurationTypeINTEL
    vk::VkPerformanceConfigurationAcquireInfoINTEL
end

@cenum PipelineCreationFeedbackFlagBitsEXT::UInt32 begin
    PIPELINE_CREATION_FEEDBACK_VALID_BIT_EXT = 1
    PIPELINE_CREATION_FEEDBACK_APPLICATION_PIPELINE_CACHE_HIT_BIT_EXT = 2
    PIPELINE_CREATION_FEEDBACK_BASE_PIPELINE_ACCELERATION_BIT_EXT = 4
    PIPELINE_CREATION_FEEDBACK_FLAG_BITS_MAX_ENUM_EXT = 2147483647
end
@cenum MemoryOverallocationBehaviorAMD::UInt32 begin
    MEMORY_OVERALLOCATION_BEHAVIOR_DEFAULT_AMD = 0
    MEMORY_OVERALLOCATION_BEHAVIOR_ALLOWED_AMD = 1
    MEMORY_OVERALLOCATION_BEHAVIOR_DISALLOWED_AMD = 2
    MEMORY_OVERALLOCATION_BEHAVIOR_MAX_ENUM_AMD = 2147483647
end
struct DeviceMemoryOverallocationCreateInfoAMD
    overallocation_behavior::MemoryOverallocationBehaviorAMD
    vk::VkDeviceMemoryOverallocationCreateInfoAMD
end

@cenum TimeDomainEXT::UInt32 begin
    TIME_DOMAIN_DEVICE_EXT = 0
    TIME_DOMAIN_CLOCK_MONOTONIC_EXT = 1
    TIME_DOMAIN_CLOCK_MONOTONIC_RAW_EXT = 2
    TIME_DOMAIN_QUERY_PERFORMANCE_COUNTER_EXT = 3
    TIME_DOMAIN_MAX_ENUM_EXT = 2147483647
end
struct CalibratedTimestampInfoEXT
    time_domain::TimeDomainEXT
    vk::VkCalibratedTimestampInfoEXT
end

@cenum PipelineCompilerControlFlagBitsAMD::UInt32 begin
    PIPELINE_COMPILER_CONTROL_FLAG_BITS_MAX_ENUM_AMD = 2147483647
end
@cenum QueueGlobalPriorityEXT::UInt32 begin
    QUEUE_GLOBAL_PRIORITY_LOW_EXT = 128
    QUEUE_GLOBAL_PRIORITY_MEDIUM_EXT = 256
    QUEUE_GLOBAL_PRIORITY_HIGH_EXT = 512
    QUEUE_GLOBAL_PRIORITY_REALTIME_EXT = 1024
    QUEUE_GLOBAL_PRIORITY_MAX_ENUM_EXT = 2147483647
end
struct DeviceQueueGlobalPriorityCreateInfoEXT
    global_priority::QueueGlobalPriorityEXT
    vk::VkDeviceQueueGlobalPriorityCreateInfoEXT
end

@cenum BuildAccelerationStructureFlagBitsKHR::UInt32 begin
    BUILD_ACCELERATION_STRUCTURE_ALLOW_UPDATE_BIT_KHR = 1
    BUILD_ACCELERATION_STRUCTURE_ALLOW_COMPACTION_BIT_KHR = 2
    BUILD_ACCELERATION_STRUCTURE_PREFER_FAST_TRACE_BIT_KHR = 4
    BUILD_ACCELERATION_STRUCTURE_PREFER_FAST_BUILD_BIT_KHR = 8
    BUILD_ACCELERATION_STRUCTURE_LOW_MEMORY_BIT_KHR = 16
    BUILD_ACCELERATION_STRUCTURE_ALLOW_UPDATE_BIT_NV = 1
    BUILD_ACCELERATION_STRUCTURE_ALLOW_COMPACTION_BIT_NV = 2
    BUILD_ACCELERATION_STRUCTURE_PREFER_FAST_TRACE_BIT_NV = 4
    BUILD_ACCELERATION_STRUCTURE_PREFER_FAST_BUILD_BIT_NV = 8
    BUILD_ACCELERATION_STRUCTURE_LOW_MEMORY_BIT_NV = 16
    BUILD_ACCELERATION_STRUCTURE_FLAG_BITS_MAX_ENUM_KHR = 2147483647
end
@cenum GeometryInstanceFlagBitsKHR::UInt32 begin
    GEOMETRY_INSTANCE_TRIANGLE_FACING_CULL_DISABLE_BIT_KHR = 1
    GEOMETRY_INSTANCE_TRIANGLE_FRONT_COUNTERCLOCKWISE_BIT_KHR = 2
    GEOMETRY_INSTANCE_FORCE_OPAQUE_BIT_KHR = 4
    GEOMETRY_INSTANCE_FORCE_NO_OPAQUE_BIT_KHR = 8
    GEOMETRY_INSTANCE_TRIANGLE_CULL_DISABLE_BIT_NV = 1
    GEOMETRY_INSTANCE_TRIANGLE_FRONT_COUNTERCLOCKWISE_BIT_NV = 2
    GEOMETRY_INSTANCE_FORCE_OPAQUE_BIT_NV = 4
    GEOMETRY_INSTANCE_FORCE_NO_OPAQUE_BIT_NV = 8
    GEOMETRY_INSTANCE_FLAG_BITS_MAX_ENUM_KHR = 2147483647
end
@cenum GeometryFlagBitsKHR::UInt32 begin
    GEOMETRY_OPAQUE_BIT_KHR = 1
    GEOMETRY_NO_DUPLICATE_ANY_HIT_INVOCATION_BIT_KHR = 2
    GEOMETRY_OPAQUE_BIT_NV = 1
    GEOMETRY_NO_DUPLICATE_ANY_HIT_INVOCATION_BIT_NV = 2
    GEOMETRY_FLAG_BITS_MAX_ENUM_KHR = 2147483647
end
@cenum AccelerationStructureMemoryRequirementsTypeKHR::UInt32 begin
    ACCELERATION_STRUCTURE_MEMORY_REQUIREMENTS_TYPE_OBJECT_KHR = 0
    ACCELERATION_STRUCTURE_MEMORY_REQUIREMENTS_TYPE_BUILD_SCRATCH_KHR = 1
    ACCELERATION_STRUCTURE_MEMORY_REQUIREMENTS_TYPE_UPDATE_SCRATCH_KHR = 2
    ACCELERATION_STRUCTURE_MEMORY_REQUIREMENTS_TYPE_OBJECT_NV = 0
    ACCELERATION_STRUCTURE_MEMORY_REQUIREMENTS_TYPE_BUILD_SCRATCH_NV = 1
    ACCELERATION_STRUCTURE_MEMORY_REQUIREMENTS_TYPE_UPDATE_SCRATCH_NV = 2
    ACCELERATION_STRUCTURE_MEMORY_REQUIREMENTS_TYPE_MAX_ENUM_KHR = 2147483647
end
@cenum CopyAccelerationStructureModeKHR::UInt32 begin
    COPY_ACCELERATION_STRUCTURE_MODE_CLONE_KHR = 0
    COPY_ACCELERATION_STRUCTURE_MODE_COMPACT_KHR = 1
    COPY_ACCELERATION_STRUCTURE_MODE_SERIALIZE_KHR = 2
    COPY_ACCELERATION_STRUCTURE_MODE_DESERIALIZE_KHR = 3
    COPY_ACCELERATION_STRUCTURE_MODE_CLONE_NV = 0
    COPY_ACCELERATION_STRUCTURE_MODE_COMPACT_NV = 1
    COPY_ACCELERATION_STRUCTURE_MODE_MAX_ENUM_KHR = 2147483647
end
@cenum AccelerationStructureTypeKHR::UInt32 begin
    ACCELERATION_STRUCTURE_TYPE_TOP_LEVEL_KHR = 0
    ACCELERATION_STRUCTURE_TYPE_BOTTOM_LEVEL_KHR = 1
    ACCELERATION_STRUCTURE_TYPE_TOP_LEVEL_NV = 0
    ACCELERATION_STRUCTURE_TYPE_BOTTOM_LEVEL_NV = 1
    ACCELERATION_STRUCTURE_TYPE_MAX_ENUM_KHR = 2147483647
end
@cenum GeometryTypeKHR::UInt32 begin
    GEOMETRY_TYPE_TRIANGLES_KHR = 0
    GEOMETRY_TYPE_AABBS_KHR = 1
    GEOMETRY_TYPE_INSTANCES_KHR = 1000150000
    GEOMETRY_TYPE_TRIANGLES_NV = 0
    GEOMETRY_TYPE_AABBS_NV = 1
    GEOMETRY_TYPE_MAX_ENUM_KHR = 2147483647
end
@cenum RayTracingShaderGroupTypeKHR::UInt32 begin
    RAY_TRACING_SHADER_GROUP_TYPE_GENERAL_KHR = 0
    RAY_TRACING_SHADER_GROUP_TYPE_TRIANGLES_HIT_GROUP_KHR = 1
    RAY_TRACING_SHADER_GROUP_TYPE_PROCEDURAL_HIT_GROUP_KHR = 2
    RAY_TRACING_SHADER_GROUP_TYPE_GENERAL_NV = 0
    RAY_TRACING_SHADER_GROUP_TYPE_TRIANGLES_HIT_GROUP_NV = 1
    RAY_TRACING_SHADER_GROUP_TYPE_PROCEDURAL_HIT_GROUP_NV = 2
    RAY_TRACING_SHADER_GROUP_TYPE_MAX_ENUM_KHR = 2147483647
end
struct RayTracingShaderGroupCreateInfoNV
    type::RayTracingShaderGroupTypeKHR
    general_shader::UInt32
    closest_hit_shader::UInt32
    any_hit_shader::UInt32
    intersection_shader::UInt32
    vk::VkRayTracingShaderGroupCreateInfoNV
end

@cenum CoarseSampleOrderTypeNV::UInt32 begin
    COARSE_SAMPLE_ORDER_TYPE_DEFAULT_NV = 0
    COARSE_SAMPLE_ORDER_TYPE_CUSTOM_NV = 1
    COARSE_SAMPLE_ORDER_TYPE_PIXEL_MAJOR_NV = 2
    COARSE_SAMPLE_ORDER_TYPE_SAMPLE_MAJOR_NV = 3
    COARSE_SAMPLE_ORDER_TYPE_MAX_ENUM_NV = 2147483647
end
@cenum ShadingRatePaletteEntryNV::UInt32 begin
    SHADING_RATE_PALETTE_ENTRY_NO_INVOCATIONS_NV = 0
    SHADING_RATE_PALETTE_ENTRY_16_INVOCATIONS_PER_PIXEL_NV = 1
    SHADING_RATE_PALETTE_ENTRY_8_INVOCATIONS_PER_PIXEL_NV = 2
    SHADING_RATE_PALETTE_ENTRY_4_INVOCATIONS_PER_PIXEL_NV = 3
    SHADING_RATE_PALETTE_ENTRY_2_INVOCATIONS_PER_PIXEL_NV = 4
    SHADING_RATE_PALETTE_ENTRY_1_INVOCATION_PER_PIXEL_NV = 5
    SHADING_RATE_PALETTE_ENTRY_1_INVOCATION_PER_2X1_PIXELS_NV = 6
    SHADING_RATE_PALETTE_ENTRY_1_INVOCATION_PER_1X2_PIXELS_NV = 7
    SHADING_RATE_PALETTE_ENTRY_1_INVOCATION_PER_2X2_PIXELS_NV = 8
    SHADING_RATE_PALETTE_ENTRY_1_INVOCATION_PER_4X2_PIXELS_NV = 9
    SHADING_RATE_PALETTE_ENTRY_1_INVOCATION_PER_2X4_PIXELS_NV = 10
    SHADING_RATE_PALETTE_ENTRY_1_INVOCATION_PER_4X4_PIXELS_NV = 11
    SHADING_RATE_PALETTE_ENTRY_MAX_ENUM_NV = 2147483647
end
struct CoarseSampleOrderCustomNV
    shading_rate::ShadingRatePaletteEntryNV
    sample_count::UInt32
    sample_locations::CoarseSampleLocationNV
    vk::VkCoarseSampleOrderCustomNV
end

struct PipelineViewportCoarseSampleOrderStateCreateInfoNV
    sample_order_type::CoarseSampleOrderTypeNV
    custom_sample_orders::CoarseSampleOrderCustomNV
    vk::VkPipelineViewportCoarseSampleOrderStateCreateInfoNV
end

struct ShadingRatePaletteNV
    shading_rate_palette_entries::ShadingRatePaletteEntryNV
    vk::VkShadingRatePaletteNV
end

struct PipelineViewportShadingRateImageStateCreateInfoNV
    shading_rate_image_enable::Bool
    shading_rate_palettes::ShadingRatePaletteNV
    vk::VkPipelineViewportShadingRateImageStateCreateInfoNV
end

@cenum ValidationCacheHeaderVersionEXT::UInt32 begin
    VALIDATION_CACHE_HEADER_VERSION_ONE_EXT = 1
    VALIDATION_CACHE_HEADER_VERSION_MAX_ENUM_EXT = 2147483647
end
@cenum CoverageModulationModeNV::UInt32 begin
    COVERAGE_MODULATION_MODE_NONE_NV = 0
    COVERAGE_MODULATION_MODE_RGB_NV = 1
    COVERAGE_MODULATION_MODE_ALPHA_NV = 2
    COVERAGE_MODULATION_MODE_RGBA_NV = 3
    COVERAGE_MODULATION_MODE_MAX_ENUM_NV = 2147483647
end
struct PipelineCoverageModulationStateCreateInfoNV
    coverage_modulation_mode::CoverageModulationModeNV
    coverage_modulation_table_enable::Bool
    coverage_modulation_table::Ptr{Float32}
    vk::VkPipelineCoverageModulationStateCreateInfoNV
end

@cenum BlendOverlapEXT::UInt32 begin
    BLEND_OVERLAP_UNCORRELATED_EXT = 0
    BLEND_OVERLAP_DISJOINT_EXT = 1
    BLEND_OVERLAP_CONJOINT_EXT = 2
    BLEND_OVERLAP_MAX_ENUM_EXT = 2147483647
end
struct PipelineColorBlendAdvancedStateCreateInfoEXT
    src_premultiplied::Bool
    dst_premultiplied::Bool
    blend_overlap::BlendOverlapEXT
    vk::VkPipelineColorBlendAdvancedStateCreateInfoEXT
end

@cenum DebugUtilsMessageTypeFlagBitsEXT::UInt32 begin
    DEBUG_UTILS_MESSAGE_TYPE_GENERAL_BIT_EXT = 1
    DEBUG_UTILS_MESSAGE_TYPE_VALIDATION_BIT_EXT = 2
    DEBUG_UTILS_MESSAGE_TYPE_PERFORMANCE_BIT_EXT = 4
    DEBUG_UTILS_MESSAGE_TYPE_FLAG_BITS_MAX_ENUM_EXT = 2147483647
end
@cenum DebugUtilsMessageSeverityFlagBitsEXT::UInt32 begin
    DEBUG_UTILS_MESSAGE_SEVERITY_VERBOSE_BIT_EXT = 1
    DEBUG_UTILS_MESSAGE_SEVERITY_INFO_BIT_EXT = 16
    DEBUG_UTILS_MESSAGE_SEVERITY_WARNING_BIT_EXT = 256
    DEBUG_UTILS_MESSAGE_SEVERITY_ERROR_BIT_EXT = 4096
    DEBUG_UTILS_MESSAGE_SEVERITY_FLAG_BITS_MAX_ENUM_EXT = 2147483647
end
@cenum ConservativeRasterizationModeEXT::UInt32 begin
    CONSERVATIVE_RASTERIZATION_MODE_DISABLED_EXT = 0
    CONSERVATIVE_RASTERIZATION_MODE_OVERESTIMATE_EXT = 1
    CONSERVATIVE_RASTERIZATION_MODE_UNDERESTIMATE_EXT = 2
    CONSERVATIVE_RASTERIZATION_MODE_MAX_ENUM_EXT = 2147483647
end
struct PipelineRasterizationConservativeStateCreateInfoEXT
    conservative_rasterization_mode::ConservativeRasterizationModeEXT
    extra_primitive_overestimation_size::Float32
    vk::VkPipelineRasterizationConservativeStateCreateInfoEXT
end

@cenum DiscardRectangleModeEXT::UInt32 begin
    DISCARD_RECTANGLE_MODE_INCLUSIVE_EXT = 0
    DISCARD_RECTANGLE_MODE_EXCLUSIVE_EXT = 1
    DISCARD_RECTANGLE_MODE_MAX_ENUM_EXT = 2147483647
end
struct PipelineDiscardRectangleStateCreateInfoEXT
    discard_rectangle_mode::DiscardRectangleModeEXT
    discard_rectangles::Rect2D
    vk::VkPipelineDiscardRectangleStateCreateInfoEXT
end

@cenum ViewportCoordinateSwizzleNV::UInt32 begin
    VIEWPORT_COORDINATE_SWIZZLE_POSITIVE_X_NV = 0
    VIEWPORT_COORDINATE_SWIZZLE_NEGATIVE_X_NV = 1
    VIEWPORT_COORDINATE_SWIZZLE_POSITIVE_Y_NV = 2
    VIEWPORT_COORDINATE_SWIZZLE_NEGATIVE_Y_NV = 3
    VIEWPORT_COORDINATE_SWIZZLE_POSITIVE_Z_NV = 4
    VIEWPORT_COORDINATE_SWIZZLE_NEGATIVE_Z_NV = 5
    VIEWPORT_COORDINATE_SWIZZLE_POSITIVE_W_NV = 6
    VIEWPORT_COORDINATE_SWIZZLE_NEGATIVE_W_NV = 7
    VIEWPORT_COORDINATE_SWIZZLE_MAX_ENUM_NV = 2147483647
end
struct ViewportSwizzleNV
    x::ViewportCoordinateSwizzleNV
    y::ViewportCoordinateSwizzleNV
    z::ViewportCoordinateSwizzleNV
    w::ViewportCoordinateSwizzleNV
    vk::VkViewportSwizzleNV
end

struct PipelineViewportSwizzleStateCreateInfoNV
    viewport_swizzles::ViewportSwizzleNV
    vk::VkPipelineViewportSwizzleStateCreateInfoNV
end

@cenum DisplayEventTypeEXT::UInt32 begin
    DISPLAY_EVENT_TYPE_FIRST_PIXEL_OUT_EXT = 0
    DISPLAY_EVENT_TYPE_MAX_ENUM_EXT = 2147483647
end
struct DisplayEventInfoEXT
    display_event::DisplayEventTypeEXT
    vk::VkDisplayEventInfoEXT
end

@cenum DeviceEventTypeEXT::UInt32 begin
    DEVICE_EVENT_TYPE_DISPLAY_HOTPLUG_EXT = 0
    DEVICE_EVENT_TYPE_MAX_ENUM_EXT = 2147483647
end
struct DeviceEventInfoEXT
    device_event::DeviceEventTypeEXT
    vk::VkDeviceEventInfoEXT
end

@cenum DisplayPowerStateEXT::UInt32 begin
    DISPLAY_POWER_STATE_OFF_EXT = 0
    DISPLAY_POWER_STATE_SUSPEND_EXT = 1
    DISPLAY_POWER_STATE_ON_EXT = 2
    DISPLAY_POWER_STATE_MAX_ENUM_EXT = 2147483647
end
struct DisplayPowerInfoEXT
    power_state::DisplayPowerStateEXT
    vk::VkDisplayPowerInfoEXT
end

@cenum SurfaceCounterFlagBitsEXT::UInt32 begin
    SURFACE_COUNTER_VBLANK_EXT = 1
    SURFACE_COUNTER_FLAG_BITS_MAX_ENUM_EXT = 2147483647
end
@cenum ConditionalRenderingFlagBitsEXT::UInt32 begin
    CONDITIONAL_RENDERING_INVERTED_BIT_EXT = 1
    CONDITIONAL_RENDERING_FLAG_BITS_MAX_ENUM_EXT = 2147483647
end
@cenum ValidationCheckEXT::UInt32 begin
    VALIDATION_CHECK_ALL_EXT = 0
    VALIDATION_CHECK_SHADERS_EXT = 1
    VALIDATION_CHECK_MAX_ENUM_EXT = 2147483647
end
struct ValidationFlagsEXT
    disabled_validation_checks::ValidationCheckEXT
    vk::VkValidationFlagsEXT
end

@cenum ExternalMemoryFeatureFlagBitsNV::UInt32 begin
    EXTERNAL_MEMORY_FEATURE_DEDICATED_ONLY_BIT_NV = 1
    EXTERNAL_MEMORY_FEATURE_EXPORTABLE_BIT_NV = 2
    EXTERNAL_MEMORY_FEATURE_IMPORTABLE_BIT_NV = 4
    EXTERNAL_MEMORY_FEATURE_FLAG_BITS_MAX_ENUM_NV = 2147483647
end
@cenum ExternalMemoryHandleTypeFlagBitsNV::UInt32 begin
    EXTERNAL_MEMORY_HANDLE_TYPE_OPAQUE_WIN32_BIT_NV = 1
    EXTERNAL_MEMORY_HANDLE_TYPE_OPAQUE_WIN32_KMT_BIT_NV = 2
    EXTERNAL_MEMORY_HANDLE_TYPE_D3D11_IMAGE_BIT_NV = 4
    EXTERNAL_MEMORY_HANDLE_TYPE_D3D11_IMAGE_KMT_BIT_NV = 8
    EXTERNAL_MEMORY_HANDLE_TYPE_FLAG_BITS_MAX_ENUM_NV = 2147483647
end
@cenum ShaderInfoTypeAMD::UInt32 begin
    SHADER_INFO_TYPE_STATISTICS_AMD = 0
    SHADER_INFO_TYPE_BINARY_AMD = 1
    SHADER_INFO_TYPE_DISASSEMBLY_AMD = 2
    SHADER_INFO_TYPE_MAX_ENUM_AMD = 2147483647
end
@cenum RasterizationOrderAMD::UInt32 begin
    RASTERIZATION_ORDER_STRICT_AMD = 0
    RASTERIZATION_ORDER_RELAXED_AMD = 1
    RASTERIZATION_ORDER_MAX_ENUM_AMD = 2147483647
end
struct PipelineRasterizationStateRasterizationOrderAMD
    rasterization_order::RasterizationOrderAMD
    vk::VkPipelineRasterizationStateRasterizationOrderAMD
end

@cenum DebugReportFlagBitsEXT::UInt32 begin
    DEBUG_REPORT_INFORMATION_BIT_EXT = 1
    DEBUG_REPORT_WARNING_BIT_EXT = 2
    DEBUG_REPORT_PERFORMANCE_WARNING_BIT_EXT = 4
    DEBUG_REPORT_ERROR_BIT_EXT = 8
    DEBUG_REPORT_DEBUG_BIT_EXT = 16
    DEBUG_REPORT_FLAG_BITS_MAX_ENUM_EXT = 2147483647
end
@cenum DebugReportObjectTypeEXT::UInt32 begin
    DEBUG_REPORT_OBJECT_TYPE_UNKNOWN_EXT = 0
    DEBUG_REPORT_OBJECT_TYPE_INSTANCE_EXT = 1
    DEBUG_REPORT_OBJECT_TYPE_PHYSICAL_DEVICE_EXT = 2
    DEBUG_REPORT_OBJECT_TYPE_DEVICE_EXT = 3
    DEBUG_REPORT_OBJECT_TYPE_QUEUE_EXT = 4
    DEBUG_REPORT_OBJECT_TYPE_SEMAPHORE_EXT = 5
    DEBUG_REPORT_OBJECT_TYPE_COMMAND_BUFFER_EXT = 6
    DEBUG_REPORT_OBJECT_TYPE_FENCE_EXT = 7
    DEBUG_REPORT_OBJECT_TYPE_DEVICE_MEMORY_EXT = 8
    DEBUG_REPORT_OBJECT_TYPE_BUFFER_EXT = 9
    DEBUG_REPORT_OBJECT_TYPE_IMAGE_EXT = 10
    DEBUG_REPORT_OBJECT_TYPE_EVENT_EXT = 11
    DEBUG_REPORT_OBJECT_TYPE_QUERY_POOL_EXT = 12
    DEBUG_REPORT_OBJECT_TYPE_BUFFER_VIEW_EXT = 13
    DEBUG_REPORT_OBJECT_TYPE_IMAGE_VIEW_EXT = 14
    DEBUG_REPORT_OBJECT_TYPE_SHADER_MODULE_EXT = 15
    DEBUG_REPORT_OBJECT_TYPE_PIPELINE_CACHE_EXT = 16
    DEBUG_REPORT_OBJECT_TYPE_PIPELINE_LAYOUT_EXT = 17
    DEBUG_REPORT_OBJECT_TYPE_RENDER_PASS_EXT = 18
    DEBUG_REPORT_OBJECT_TYPE_PIPELINE_EXT = 19
    DEBUG_REPORT_OBJECT_TYPE_DESCRIPTOR_SET_LAYOUT_EXT = 20
    DEBUG_REPORT_OBJECT_TYPE_SAMPLER_EXT = 21
    DEBUG_REPORT_OBJECT_TYPE_DESCRIPTOR_POOL_EXT = 22
    DEBUG_REPORT_OBJECT_TYPE_DESCRIPTOR_SET_EXT = 23
    DEBUG_REPORT_OBJECT_TYPE_FRAMEBUFFER_EXT = 24
    DEBUG_REPORT_OBJECT_TYPE_COMMAND_POOL_EXT = 25
    DEBUG_REPORT_OBJECT_TYPE_SURFACE_KHR_EXT = 26
    DEBUG_REPORT_OBJECT_TYPE_SWAPCHAIN_KHR_EXT = 27
    DEBUG_REPORT_OBJECT_TYPE_DEBUG_REPORT_CALLBACK_EXT_EXT = 28
    DEBUG_REPORT_OBJECT_TYPE_DISPLAY_KHR_EXT = 29
    DEBUG_REPORT_OBJECT_TYPE_DISPLAY_MODE_KHR_EXT = 30
    DEBUG_REPORT_OBJECT_TYPE_VALIDATION_CACHE_EXT_EXT = 33
    DEBUG_REPORT_OBJECT_TYPE_SAMPLER_YCBCR_CONVERSION_EXT = 1000156000
    DEBUG_REPORT_OBJECT_TYPE_DESCRIPTOR_UPDATE_TEMPLATE_EXT = 1000085000
    DEBUG_REPORT_OBJECT_TYPE_ACCELERATION_STRUCTURE_KHR_EXT = 1000165000
    DEBUG_REPORT_OBJECT_TYPE_DEBUG_REPORT_EXT = 28
    DEBUG_REPORT_OBJECT_TYPE_VALIDATION_CACHE_EXT = 33
    DEBUG_REPORT_OBJECT_TYPE_DESCRIPTOR_UPDATE_TEMPLATE_KHR_EXT = 1000085000
    DEBUG_REPORT_OBJECT_TYPE_SAMPLER_YCBCR_CONVERSION_KHR_EXT = 1000156000
    DEBUG_REPORT_OBJECT_TYPE_ACCELERATION_STRUCTURE_NV_EXT = 1000165000
    DEBUG_REPORT_OBJECT_TYPE_MAX_ENUM_EXT = 2147483647
end
struct DebugMarkerObjectTagInfoEXT
    object_type::DebugReportObjectTypeEXT
    object::UInt64
    tag_name::UInt64
    tag::Ptr{Cvoid}
    vk::VkDebugMarkerObjectTagInfoEXT
end

struct DebugMarkerObjectNameInfoEXT
    object_type::DebugReportObjectTypeEXT
    object::UInt64
    object_name::String
    vk::VkDebugMarkerObjectNameInfoEXT
end

@cenum PipelineExecutableStatisticFormatKHR::UInt32 begin
    PIPELINE_EXECUTABLE_STATISTIC_FORMAT_BOOL32_KHR = 0
    PIPELINE_EXECUTABLE_STATISTIC_FORMAT_INT64_KHR = 1
    PIPELINE_EXECUTABLE_STATISTIC_FORMAT_UINT64_KHR = 2
    PIPELINE_EXECUTABLE_STATISTIC_FORMAT_FLOAT64_KHR = 3
    PIPELINE_EXECUTABLE_STATISTIC_FORMAT_MAX_ENUM_KHR = 2147483647
end
struct PipelineExecutableStatisticKHR
    name::String
    description::String
    format::PipelineExecutableStatisticFormatKHR
    value::PipelineExecutableStatisticValueKHR
end

@cenum AcquireProfilingLockFlagBitsKHR::UInt32 begin
    ACQUIRE_PROFILING_LOCK_FLAG_BITS_MAX_ENUM_KHR = 2147483647
end
@cenum PerformanceCounterDescriptionFlagBitsKHR::UInt32 begin
    PERFORMANCE_COUNTER_DESCRIPTION_PERFORMANCE_IMPACTING_KHR = 1
    PERFORMANCE_COUNTER_DESCRIPTION_CONCURRENTLY_IMPACTED_KHR = 2
    PERFORMANCE_COUNTER_DESCRIPTION_FLAG_BITS_MAX_ENUM_KHR = 2147483647
end
@cenum PerformanceCounterStorageKHR::UInt32 begin
    PERFORMANCE_COUNTER_STORAGE_INT32_KHR = 0
    PERFORMANCE_COUNTER_STORAGE_INT64_KHR = 1
    PERFORMANCE_COUNTER_STORAGE_UINT32_KHR = 2
    PERFORMANCE_COUNTER_STORAGE_UINT64_KHR = 3
    PERFORMANCE_COUNTER_STORAGE_FLOAT32_KHR = 4
    PERFORMANCE_COUNTER_STORAGE_FLOAT64_KHR = 5
    PERFORMANCE_COUNTER_STORAGE_MAX_ENUM_KHR = 2147483647
end
@cenum PerformanceCounterScopeKHR::UInt32 begin
    PERFORMANCE_COUNTER_SCOPE_COMMAND_BUFFER_KHR = 0
    PERFORMANCE_COUNTER_SCOPE_RENDER_PASS_KHR = 1
    PERFORMANCE_COUNTER_SCOPE_COMMAND_KHR = 2
    QUERY_SCOPE_COMMAND_BUFFER_KHR = 0
    QUERY_SCOPE_RENDER_PASS_KHR = 1
    QUERY_SCOPE_COMMAND_KHR = 2
    PERFORMANCE_COUNTER_SCOPE_MAX_ENUM_KHR = 2147483647
end
@cenum PerformanceCounterUnitKHR::UInt32 begin
    PERFORMANCE_COUNTER_UNIT_GENERIC_KHR = 0
    PERFORMANCE_COUNTER_UNIT_PERCENTAGE_KHR = 1
    PERFORMANCE_COUNTER_UNIT_NANOSECONDS_KHR = 2
    PERFORMANCE_COUNTER_UNIT_BYTES_KHR = 3
    PERFORMANCE_COUNTER_UNIT_BYTES_PER_SECOND_KHR = 4
    PERFORMANCE_COUNTER_UNIT_KELVIN_KHR = 5
    PERFORMANCE_COUNTER_UNIT_WATTS_KHR = 6
    PERFORMANCE_COUNTER_UNIT_VOLTS_KHR = 7
    PERFORMANCE_COUNTER_UNIT_AMPS_KHR = 8
    PERFORMANCE_COUNTER_UNIT_HERTZ_KHR = 9
    PERFORMANCE_COUNTER_UNIT_CYCLES_KHR = 10
    PERFORMANCE_COUNTER_UNIT_MAX_ENUM_KHR = 2147483647
end
struct PerformanceCounterKHR
    unit::PerformanceCounterUnitKHR
    scope::PerformanceCounterScopeKHR
    storage::PerformanceCounterStorageKHR
    uuid::String
end

@cenum DisplayPlaneAlphaFlagBitsKHR::UInt32 begin
    DISPLAY_PLANE_ALPHA_OPAQUE_BIT_KHR = 1
    DISPLAY_PLANE_ALPHA_GLOBAL_BIT_KHR = 2
    DISPLAY_PLANE_ALPHA_PER_PIXEL_BIT_KHR = 4
    DISPLAY_PLANE_ALPHA_PER_PIXEL_PREMULTIPLIED_BIT_KHR = 8
    DISPLAY_PLANE_ALPHA_FLAG_BITS_MAX_ENUM_KHR = 2147483647
end
@cenum DeviceGroupPresentModeFlagBitsKHR::UInt32 begin
    DEVICE_GROUP_PRESENT_MODE_LOCAL_BIT_KHR = 1
    DEVICE_GROUP_PRESENT_MODE_REMOTE_BIT_KHR = 2
    DEVICE_GROUP_PRESENT_MODE_SUM_BIT_KHR = 4
    DEVICE_GROUP_PRESENT_MODE_LOCAL_MULTI_DEVICE_BIT_KHR = 8
    DEVICE_GROUP_PRESENT_MODE_FLAG_BITS_MAX_ENUM_KHR = 2147483647
end
struct DeviceGroupPresentInfoKHR
    device_masks::Ptr{UInt32}
    mode::DeviceGroupPresentModeFlagBitsKHR
    vk::VkDeviceGroupPresentInfoKHR
end

@cenum SwapchainCreateFlagBitsKHR::UInt32 begin
    SWAPCHAIN_CREATE_SPLIT_INSTANCE_BIND_REGIONS_BIT_KHR = 1
    SWAPCHAIN_CREATE_PROTECTED_BIT_KHR = 2
    SWAPCHAIN_CREATE_MUTABLE_FORMAT_BIT_KHR = 4
    SWAPCHAIN_CREATE_FLAG_BITS_MAX_ENUM_KHR = 2147483647
end
@cenum CompositeAlphaFlagBitsKHR::UInt32 begin
    COMPOSITE_ALPHA_OPAQUE_BIT_KHR = 1
    COMPOSITE_ALPHA_PRE_MULTIPLIED_BIT_KHR = 2
    COMPOSITE_ALPHA_POST_MULTIPLIED_BIT_KHR = 4
    COMPOSITE_ALPHA_INHERIT_BIT_KHR = 8
    COMPOSITE_ALPHA_FLAG_BITS_MAX_ENUM_KHR = 2147483647
end
@cenum SurfaceTransformFlagBitsKHR::UInt32 begin
    SURFACE_TRANSFORM_IDENTITY_BIT_KHR = 1
    SURFACE_TRANSFORM_ROTATE_90_BIT_KHR = 2
    SURFACE_TRANSFORM_ROTATE_180_BIT_KHR = 4
    SURFACE_TRANSFORM_ROTATE_270_BIT_KHR = 8
    SURFACE_TRANSFORM_HORIZONTAL_MIRROR_BIT_KHR = 16
    SURFACE_TRANSFORM_HORIZONTAL_MIRROR_ROTATE_90_BIT_KHR = 32
    SURFACE_TRANSFORM_HORIZONTAL_MIRROR_ROTATE_180_BIT_KHR = 64
    SURFACE_TRANSFORM_HORIZONTAL_MIRROR_ROTATE_270_BIT_KHR = 128
    SURFACE_TRANSFORM_INHERIT_BIT_KHR = 256
    SURFACE_TRANSFORM_FLAG_BITS_MAX_ENUM_KHR = 2147483647
end
struct CommandBufferInheritanceRenderPassTransformInfoQCOM
    transform::SurfaceTransformFlagBitsKHR
    render_area::Rect2D
    vk::VkCommandBufferInheritanceRenderPassTransformInfoQCOM
end

struct RenderPassTransformBeginInfoQCOM
    transform::SurfaceTransformFlagBitsKHR
    vk::VkRenderPassTransformBeginInfoQCOM
end

@cenum ColorSpaceKHR::UInt32 begin
    COLOR_SPACE_SRGB_NONLINEAR_KHR = 0
    COLOR_SPACE_DISPLAY_P3_NONLINEAR_EXT = 1000104001
    COLOR_SPACE_EXTENDED_SRGB_LINEAR_EXT = 1000104002
    COLOR_SPACE_DISPLAY_P3_LINEAR_EXT = 1000104003
    COLOR_SPACE_DCI_P3_NONLINEAR_EXT = 1000104004
    COLOR_SPACE_BT709_LINEAR_EXT = 1000104005
    COLOR_SPACE_BT709_NONLINEAR_EXT = 1000104006
    COLOR_SPACE_BT2020_LINEAR_EXT = 1000104007
    COLOR_SPACE_HDR10_ST2084_EXT = 1000104008
    COLOR_SPACE_DOLBYVISION_EXT = 1000104009
    COLOR_SPACE_HDR10_HLG_EXT = 1000104010
    COLOR_SPACE_ADOBERGB_LINEAR_EXT = 1000104011
    COLOR_SPACE_ADOBERGB_NONLINEAR_EXT = 1000104012
    COLOR_SPACE_PASS_THROUGH_EXT = 1000104013
    COLOR_SPACE_EXTENDED_SRGB_NONLINEAR_EXT = 1000104014
    COLOR_SPACE_DISPLAY_NATIVE_AMD = 1000213000
    COLORSPACE_SRGB_NONLINEAR_KHR = 0
    COLOR_SPACE_DCI_P3_LINEAR_EXT = 1000104003
    COLOR_SPACE_MAX_ENUM_KHR = 2147483647
end
@cenum PresentModeKHR::UInt32 begin
    PRESENT_MODE_IMMEDIATE_KHR = 0
    PRESENT_MODE_MAILBOX_KHR = 1
    PRESENT_MODE_FIFO_KHR = 2
    PRESENT_MODE_FIFO_RELAXED_KHR = 3
    PRESENT_MODE_SHARED_DEMAND_REFRESH_KHR = 1000111000
    PRESENT_MODE_SHARED_CONTINUOUS_REFRESH_KHR = 1000111001
    PRESENT_MODE_MAX_ENUM_KHR = 2147483647
end
@cenum SemaphoreWaitFlagBits::UInt32 begin
    SEMAPHORE_WAIT_ANY_BIT = 1
    SEMAPHORE_WAIT_ANY_BIT_KHR = 1
    SEMAPHORE_WAIT_FLAG_BITS_MAX_ENUM = 2147483647
end
@cenum DescriptorBindingFlagBits::UInt32 begin
    DESCRIPTOR_BINDING_UPDATE_AFTER_BIND_BIT = 1
    DESCRIPTOR_BINDING_UPDATE_UNUSED_WHILE_PENDING_BIT = 2
    DESCRIPTOR_BINDING_PARTIALLY_BOUND_BIT = 4
    DESCRIPTOR_BINDING_VARIABLE_DESCRIPTOR_COUNT_BIT = 8
    DESCRIPTOR_BINDING_UPDATE_AFTER_BIND_BIT_EXT = 1
    DESCRIPTOR_BINDING_UPDATE_UNUSED_WHILE_PENDING_BIT_EXT = 2
    DESCRIPTOR_BINDING_PARTIALLY_BOUND_BIT_EXT = 4
    DESCRIPTOR_BINDING_VARIABLE_DESCRIPTOR_COUNT_BIT_EXT = 8
    DESCRIPTOR_BINDING_FLAG_BITS_MAX_ENUM = 2147483647
end
@cenum ResolveModeFlagBits::UInt32 begin
    RESOLVE_MODE_NONE = 0
    RESOLVE_MODE_SAMPLE_ZERO_BIT = 1
    RESOLVE_MODE_AVERAGE_BIT = 2
    RESOLVE_MODE_MIN_BIT = 4
    RESOLVE_MODE_MAX_BIT = 8
    RESOLVE_MODE_NONE_KHR = 0
    RESOLVE_MODE_SAMPLE_ZERO_BIT_KHR = 1
    RESOLVE_MODE_AVERAGE_BIT_KHR = 2
    RESOLVE_MODE_MIN_BIT_KHR = 4
    RESOLVE_MODE_MAX_BIT_KHR = 8
    RESOLVE_MODE_FLAG_BITS_MAX_ENUM = 2147483647
end
@cenum SemaphoreType::UInt32 begin
    SEMAPHORE_TYPE_BINARY = 0
    SEMAPHORE_TYPE_TIMELINE = 1
    SEMAPHORE_TYPE_BINARY_KHR = 0
    SEMAPHORE_TYPE_TIMELINE_KHR = 1
    SEMAPHORE_TYPE_MAX_ENUM = 2147483647
end
struct SemaphoreTypeCreateInfo
    semaphore_type::SemaphoreType
    initial_value::UInt64
    vk::VkSemaphoreTypeCreateInfo
end

@cenum SamplerReductionMode::UInt32 begin
    SAMPLER_REDUCTION_MODE_WEIGHTED_AVERAGE = 0
    SAMPLER_REDUCTION_MODE_MIN = 1
    SAMPLER_REDUCTION_MODE_MAX = 2
    SAMPLER_REDUCTION_MODE_WEIGHTED_AVERAGE_EXT = 0
    SAMPLER_REDUCTION_MODE_MIN_EXT = 1
    SAMPLER_REDUCTION_MODE_MAX_EXT = 2
    SAMPLER_REDUCTION_MODE_MAX_ENUM = 2147483647
end
struct SamplerReductionModeCreateInfo
    reduction_mode::SamplerReductionMode
    vk::VkSamplerReductionModeCreateInfo
end

@cenum ShaderFloatControlsIndependence::UInt32 begin
    SHADER_FLOAT_CONTROLS_INDEPENDENCE_32_BIT_ONLY = 0
    SHADER_FLOAT_CONTROLS_INDEPENDENCE_ALL = 1
    SHADER_FLOAT_CONTROLS_INDEPENDENCE_NONE = 2
    SHADER_FLOAT_CONTROLS_INDEPENDENCE_32_BIT_ONLY_KHR = 0
    SHADER_FLOAT_CONTROLS_INDEPENDENCE_ALL_KHR = 1
    SHADER_FLOAT_CONTROLS_INDEPENDENCE_NONE_KHR = 2
    SHADER_FLOAT_CONTROLS_INDEPENDENCE_MAX_ENUM = 2147483647
end
struct PhysicalDeviceFloatControlsProperties
    denorm_behavior_independence::ShaderFloatControlsIndependence
    rounding_mode_independence::ShaderFloatControlsIndependence
    shader_signed_zero_inf_nan_preserve_float_16::Bool
    shader_signed_zero_inf_nan_preserve_float_32::Bool
    shader_signed_zero_inf_nan_preserve_float_64::Bool
    shader_denorm_preserve_float_16::Bool
    shader_denorm_preserve_float_32::Bool
    shader_denorm_preserve_float_64::Bool
    shader_denorm_flush_to_zero_float_16::Bool
    shader_denorm_flush_to_zero_float_32::Bool
    shader_denorm_flush_to_zero_float_64::Bool
    shader_rounding_mode_rte_float_16::Bool
    shader_rounding_mode_rte_float_32::Bool
    shader_rounding_mode_rte_float_64::Bool
    shader_rounding_mode_rtz_float_16::Bool
    shader_rounding_mode_rtz_float_32::Bool
    shader_rounding_mode_rtz_float_64::Bool
end

@cenum DriverId::UInt32 begin
    DRIVER_ID_AMD_PROPRIETARY = 1
    DRIVER_ID_AMD_OPEN_SOURCE = 2
    DRIVER_ID_MESA_RADV = 3
    DRIVER_ID_NVIDIA_PROPRIETARY = 4
    DRIVER_ID_INTEL_PROPRIETARY_WINDOWS = 5
    DRIVER_ID_INTEL_OPEN_SOURCE_MESA = 6
    DRIVER_ID_IMAGINATION_PROPRIETARY = 7
    DRIVER_ID_QUALCOMM_PROPRIETARY = 8
    DRIVER_ID_ARM_PROPRIETARY = 9
    DRIVER_ID_GOOGLE_SWIFTSHADER = 10
    DRIVER_ID_GGP_PROPRIETARY = 11
    DRIVER_ID_BROADCOM_PROPRIETARY = 12
    DRIVER_ID_MESA_LLVMPIPE = 13
    DRIVER_ID_MOLTENVK = 14
    DRIVER_ID_AMD_PROPRIETARY_KHR = 1
    DRIVER_ID_AMD_OPEN_SOURCE_KHR = 2
    DRIVER_ID_MESA_RADV_KHR = 3
    DRIVER_ID_NVIDIA_PROPRIETARY_KHR = 4
    DRIVER_ID_INTEL_PROPRIETARY_WINDOWS_KHR = 5
    DRIVER_ID_INTEL_OPEN_SOURCE_MESA_KHR = 6
    DRIVER_ID_IMAGINATION_PROPRIETARY_KHR = 7
    DRIVER_ID_QUALCOMM_PROPRIETARY_KHR = 8
    DRIVER_ID_ARM_PROPRIETARY_KHR = 9
    DRIVER_ID_GOOGLE_SWIFTSHADER_KHR = 10
    DRIVER_ID_GGP_PROPRIETARY_KHR = 11
    DRIVER_ID_BROADCOM_PROPRIETARY_KHR = 12
    DRIVER_ID_MAX_ENUM = 2147483647
end
struct PhysicalDeviceDriverProperties
    driver_id::DriverId
    driver_name::String
    driver_info::String
    conformance_version::ConformanceVersion
end

@cenum ExternalSemaphoreFeatureFlagBits::UInt32 begin
    EXTERNAL_SEMAPHORE_FEATURE_EXPORTABLE_BIT = 1
    EXTERNAL_SEMAPHORE_FEATURE_IMPORTABLE_BIT = 2
    EXTERNAL_SEMAPHORE_FEATURE_EXPORTABLE_BIT_KHR = 1
    EXTERNAL_SEMAPHORE_FEATURE_IMPORTABLE_BIT_KHR = 2
    EXTERNAL_SEMAPHORE_FEATURE_FLAG_BITS_MAX_ENUM = 2147483647
end
@cenum ExternalSemaphoreHandleTypeFlagBits::UInt32 begin
    EXTERNAL_SEMAPHORE_HANDLE_TYPE_OPAQUE_FD_BIT = 1
    EXTERNAL_SEMAPHORE_HANDLE_TYPE_OPAQUE_WIN32_BIT = 2
    EXTERNAL_SEMAPHORE_HANDLE_TYPE_OPAQUE_WIN32_KMT_BIT = 4
    EXTERNAL_SEMAPHORE_HANDLE_TYPE_D3D12_FENCE_BIT = 8
    EXTERNAL_SEMAPHORE_HANDLE_TYPE_SYNC_FD_BIT = 16
    EXTERNAL_SEMAPHORE_HANDLE_TYPE_D3D11_FENCE_BIT = 8
    EXTERNAL_SEMAPHORE_HANDLE_TYPE_OPAQUE_FD_BIT_KHR = 1
    EXTERNAL_SEMAPHORE_HANDLE_TYPE_OPAQUE_WIN32_BIT_KHR = 2
    EXTERNAL_SEMAPHORE_HANDLE_TYPE_OPAQUE_WIN32_KMT_BIT_KHR = 4
    EXTERNAL_SEMAPHORE_HANDLE_TYPE_D3D12_FENCE_BIT_KHR = 8
    EXTERNAL_SEMAPHORE_HANDLE_TYPE_SYNC_FD_BIT_KHR = 16
    EXTERNAL_SEMAPHORE_HANDLE_TYPE_FLAG_BITS_MAX_ENUM = 2147483647
end
struct PhysicalDeviceExternalSemaphoreInfo
    handle_type::ExternalSemaphoreHandleTypeFlagBits
    vk::VkPhysicalDeviceExternalSemaphoreInfo
end

@cenum SemaphoreImportFlagBits::UInt32 begin
    SEMAPHORE_IMPORT_TEMPORARY_BIT = 1
    SEMAPHORE_IMPORT_TEMPORARY_BIT_KHR = 1
    SEMAPHORE_IMPORT_FLAG_BITS_MAX_ENUM = 2147483647
end
@cenum FenceImportFlagBits::UInt32 begin
    FENCE_IMPORT_TEMPORARY_BIT = 1
    FENCE_IMPORT_TEMPORARY_BIT_KHR = 1
    FENCE_IMPORT_FLAG_BITS_MAX_ENUM = 2147483647
end
@cenum ExternalFenceFeatureFlagBits::UInt32 begin
    EXTERNAL_FENCE_FEATURE_EXPORTABLE_BIT = 1
    EXTERNAL_FENCE_FEATURE_IMPORTABLE_BIT = 2
    EXTERNAL_FENCE_FEATURE_EXPORTABLE_BIT_KHR = 1
    EXTERNAL_FENCE_FEATURE_IMPORTABLE_BIT_KHR = 2
    EXTERNAL_FENCE_FEATURE_FLAG_BITS_MAX_ENUM = 2147483647
end
@cenum ExternalFenceHandleTypeFlagBits::UInt32 begin
    EXTERNAL_FENCE_HANDLE_TYPE_OPAQUE_FD_BIT = 1
    EXTERNAL_FENCE_HANDLE_TYPE_OPAQUE_WIN32_BIT = 2
    EXTERNAL_FENCE_HANDLE_TYPE_OPAQUE_WIN32_KMT_BIT = 4
    EXTERNAL_FENCE_HANDLE_TYPE_SYNC_FD_BIT = 8
    EXTERNAL_FENCE_HANDLE_TYPE_OPAQUE_FD_BIT_KHR = 1
    EXTERNAL_FENCE_HANDLE_TYPE_OPAQUE_WIN32_BIT_KHR = 2
    EXTERNAL_FENCE_HANDLE_TYPE_OPAQUE_WIN32_KMT_BIT_KHR = 4
    EXTERNAL_FENCE_HANDLE_TYPE_SYNC_FD_BIT_KHR = 8
    EXTERNAL_FENCE_HANDLE_TYPE_FLAG_BITS_MAX_ENUM = 2147483647
end
struct PhysicalDeviceExternalFenceInfo
    handle_type::ExternalFenceHandleTypeFlagBits
    vk::VkPhysicalDeviceExternalFenceInfo
end

@cenum ExternalMemoryFeatureFlagBits::UInt32 begin
    EXTERNAL_MEMORY_FEATURE_DEDICATED_ONLY_BIT = 1
    EXTERNAL_MEMORY_FEATURE_EXPORTABLE_BIT = 2
    EXTERNAL_MEMORY_FEATURE_IMPORTABLE_BIT = 4
    EXTERNAL_MEMORY_FEATURE_DEDICATED_ONLY_BIT_KHR = 1
    EXTERNAL_MEMORY_FEATURE_EXPORTABLE_BIT_KHR = 2
    EXTERNAL_MEMORY_FEATURE_IMPORTABLE_BIT_KHR = 4
    EXTERNAL_MEMORY_FEATURE_FLAG_BITS_MAX_ENUM = 2147483647
end
@cenum ExternalMemoryHandleTypeFlagBits::UInt32 begin
    EXTERNAL_MEMORY_HANDLE_TYPE_OPAQUE_FD_BIT = 1
    EXTERNAL_MEMORY_HANDLE_TYPE_OPAQUE_WIN32_BIT = 2
    EXTERNAL_MEMORY_HANDLE_TYPE_OPAQUE_WIN32_KMT_BIT = 4
    EXTERNAL_MEMORY_HANDLE_TYPE_D3D11_TEXTURE_BIT = 8
    EXTERNAL_MEMORY_HANDLE_TYPE_D3D11_TEXTURE_KMT_BIT = 16
    EXTERNAL_MEMORY_HANDLE_TYPE_D3D12_HEAP_BIT = 32
    EXTERNAL_MEMORY_HANDLE_TYPE_D3D12_RESOURCE_BIT = 64
    EXTERNAL_MEMORY_HANDLE_TYPE_DMA_BUF_BIT_EXT = 512
    EXTERNAL_MEMORY_HANDLE_TYPE_ANDROID_HARDWARE_BUFFER_BIT_ANDROID = 1024
    EXTERNAL_MEMORY_HANDLE_TYPE_HOST_ALLOCATION_BIT_EXT = 128
    EXTERNAL_MEMORY_HANDLE_TYPE_HOST_MAPPED_FOREIGN_MEMORY_BIT_EXT = 256
    EXTERNAL_MEMORY_HANDLE_TYPE_OPAQUE_FD_BIT_KHR = 1
    EXTERNAL_MEMORY_HANDLE_TYPE_OPAQUE_WIN32_BIT_KHR = 2
    EXTERNAL_MEMORY_HANDLE_TYPE_OPAQUE_WIN32_KMT_BIT_KHR = 4
    EXTERNAL_MEMORY_HANDLE_TYPE_D3D11_TEXTURE_BIT_KHR = 8
    EXTERNAL_MEMORY_HANDLE_TYPE_D3D11_TEXTURE_KMT_BIT_KHR = 16
    EXTERNAL_MEMORY_HANDLE_TYPE_D3D12_HEAP_BIT_KHR = 32
    EXTERNAL_MEMORY_HANDLE_TYPE_D3D12_RESOURCE_BIT_KHR = 64
    EXTERNAL_MEMORY_HANDLE_TYPE_FLAG_BITS_MAX_ENUM = 2147483647
end
struct ImportMemoryHostPointerInfoEXT
    handle_type::ExternalMemoryHandleTypeFlagBits
    host_pointer::Ptr{Cvoid}
    vk::VkImportMemoryHostPointerInfoEXT
end

struct ImportMemoryFdInfoKHR
    handle_type::ExternalMemoryHandleTypeFlagBits
    fd::Int32
    vk::VkImportMemoryFdInfoKHR
end

struct PhysicalDeviceExternalImageFormatInfo
    handle_type::ExternalMemoryHandleTypeFlagBits
    vk::VkPhysicalDeviceExternalImageFormatInfo
end

@cenum MemoryAllocateFlagBits::UInt32 begin
    MEMORY_ALLOCATE_DEVICE_MASK_BIT = 1
    MEMORY_ALLOCATE_DEVICE_ADDRESS_BIT = 2
    MEMORY_ALLOCATE_DEVICE_ADDRESS_CAPTURE_REPLAY_BIT = 4
    MEMORY_ALLOCATE_DEVICE_MASK_BIT_KHR = 1
    MEMORY_ALLOCATE_DEVICE_ADDRESS_BIT_KHR = 2
    MEMORY_ALLOCATE_DEVICE_ADDRESS_CAPTURE_REPLAY_BIT_KHR = 4
    MEMORY_ALLOCATE_FLAG_BITS_MAX_ENUM = 2147483647
end
@cenum PeerMemoryFeatureFlagBits::UInt32 begin
    PEER_MEMORY_FEATURE_COPY_SRC_BIT = 1
    PEER_MEMORY_FEATURE_COPY_DST_BIT = 2
    PEER_MEMORY_FEATURE_GENERIC_SRC_BIT = 4
    PEER_MEMORY_FEATURE_GENERIC_DST_BIT = 8
    PEER_MEMORY_FEATURE_COPY_SRC_BIT_KHR = 1
    PEER_MEMORY_FEATURE_COPY_DST_BIT_KHR = 2
    PEER_MEMORY_FEATURE_GENERIC_SRC_BIT_KHR = 4
    PEER_MEMORY_FEATURE_GENERIC_DST_BIT_KHR = 8
    PEER_MEMORY_FEATURE_FLAG_BITS_MAX_ENUM = 2147483647
end
@cenum SubgroupFeatureFlagBits::UInt32 begin
    SUBGROUP_FEATURE_BASIC_BIT = 1
    SUBGROUP_FEATURE_VOTE_BIT = 2
    SUBGROUP_FEATURE_ARITHMETIC_BIT = 4
    SUBGROUP_FEATURE_BALLOT_BIT = 8
    SUBGROUP_FEATURE_SHUFFLE_BIT = 16
    SUBGROUP_FEATURE_SHUFFLE_RELATIVE_BIT = 32
    SUBGROUP_FEATURE_CLUSTERED_BIT = 64
    SUBGROUP_FEATURE_QUAD_BIT = 128
    SUBGROUP_FEATURE_PARTITIONED_BIT_NV = 256
    SUBGROUP_FEATURE_FLAG_BITS_MAX_ENUM = 2147483647
end
@cenum DescriptorUpdateTemplateType::UInt32 begin
    DESCRIPTOR_UPDATE_TEMPLATE_TYPE_DESCRIPTOR_SET = 0
    DESCRIPTOR_UPDATE_TEMPLATE_TYPE_PUSH_DESCRIPTORS_KHR = 1
    DESCRIPTOR_UPDATE_TEMPLATE_TYPE_DESCRIPTOR_SET_KHR = 0
    DESCRIPTOR_UPDATE_TEMPLATE_TYPE_MAX_ENUM = 2147483647
end
@cenum ChromaLocation::UInt32 begin
    CHROMA_LOCATION_COSITED_EVEN = 0
    CHROMA_LOCATION_MIDPOINT = 1
    CHROMA_LOCATION_COSITED_EVEN_KHR = 0
    CHROMA_LOCATION_MIDPOINT_KHR = 1
    CHROMA_LOCATION_MAX_ENUM = 2147483647
end
@cenum SamplerYcbcrRange::UInt32 begin
    SAMPLER_YCBCR_RANGE_ITU_FULL = 0
    SAMPLER_YCBCR_RANGE_ITU_NARROW = 1
    SAMPLER_YCBCR_RANGE_ITU_FULL_KHR = 0
    SAMPLER_YCBCR_RANGE_ITU_NARROW_KHR = 1
    SAMPLER_YCBCR_RANGE_MAX_ENUM = 2147483647
end
@cenum SamplerYcbcrModelConversion::UInt32 begin
    SAMPLER_YCBCR_MODEL_CONVERSION_RGB_IDENTITY = 0
    SAMPLER_YCBCR_MODEL_CONVERSION_YCBCR_IDENTITY = 1
    SAMPLER_YCBCR_MODEL_CONVERSION_YCBCR_709 = 2
    SAMPLER_YCBCR_MODEL_CONVERSION_YCBCR_601 = 3
    SAMPLER_YCBCR_MODEL_CONVERSION_YCBCR_2020 = 4
    SAMPLER_YCBCR_MODEL_CONVERSION_RGB_IDENTITY_KHR = 0
    SAMPLER_YCBCR_MODEL_CONVERSION_YCBCR_IDENTITY_KHR = 1
    SAMPLER_YCBCR_MODEL_CONVERSION_YCBCR_709_KHR = 2
    SAMPLER_YCBCR_MODEL_CONVERSION_YCBCR_601_KHR = 3
    SAMPLER_YCBCR_MODEL_CONVERSION_YCBCR_2020_KHR = 4
    SAMPLER_YCBCR_MODEL_CONVERSION_MAX_ENUM = 2147483647
end
@cenum TessellationDomainOrigin::UInt32 begin
    TESSELLATION_DOMAIN_ORIGIN_UPPER_LEFT = 0
    TESSELLATION_DOMAIN_ORIGIN_LOWER_LEFT = 1
    TESSELLATION_DOMAIN_ORIGIN_UPPER_LEFT_KHR = 0
    TESSELLATION_DOMAIN_ORIGIN_LOWER_LEFT_KHR = 1
    TESSELLATION_DOMAIN_ORIGIN_MAX_ENUM = 2147483647
end
struct PipelineTessellationDomainOriginStateCreateInfo
    domain_origin::TessellationDomainOrigin
    vk::VkPipelineTessellationDomainOriginStateCreateInfo
end

@cenum PointClippingBehavior::UInt32 begin
    POINT_CLIPPING_BEHAVIOR_ALL_CLIP_PLANES = 0
    POINT_CLIPPING_BEHAVIOR_USER_CLIP_PLANES_ONLY = 1
    POINT_CLIPPING_BEHAVIOR_ALL_CLIP_PLANES_KHR = 0
    POINT_CLIPPING_BEHAVIOR_USER_CLIP_PLANES_ONLY_KHR = 1
    POINT_CLIPPING_BEHAVIOR_MAX_ENUM = 2147483647
end
struct PhysicalDevicePointClippingProperties
    point_clipping_behavior::PointClippingBehavior
end

@cenum StencilFaceFlagBits::UInt32 begin
    STENCIL_FACE_FRONT_BIT = 1
    STENCIL_FACE_BACK_BIT = 2
    STENCIL_FACE_FRONT_AND_BACK = 3
    STENCIL_FRONT_AND_BACK = 3
    STENCIL_FACE_FLAG_BITS_MAX_ENUM = 2147483647
end
@cenum CommandBufferResetFlagBits::UInt32 begin
    COMMAND_BUFFER_RESET_RELEASE_RESOURCES_BIT = 1
    COMMAND_BUFFER_RESET_FLAG_BITS_MAX_ENUM = 2147483647
end
@cenum QueryControlFlagBits::UInt32 begin
    QUERY_CONTROL_PRECISE_BIT = 1
    QUERY_CONTROL_FLAG_BITS_MAX_ENUM = 2147483647
end
@cenum CommandBufferUsageFlagBits::UInt32 begin
    COMMAND_BUFFER_USAGE_ONE_TIME_SUBMIT_BIT = 1
    COMMAND_BUFFER_USAGE_RENDER_PASS_CONTINUE_BIT = 2
    COMMAND_BUFFER_USAGE_SIMULTANEOUS_USE_BIT = 4
    COMMAND_BUFFER_USAGE_FLAG_BITS_MAX_ENUM = 2147483647
end
@cenum CommandPoolResetFlagBits::UInt32 begin
    COMMAND_POOL_RESET_RELEASE_RESOURCES_BIT = 1
    COMMAND_POOL_RESET_FLAG_BITS_MAX_ENUM = 2147483647
end
@cenum CommandPoolCreateFlagBits::UInt32 begin
    COMMAND_POOL_CREATE_TRANSIENT_BIT = 1
    COMMAND_POOL_CREATE_RESET_COMMAND_BUFFER_BIT = 2
    COMMAND_POOL_CREATE_PROTECTED_BIT = 4
    COMMAND_POOL_CREATE_FLAG_BITS_MAX_ENUM = 2147483647
end
@cenum SubpassDescriptionFlagBits::UInt32 begin
    SUBPASS_DESCRIPTION_PER_VIEW_ATTRIBUTES_BIT_NVX = 1
    SUBPASS_DESCRIPTION_PER_VIEW_POSITION_X_ONLY_BIT_NVX = 2
    SUBPASS_DESCRIPTION_FRAGMENT_REGION_BIT_QCOM = 4
    SUBPASS_DESCRIPTION_SHADER_RESOLVE_BIT_QCOM = 8
    SUBPASS_DESCRIPTION_FLAG_BITS_MAX_ENUM = 2147483647
end
@cenum RenderPassCreateFlagBits::UInt32 begin
    RENDER_PASS_CREATE_TRANSFORM_BIT_QCOM = 2
    RENDER_PASS_CREATE_FLAG_BITS_MAX_ENUM = 2147483647
end
@cenum FramebufferCreateFlagBits::UInt32 begin
    FRAMEBUFFER_CREATE_IMAGELESS_BIT = 1
    FRAMEBUFFER_CREATE_IMAGELESS_BIT_KHR = 1
    FRAMEBUFFER_CREATE_FLAG_BITS_MAX_ENUM = 2147483647
end
@cenum DependencyFlagBits::UInt32 begin
    DEPENDENCY_BY_REGION_BIT = 1
    DEPENDENCY_DEVICE_GROUP_BIT = 4
    DEPENDENCY_VIEW_LOCAL_BIT = 2
    DEPENDENCY_VIEW_LOCAL_BIT_KHR = 2
    DEPENDENCY_DEVICE_GROUP_BIT_KHR = 4
    DEPENDENCY_FLAG_BITS_MAX_ENUM = 2147483647
end
@cenum AttachmentDescriptionFlagBits::UInt32 begin
    ATTACHMENT_DESCRIPTION_MAY_ALIAS_BIT = 1
    ATTACHMENT_DESCRIPTION_FLAG_BITS_MAX_ENUM = 2147483647
end
@cenum DescriptorSetLayoutCreateFlagBits::UInt32 begin
    DESCRIPTOR_SET_LAYOUT_CREATE_UPDATE_AFTER_BIND_POOL_BIT = 2
    DESCRIPTOR_SET_LAYOUT_CREATE_PUSH_DESCRIPTOR_BIT_KHR = 1
    DESCRIPTOR_SET_LAYOUT_CREATE_UPDATE_AFTER_BIND_POOL_BIT_EXT = 2
    DESCRIPTOR_SET_LAYOUT_CREATE_FLAG_BITS_MAX_ENUM = 2147483647
end
@cenum DescriptorPoolCreateFlagBits::UInt32 begin
    DESCRIPTOR_POOL_CREATE_FREE_DESCRIPTOR_SET_BIT = 1
    DESCRIPTOR_POOL_CREATE_UPDATE_AFTER_BIND_BIT = 2
    DESCRIPTOR_POOL_CREATE_UPDATE_AFTER_BIND_BIT_EXT = 2
    DESCRIPTOR_POOL_CREATE_FLAG_BITS_MAX_ENUM = 2147483647
end
@cenum SamplerCreateFlagBits::UInt32 begin
    SAMPLER_CREATE_SUBSAMPLED_BIT_EXT = 1
    SAMPLER_CREATE_SUBSAMPLED_COARSE_RECONSTRUCTION_BIT_EXT = 2
    SAMPLER_CREATE_FLAG_BITS_MAX_ENUM = 2147483647
end
@cenum CullModeFlagBits::UInt32 begin
    CULL_MODE_NONE = 0
    CULL_MODE_FRONT_BIT = 1
    CULL_MODE_BACK_BIT = 2
    CULL_MODE_FRONT_AND_BACK = 3
    CULL_MODE_FLAG_BITS_MAX_ENUM = 2147483647
end
@cenum ShaderStageFlagBits::UInt32 begin
    SHADER_STAGE_VERTEX_BIT = 1
    SHADER_STAGE_TESSELLATION_CONTROL_BIT = 2
    SHADER_STAGE_TESSELLATION_EVALUATION_BIT = 4
    SHADER_STAGE_GEOMETRY_BIT = 8
    SHADER_STAGE_FRAGMENT_BIT = 16
    SHADER_STAGE_COMPUTE_BIT = 32
    SHADER_STAGE_ALL_GRAPHICS = 31
    SHADER_STAGE_ALL = 2147483647
    SHADER_STAGE_RAYGEN_BIT_KHR = 256
    SHADER_STAGE_ANY_HIT_BIT_KHR = 512
    SHADER_STAGE_CLOSEST_HIT_BIT_KHR = 1024
    SHADER_STAGE_MISS_BIT_KHR = 2048
    SHADER_STAGE_INTERSECTION_BIT_KHR = 4096
    SHADER_STAGE_CALLABLE_BIT_KHR = 8192
    SHADER_STAGE_TASK_BIT_NV = 64
    SHADER_STAGE_MESH_BIT_NV = 128
    SHADER_STAGE_RAYGEN_BIT_NV = 256
    SHADER_STAGE_ANY_HIT_BIT_NV = 512
    SHADER_STAGE_CLOSEST_HIT_BIT_NV = 1024
    SHADER_STAGE_MISS_BIT_NV = 2048
    SHADER_STAGE_INTERSECTION_BIT_NV = 4096
    SHADER_STAGE_CALLABLE_BIT_NV = 8192
    SHADER_STAGE_FLAG_BITS_MAX_ENUM = 2147483647
end
@cenum PipelineShaderStageCreateFlagBits::UInt32 begin
    PIPELINE_SHADER_STAGE_CREATE_ALLOW_VARYING_SUBGROUP_SIZE_BIT_EXT = 1
    PIPELINE_SHADER_STAGE_CREATE_REQUIRE_FULL_SUBGROUPS_BIT_EXT = 2
    PIPELINE_SHADER_STAGE_CREATE_FLAG_BITS_MAX_ENUM = 2147483647
end
@cenum PipelineCreateFlagBits::UInt32 begin
    PIPELINE_CREATE_DISABLE_OPTIMIZATION_BIT = 1
    PIPELINE_CREATE_ALLOW_DERIVATIVES_BIT = 2
    PIPELINE_CREATE_DERIVATIVE_BIT = 4
    PIPELINE_CREATE_VIEW_INDEX_FROM_DEVICE_INDEX_BIT = 8
    PIPELINE_CREATE_DISPATCH_BASE_BIT = 16
    PIPELINE_CREATE_RAY_TRACING_NO_NULL_ANY_HIT_SHADERS_BIT_KHR = 16384
    PIPELINE_CREATE_RAY_TRACING_NO_NULL_CLOSEST_HIT_SHADERS_BIT_KHR = 32768
    PIPELINE_CREATE_RAY_TRACING_NO_NULL_MISS_SHADERS_BIT_KHR = 65536
    PIPELINE_CREATE_RAY_TRACING_NO_NULL_INTERSECTION_SHADERS_BIT_KHR = 131072
    PIPELINE_CREATE_RAY_TRACING_SKIP_TRIANGLES_BIT_KHR = 4096
    PIPELINE_CREATE_RAY_TRACING_SKIP_AABBS_BIT_KHR = 8192
    PIPELINE_CREATE_DEFER_COMPILE_BIT_NV = 32
    PIPELINE_CREATE_CAPTURE_STATISTICS_BIT_KHR = 64
    PIPELINE_CREATE_CAPTURE_INTERNAL_REPRESENTATIONS_BIT_KHR = 128
    PIPELINE_CREATE_INDIRECT_BINDABLE_BIT_NV = 262144
    PIPELINE_CREATE_LIBRARY_BIT_KHR = 2048
    PIPELINE_CREATE_FAIL_ON_PIPELINE_COMPILE_REQUIRED_BIT_EXT = 256
    PIPELINE_CREATE_EARLY_RETURN_ON_FAILURE_BIT_EXT = 512
    PIPELINE_CREATE_DISPATCH_BASE = 16
    PIPELINE_CREATE_VIEW_INDEX_FROM_DEVICE_INDEX_BIT_KHR = 8
    PIPELINE_CREATE_DISPATCH_BASE_KHR = 16
    PIPELINE_CREATE_FLAG_BITS_MAX_ENUM = 2147483647
end
@cenum ColorComponentFlagBits::UInt32 begin
    COLOR_COMPONENT_R_BIT = 1
    COLOR_COMPONENT_G_BIT = 2
    COLOR_COMPONENT_B_BIT = 4
    COLOR_COMPONENT_A_BIT = 8
    COLOR_COMPONENT_FLAG_BITS_MAX_ENUM = 2147483647
end
@cenum PipelineCacheCreateFlagBits::UInt32 begin
    PIPELINE_CACHE_CREATE_EXTERNALLY_SYNCHRONIZED_BIT_EXT = 1
    PIPELINE_CACHE_CREATE_FLAG_BITS_MAX_ENUM = 2147483647
end
@cenum ShaderModuleCreateFlagBits::UInt32 begin
    SHADER_MODULE_CREATE_FLAG_BITS_MAX_ENUM = 2147483647
end
@cenum ImageViewCreateFlagBits::UInt32 begin
    IMAGE_VIEW_CREATE_FRAGMENT_DENSITY_MAP_DYNAMIC_BIT_EXT = 1
    IMAGE_VIEW_CREATE_FRAGMENT_DENSITY_MAP_DEFERRED_BIT_EXT = 2
    IMAGE_VIEW_CREATE_FLAG_BITS_MAX_ENUM = 2147483647
end
@cenum BufferUsageFlagBits::UInt32 begin
    BUFFER_USAGE_TRANSFER_SRC_BIT = 1
    BUFFER_USAGE_TRANSFER_DST_BIT = 2
    BUFFER_USAGE_UNIFORM_TEXEL_BUFFER_BIT = 4
    BUFFER_USAGE_STORAGE_TEXEL_BUFFER_BIT = 8
    BUFFER_USAGE_UNIFORM_BUFFER_BIT = 16
    BUFFER_USAGE_STORAGE_BUFFER_BIT = 32
    BUFFER_USAGE_INDEX_BUFFER_BIT = 64
    BUFFER_USAGE_VERTEX_BUFFER_BIT = 128
    BUFFER_USAGE_INDIRECT_BUFFER_BIT = 256
    BUFFER_USAGE_SHADER_DEVICE_ADDRESS_BIT = 131072
    BUFFER_USAGE_TRANSFORM_FEEDBACK_BUFFER_BIT_EXT = 2048
    BUFFER_USAGE_TRANSFORM_FEEDBACK_COUNTER_BUFFER_BIT_EXT = 4096
    BUFFER_USAGE_CONDITIONAL_RENDERING_BIT_EXT = 512
    BUFFER_USAGE_RAY_TRACING_BIT_KHR = 1024
    BUFFER_USAGE_RAY_TRACING_BIT_NV = 1024
    BUFFER_USAGE_SHADER_DEVICE_ADDRESS_BIT_EXT = 131072
    BUFFER_USAGE_SHADER_DEVICE_ADDRESS_BIT_KHR = 131072
    BUFFER_USAGE_FLAG_BITS_MAX_ENUM = 2147483647
end
@cenum BufferCreateFlagBits::UInt32 begin
    BUFFER_CREATE_SPARSE_BINDING_BIT = 1
    BUFFER_CREATE_SPARSE_RESIDENCY_BIT = 2
    BUFFER_CREATE_SPARSE_ALIASED_BIT = 4
    BUFFER_CREATE_PROTECTED_BIT = 8
    BUFFER_CREATE_DEVICE_ADDRESS_CAPTURE_REPLAY_BIT = 16
    BUFFER_CREATE_DEVICE_ADDRESS_CAPTURE_REPLAY_BIT_EXT = 16
    BUFFER_CREATE_DEVICE_ADDRESS_CAPTURE_REPLAY_BIT_KHR = 16
    BUFFER_CREATE_FLAG_BITS_MAX_ENUM = 2147483647
end
@cenum QueryResultFlagBits::UInt32 begin
    QUERY_RESULT_64_BIT = 1
    QUERY_RESULT_WAIT_BIT = 2
    QUERY_RESULT_WITH_AVAILABILITY_BIT = 4
    QUERY_RESULT_PARTIAL_BIT = 8
    QUERY_RESULT_FLAG_BITS_MAX_ENUM = 2147483647
end
@cenum QueryPipelineStatisticFlagBits::UInt32 begin
    QUERY_PIPELINE_STATISTIC_INPUT_ASSEMBLY_VERTICES_BIT = 1
    QUERY_PIPELINE_STATISTIC_INPUT_ASSEMBLY_PRIMITIVES_BIT = 2
    QUERY_PIPELINE_STATISTIC_VERTEX_SHADER_INVOCATIONS_BIT = 4
    QUERY_PIPELINE_STATISTIC_GEOMETRY_SHADER_INVOCATIONS_BIT = 8
    QUERY_PIPELINE_STATISTIC_GEOMETRY_SHADER_PRIMITIVES_BIT = 16
    QUERY_PIPELINE_STATISTIC_CLIPPING_INVOCATIONS_BIT = 32
    QUERY_PIPELINE_STATISTIC_CLIPPING_PRIMITIVES_BIT = 64
    QUERY_PIPELINE_STATISTIC_FRAGMENT_SHADER_INVOCATIONS_BIT = 128
    QUERY_PIPELINE_STATISTIC_TESSELLATION_CONTROL_SHADER_PATCHES_BIT = 256
    QUERY_PIPELINE_STATISTIC_TESSELLATION_EVALUATION_SHADER_INVOCATIONS_BIT = 512
    QUERY_PIPELINE_STATISTIC_COMPUTE_SHADER_INVOCATIONS_BIT = 1024
    QUERY_PIPELINE_STATISTIC_FLAG_BITS_MAX_ENUM = 2147483647
end
@cenum FenceCreateFlagBits::UInt32 begin
    FENCE_CREATE_SIGNALED_BIT = 1
    FENCE_CREATE_FLAG_BITS_MAX_ENUM = 2147483647
end
@cenum SparseImageFormatFlagBits::UInt32 begin
    SPARSE_IMAGE_FORMAT_SINGLE_MIPTAIL_BIT = 1
    SPARSE_IMAGE_FORMAT_ALIGNED_MIP_SIZE_BIT = 2
    SPARSE_IMAGE_FORMAT_NONSTANDARD_BLOCK_SIZE_BIT = 4
    SPARSE_IMAGE_FORMAT_FLAG_BITS_MAX_ENUM = 2147483647
end
@cenum SparseMemoryBindFlagBits::UInt32 begin
    SPARSE_MEMORY_BIND_METADATA_BIT = 1
    SPARSE_MEMORY_BIND_FLAG_BITS_MAX_ENUM = 2147483647
end
@cenum PipelineStageFlagBits::UInt32 begin
    PIPELINE_STAGE_TOP_OF_PIPE_BIT = 1
    PIPELINE_STAGE_DRAW_INDIRECT_BIT = 2
    PIPELINE_STAGE_VERTEX_INPUT_BIT = 4
    PIPELINE_STAGE_VERTEX_SHADER_BIT = 8
    PIPELINE_STAGE_TESSELLATION_CONTROL_SHADER_BIT = 16
    PIPELINE_STAGE_TESSELLATION_EVALUATION_SHADER_BIT = 32
    PIPELINE_STAGE_GEOMETRY_SHADER_BIT = 64
    PIPELINE_STAGE_FRAGMENT_SHADER_BIT = 128
    PIPELINE_STAGE_EARLY_FRAGMENT_TESTS_BIT = 256
    PIPELINE_STAGE_LATE_FRAGMENT_TESTS_BIT = 512
    PIPELINE_STAGE_COLOR_ATTACHMENT_OUTPUT_BIT = 1024
    PIPELINE_STAGE_COMPUTE_SHADER_BIT = 2048
    PIPELINE_STAGE_TRANSFER_BIT = 4096
    PIPELINE_STAGE_BOTTOM_OF_PIPE_BIT = 8192
    PIPELINE_STAGE_HOST_BIT = 16384
    PIPELINE_STAGE_ALL_GRAPHICS_BIT = 32768
    PIPELINE_STAGE_ALL_COMMANDS_BIT = 65536
    PIPELINE_STAGE_TRANSFORM_FEEDBACK_BIT_EXT = 16777216
    PIPELINE_STAGE_CONDITIONAL_RENDERING_BIT_EXT = 262144
    PIPELINE_STAGE_RAY_TRACING_SHADER_BIT_KHR = 2097152
    PIPELINE_STAGE_ACCELERATION_STRUCTURE_BUILD_BIT_KHR = 33554432
    PIPELINE_STAGE_SHADING_RATE_IMAGE_BIT_NV = 4194304
    PIPELINE_STAGE_TASK_SHADER_BIT_NV = 524288
    PIPELINE_STAGE_MESH_SHADER_BIT_NV = 1048576
    PIPELINE_STAGE_FRAGMENT_DENSITY_PROCESS_BIT_EXT = 8388608
    PIPELINE_STAGE_COMMAND_PREPROCESS_BIT_NV = 131072
    PIPELINE_STAGE_RAY_TRACING_SHADER_BIT_NV = 2097152
    PIPELINE_STAGE_ACCELERATION_STRUCTURE_BUILD_BIT_NV = 33554432
    PIPELINE_STAGE_FLAG_BITS_MAX_ENUM = 2147483647
end
struct CheckpointDataNV
    stage::PipelineStageFlagBits
    checkpoint_marker::Ptr{Cvoid}
end

@cenum DeviceQueueCreateFlagBits::UInt32 begin
    DEVICE_QUEUE_CREATE_PROTECTED_BIT = 1
    DEVICE_QUEUE_CREATE_FLAG_BITS_MAX_ENUM = 2147483647
end
@cenum QueueFlagBits::UInt32 begin
    QUEUE_GRAPHICS_BIT = 1
    QUEUE_COMPUTE_BIT = 2
    QUEUE_TRANSFER_BIT = 4
    QUEUE_SPARSE_BINDING_BIT = 8
    QUEUE_PROTECTED_BIT = 16
    QUEUE_FLAG_BITS_MAX_ENUM = 2147483647
end
@cenum MemoryPropertyFlagBits::UInt32 begin
    MEMORY_PROPERTY_DEVICE_LOCAL_BIT = 1
    MEMORY_PROPERTY_HOST_VISIBLE_BIT = 2
    MEMORY_PROPERTY_HOST_COHERENT_BIT = 4
    MEMORY_PROPERTY_HOST_CACHED_BIT = 8
    MEMORY_PROPERTY_LAZILY_ALLOCATED_BIT = 16
    MEMORY_PROPERTY_PROTECTED_BIT = 32
    MEMORY_PROPERTY_DEVICE_COHERENT_BIT_AMD = 64
    MEMORY_PROPERTY_DEVICE_UNCACHED_BIT_AMD = 128
    MEMORY_PROPERTY_FLAG_BITS_MAX_ENUM = 2147483647
end
@cenum MemoryHeapFlagBits::UInt32 begin
    MEMORY_HEAP_DEVICE_LOCAL_BIT = 1
    MEMORY_HEAP_MULTI_INSTANCE_BIT = 2
    MEMORY_HEAP_MULTI_INSTANCE_BIT_KHR = 2
    MEMORY_HEAP_FLAG_BITS_MAX_ENUM = 2147483647
end
@cenum ImageUsageFlagBits::UInt32 begin
    IMAGE_USAGE_TRANSFER_SRC_BIT = 1
    IMAGE_USAGE_TRANSFER_DST_BIT = 2
    IMAGE_USAGE_SAMPLED_BIT = 4
    IMAGE_USAGE_STORAGE_BIT = 8
    IMAGE_USAGE_COLOR_ATTACHMENT_BIT = 16
    IMAGE_USAGE_DEPTH_STENCIL_ATTACHMENT_BIT = 32
    IMAGE_USAGE_TRANSIENT_ATTACHMENT_BIT = 64
    IMAGE_USAGE_INPUT_ATTACHMENT_BIT = 128
    IMAGE_USAGE_SHADING_RATE_IMAGE_BIT_NV = 256
    IMAGE_USAGE_FRAGMENT_DENSITY_MAP_BIT_EXT = 512
    IMAGE_USAGE_FLAG_BITS_MAX_ENUM = 2147483647
end
@cenum SampleCountFlagBits::UInt32 begin
    SAMPLE_COUNT_1_BIT = 1
    SAMPLE_COUNT_2_BIT = 2
    SAMPLE_COUNT_4_BIT = 4
    SAMPLE_COUNT_8_BIT = 8
    SAMPLE_COUNT_16_BIT = 16
    SAMPLE_COUNT_32_BIT = 32
    SAMPLE_COUNT_64_BIT = 64
    SAMPLE_COUNT_FLAG_BITS_MAX_ENUM = 2147483647
end
struct SampleLocationsInfoEXT
    sample_locations_per_pixel::SampleCountFlagBits
    sample_location_grid_size::Extent2D
    sample_locations::SampleLocationEXT
    vk::VkSampleLocationsInfoEXT
end

struct PipelineSampleLocationsStateCreateInfoEXT
    sample_locations_enable::Bool
    sample_locations_info::SampleLocationsInfoEXT
    vk::VkPipelineSampleLocationsStateCreateInfoEXT
end

struct SubpassSampleLocationsEXT
    subpass_index::UInt32
    sample_locations_info::SampleLocationsInfoEXT
    vk::VkSubpassSampleLocationsEXT
end

struct AttachmentSampleLocationsEXT
    attachment_index::UInt32
    sample_locations_info::SampleLocationsInfoEXT
    vk::VkAttachmentSampleLocationsEXT
end

struct RenderPassSampleLocationsBeginInfoEXT
    attachment_initial_sample_locations::AttachmentSampleLocationsEXT
    post_subpass_sample_locations::SubpassSampleLocationsEXT
    vk::VkRenderPassSampleLocationsBeginInfoEXT
end

@cenum ImageCreateFlagBits::UInt32 begin
    IMAGE_CREATE_SPARSE_BINDING_BIT = 1
    IMAGE_CREATE_SPARSE_RESIDENCY_BIT = 2
    IMAGE_CREATE_SPARSE_ALIASED_BIT = 4
    IMAGE_CREATE_MUTABLE_FORMAT_BIT = 8
    IMAGE_CREATE_CUBE_COMPATIBLE_BIT = 16
    IMAGE_CREATE_ALIAS_BIT = 1024
    IMAGE_CREATE_SPLIT_INSTANCE_BIND_REGIONS_BIT = 64
    IMAGE_CREATE_2D_ARRAY_COMPATIBLE_BIT = 32
    IMAGE_CREATE_BLOCK_TEXEL_VIEW_COMPATIBLE_BIT = 128
    IMAGE_CREATE_EXTENDED_USAGE_BIT = 256
    IMAGE_CREATE_PROTECTED_BIT = 2048
    IMAGE_CREATE_DISJOINT_BIT = 512
    IMAGE_CREATE_CORNER_SAMPLED_BIT_NV = 8192
    IMAGE_CREATE_SAMPLE_LOCATIONS_COMPATIBLE_DEPTH_BIT_EXT = 4096
    IMAGE_CREATE_SUBSAMPLED_BIT_EXT = 16384
    IMAGE_CREATE_SPLIT_INSTANCE_BIND_REGIONS_BIT_KHR = 64
    IMAGE_CREATE_2D_ARRAY_COMPATIBLE_BIT_KHR = 32
    IMAGE_CREATE_BLOCK_TEXEL_VIEW_COMPATIBLE_BIT_KHR = 128
    IMAGE_CREATE_EXTENDED_USAGE_BIT_KHR = 256
    IMAGE_CREATE_DISJOINT_BIT_KHR = 512
    IMAGE_CREATE_ALIAS_BIT_KHR = 1024
    IMAGE_CREATE_FLAG_BITS_MAX_ENUM = 2147483647
end
@cenum FormatFeatureFlagBits::UInt32 begin
    FORMAT_FEATURE_SAMPLED_IMAGE_BIT = 1
    FORMAT_FEATURE_STORAGE_IMAGE_BIT = 2
    FORMAT_FEATURE_STORAGE_IMAGE_ATOMIC_BIT = 4
    FORMAT_FEATURE_UNIFORM_TEXEL_BUFFER_BIT = 8
    FORMAT_FEATURE_STORAGE_TEXEL_BUFFER_BIT = 16
    FORMAT_FEATURE_STORAGE_TEXEL_BUFFER_ATOMIC_BIT = 32
    FORMAT_FEATURE_VERTEX_BUFFER_BIT = 64
    FORMAT_FEATURE_COLOR_ATTACHMENT_BIT = 128
    FORMAT_FEATURE_COLOR_ATTACHMENT_BLEND_BIT = 256
    FORMAT_FEATURE_DEPTH_STENCIL_ATTACHMENT_BIT = 512
    FORMAT_FEATURE_BLIT_SRC_BIT = 1024
    FORMAT_FEATURE_BLIT_DST_BIT = 2048
    FORMAT_FEATURE_SAMPLED_IMAGE_FILTER_LINEAR_BIT = 4096
    FORMAT_FEATURE_TRANSFER_SRC_BIT = 16384
    FORMAT_FEATURE_TRANSFER_DST_BIT = 32768
    FORMAT_FEATURE_MIDPOINT_CHROMA_SAMPLES_BIT = 131072
    FORMAT_FEATURE_SAMPLED_IMAGE_YCBCR_CONVERSION_LINEAR_FILTER_BIT = 262144
    FORMAT_FEATURE_SAMPLED_IMAGE_YCBCR_CONVERSION_SEPARATE_RECONSTRUCTION_FILTER_BIT = 524288
    FORMAT_FEATURE_SAMPLED_IMAGE_YCBCR_CONVERSION_CHROMA_RECONSTRUCTION_EXPLICIT_BIT = 1048576
    FORMAT_FEATURE_SAMPLED_IMAGE_YCBCR_CONVERSION_CHROMA_RECONSTRUCTION_EXPLICIT_FORCEABLE_BIT = 2097152
    FORMAT_FEATURE_DISJOINT_BIT = 4194304
    FORMAT_FEATURE_COSITED_CHROMA_SAMPLES_BIT = 8388608
    FORMAT_FEATURE_SAMPLED_IMAGE_FILTER_MINMAX_BIT = 65536
    FORMAT_FEATURE_SAMPLED_IMAGE_FILTER_CUBIC_BIT_IMG = 8192
    FORMAT_FEATURE_ACCELERATION_STRUCTURE_VERTEX_BUFFER_BIT_KHR = 536870912
    FORMAT_FEATURE_FRAGMENT_DENSITY_MAP_BIT_EXT = 16777216
    FORMAT_FEATURE_TRANSFER_SRC_BIT_KHR = 16384
    FORMAT_FEATURE_TRANSFER_DST_BIT_KHR = 32768
    FORMAT_FEATURE_SAMPLED_IMAGE_FILTER_MINMAX_BIT_EXT = 65536
    FORMAT_FEATURE_MIDPOINT_CHROMA_SAMPLES_BIT_KHR = 131072
    FORMAT_FEATURE_SAMPLED_IMAGE_YCBCR_CONVERSION_LINEAR_FILTER_BIT_KHR = 262144
    FORMAT_FEATURE_SAMPLED_IMAGE_YCBCR_CONVERSION_SEPARATE_RECONSTRUCTION_FILTER_BIT_KHR = 524288
    FORMAT_FEATURE_SAMPLED_IMAGE_YCBCR_CONVERSION_CHROMA_RECONSTRUCTION_EXPLICIT_BIT_KHR = 1048576
    FORMAT_FEATURE_SAMPLED_IMAGE_YCBCR_CONVERSION_CHROMA_RECONSTRUCTION_EXPLICIT_FORCEABLE_BIT_KHR = 2097152
    FORMAT_FEATURE_DISJOINT_BIT_KHR = 4194304
    FORMAT_FEATURE_COSITED_CHROMA_SAMPLES_BIT_KHR = 8388608
    FORMAT_FEATURE_SAMPLED_IMAGE_FILTER_CUBIC_BIT_EXT = 8192
    FORMAT_FEATURE_FLAG_BITS_MAX_ENUM = 2147483647
end
@cenum ImageAspectFlagBits::UInt32 begin
    IMAGE_ASPECT_COLOR_BIT = 1
    IMAGE_ASPECT_DEPTH_BIT = 2
    IMAGE_ASPECT_STENCIL_BIT = 4
    IMAGE_ASPECT_METADATA_BIT = 8
    IMAGE_ASPECT_PLANE_0_BIT = 16
    IMAGE_ASPECT_PLANE_1_BIT = 32
    IMAGE_ASPECT_PLANE_2_BIT = 64
    IMAGE_ASPECT_MEMORY_PLANE_0_BIT_EXT = 128
    IMAGE_ASPECT_MEMORY_PLANE_1_BIT_EXT = 256
    IMAGE_ASPECT_MEMORY_PLANE_2_BIT_EXT = 512
    IMAGE_ASPECT_MEMORY_PLANE_3_BIT_EXT = 1024
    IMAGE_ASPECT_PLANE_0_BIT_KHR = 16
    IMAGE_ASPECT_PLANE_1_BIT_KHR = 32
    IMAGE_ASPECT_PLANE_2_BIT_KHR = 64
    IMAGE_ASPECT_FLAG_BITS_MAX_ENUM = 2147483647
end
struct ImagePlaneMemoryRequirementsInfo
    plane_aspect::ImageAspectFlagBits
    vk::VkImagePlaneMemoryRequirementsInfo
end

struct BindImagePlaneMemoryInfo
    plane_aspect::ImageAspectFlagBits
    vk::VkBindImagePlaneMemoryInfo
end

@cenum AccessFlagBits::UInt32 begin
    ACCESS_INDIRECT_COMMAND_READ_BIT = 1
    ACCESS_INDEX_READ_BIT = 2
    ACCESS_VERTEX_ATTRIBUTE_READ_BIT = 4
    ACCESS_UNIFORM_READ_BIT = 8
    ACCESS_INPUT_ATTACHMENT_READ_BIT = 16
    ACCESS_SHADER_READ_BIT = 32
    ACCESS_SHADER_WRITE_BIT = 64
    ACCESS_COLOR_ATTACHMENT_READ_BIT = 128
    ACCESS_COLOR_ATTACHMENT_WRITE_BIT = 256
    ACCESS_DEPTH_STENCIL_ATTACHMENT_READ_BIT = 512
    ACCESS_DEPTH_STENCIL_ATTACHMENT_WRITE_BIT = 1024
    ACCESS_TRANSFER_READ_BIT = 2048
    ACCESS_TRANSFER_WRITE_BIT = 4096
    ACCESS_HOST_READ_BIT = 8192
    ACCESS_HOST_WRITE_BIT = 16384
    ACCESS_MEMORY_READ_BIT = 32768
    ACCESS_MEMORY_WRITE_BIT = 65536
    ACCESS_TRANSFORM_FEEDBACK_WRITE_BIT_EXT = 33554432
    ACCESS_TRANSFORM_FEEDBACK_COUNTER_READ_BIT_EXT = 67108864
    ACCESS_TRANSFORM_FEEDBACK_COUNTER_WRITE_BIT_EXT = 134217728
    ACCESS_CONDITIONAL_RENDERING_READ_BIT_EXT = 1048576
    ACCESS_COLOR_ATTACHMENT_READ_NONCOHERENT_BIT_EXT = 524288
    ACCESS_ACCELERATION_STRUCTURE_READ_BIT_KHR = 2097152
    ACCESS_ACCELERATION_STRUCTURE_WRITE_BIT_KHR = 4194304
    ACCESS_SHADING_RATE_IMAGE_READ_BIT_NV = 8388608
    ACCESS_FRAGMENT_DENSITY_MAP_READ_BIT_EXT = 16777216
    ACCESS_COMMAND_PREPROCESS_READ_BIT_NV = 131072
    ACCESS_COMMAND_PREPROCESS_WRITE_BIT_NV = 262144
    ACCESS_ACCELERATION_STRUCTURE_READ_BIT_NV = 2097152
    ACCESS_ACCELERATION_STRUCTURE_WRITE_BIT_NV = 4194304
    ACCESS_FLAG_BITS_MAX_ENUM = 2147483647
end
@cenum SubpassContents::UInt32 begin
    SUBPASS_CONTENTS_INLINE = 0
    SUBPASS_CONTENTS_SECONDARY_COMMAND_BUFFERS = 1
    SUBPASS_CONTENTS_MAX_ENUM = 2147483647
end
struct SubpassBeginInfo
    contents::SubpassContents
    vk::VkSubpassBeginInfo
end

@cenum IndexType::UInt32 begin
    INDEX_TYPE_UINT16 = 0
    INDEX_TYPE_UINT32 = 1
    INDEX_TYPE_NONE_KHR = 1000165000
    INDEX_TYPE_UINT8_EXT = 1000265000
    INDEX_TYPE_NONE_NV = 1000165000
    INDEX_TYPE_MAX_ENUM = 2147483647
end
@cenum CommandBufferLevel::UInt32 begin
    COMMAND_BUFFER_LEVEL_PRIMARY = 0
    COMMAND_BUFFER_LEVEL_SECONDARY = 1
    COMMAND_BUFFER_LEVEL_MAX_ENUM = 2147483647
end
@cenum PipelineBindPoint::UInt32 begin
    PIPELINE_BIND_POINT_GRAPHICS = 0
    PIPELINE_BIND_POINT_COMPUTE = 1
    PIPELINE_BIND_POINT_RAY_TRACING_KHR = 1000165000
    PIPELINE_BIND_POINT_RAY_TRACING_NV = 1000165000
    PIPELINE_BIND_POINT_MAX_ENUM = 2147483647
end
@cenum AttachmentStoreOp::UInt32 begin
    ATTACHMENT_STORE_OP_STORE = 0
    ATTACHMENT_STORE_OP_DONT_CARE = 1
    ATTACHMENT_STORE_OP_NONE_QCOM = 1000301000
    ATTACHMENT_STORE_OP_MAX_ENUM = 2147483647
end
@cenum AttachmentLoadOp::UInt32 begin
    ATTACHMENT_LOAD_OP_LOAD = 0
    ATTACHMENT_LOAD_OP_CLEAR = 1
    ATTACHMENT_LOAD_OP_DONT_CARE = 2
    ATTACHMENT_LOAD_OP_MAX_ENUM = 2147483647
end
@cenum DescriptorType::UInt32 begin
    DESCRIPTOR_TYPE_SAMPLER = 0
    DESCRIPTOR_TYPE_COMBINED_IMAGE_SAMPLER = 1
    DESCRIPTOR_TYPE_SAMPLED_IMAGE = 2
    DESCRIPTOR_TYPE_STORAGE_IMAGE = 3
    DESCRIPTOR_TYPE_UNIFORM_TEXEL_BUFFER = 4
    DESCRIPTOR_TYPE_STORAGE_TEXEL_BUFFER = 5
    DESCRIPTOR_TYPE_UNIFORM_BUFFER = 6
    DESCRIPTOR_TYPE_STORAGE_BUFFER = 7
    DESCRIPTOR_TYPE_UNIFORM_BUFFER_DYNAMIC = 8
    DESCRIPTOR_TYPE_STORAGE_BUFFER_DYNAMIC = 9
    DESCRIPTOR_TYPE_INPUT_ATTACHMENT = 10
    DESCRIPTOR_TYPE_INLINE_UNIFORM_BLOCK_EXT = 1000138000
    DESCRIPTOR_TYPE_ACCELERATION_STRUCTURE_KHR = 1000165000
    DESCRIPTOR_TYPE_ACCELERATION_STRUCTURE_NV = 1000165000
    DESCRIPTOR_TYPE_MAX_ENUM = 2147483647
end
struct DescriptorUpdateTemplateEntry
    dst_binding::UInt32
    dst_array_element::UInt32
    descriptor_count::UInt32
    descriptor_type::DescriptorType
    offset::UInt
    stride::UInt
    vk::VkDescriptorUpdateTemplateEntry
end

struct DescriptorPoolSize
    type::DescriptorType
    descriptor_count::UInt32
    vk::VkDescriptorPoolSize
end

struct DescriptorPoolCreateInfo
    max_sets::UInt32
    pool_sizes::DescriptorPoolSize
    vk::VkDescriptorPoolCreateInfo
end

@cenum SamplerMipmapMode::UInt32 begin
    SAMPLER_MIPMAP_MODE_NEAREST = 0
    SAMPLER_MIPMAP_MODE_LINEAR = 1
    SAMPLER_MIPMAP_MODE_MAX_ENUM = 2147483647
end
@cenum SamplerAddressMode::UInt32 begin
    SAMPLER_ADDRESS_MODE_REPEAT = 0
    SAMPLER_ADDRESS_MODE_MIRRORED_REPEAT = 1
    SAMPLER_ADDRESS_MODE_CLAMP_TO_EDGE = 2
    SAMPLER_ADDRESS_MODE_CLAMP_TO_BORDER = 3
    SAMPLER_ADDRESS_MODE_MIRROR_CLAMP_TO_EDGE = 4
    SAMPLER_ADDRESS_MODE_MIRROR_CLAMP_TO_EDGE_KHR = 4
    SAMPLER_ADDRESS_MODE_MAX_ENUM = 2147483647
end
@cenum Filter::UInt32 begin
    FILTER_NEAREST = 0
    FILTER_LINEAR = 1
    FILTER_CUBIC_IMG = 1000015000
    FILTER_CUBIC_EXT = 1000015000
    FILTER_MAX_ENUM = 2147483647
end
@cenum BorderColor::UInt32 begin
    BORDER_COLOR_FLOAT_TRANSPARENT_BLACK = 0
    BORDER_COLOR_INT_TRANSPARENT_BLACK = 1
    BORDER_COLOR_FLOAT_OPAQUE_BLACK = 2
    BORDER_COLOR_INT_OPAQUE_BLACK = 3
    BORDER_COLOR_FLOAT_OPAQUE_WHITE = 4
    BORDER_COLOR_INT_OPAQUE_WHITE = 5
    BORDER_COLOR_FLOAT_CUSTOM_EXT = 1000287003
    BORDER_COLOR_INT_CUSTOM_EXT = 1000287004
    BORDER_COLOR_MAX_ENUM = 2147483647
end
@cenum LogicOp::UInt32 begin
    LOGIC_OP_CLEAR = 0
    LOGIC_OP_AND = 1
    LOGIC_OP_AND_REVERSE = 2
    LOGIC_OP_COPY = 3
    LOGIC_OP_AND_INVERTED = 4
    LOGIC_OP_NO_OP = 5
    LOGIC_OP_XOR = 6
    LOGIC_OP_OR = 7
    LOGIC_OP_NOR = 8
    LOGIC_OP_EQUIVALENT = 9
    LOGIC_OP_INVERT = 10
    LOGIC_OP_OR_REVERSE = 11
    LOGIC_OP_COPY_INVERTED = 12
    LOGIC_OP_OR_INVERTED = 13
    LOGIC_OP_NAND = 14
    LOGIC_OP_SET = 15
    LOGIC_OP_MAX_ENUM = 2147483647
end
@cenum StencilOp::UInt32 begin
    STENCIL_OP_KEEP = 0
    STENCIL_OP_ZERO = 1
    STENCIL_OP_REPLACE = 2
    STENCIL_OP_INCREMENT_AND_CLAMP = 3
    STENCIL_OP_DECREMENT_AND_CLAMP = 4
    STENCIL_OP_INVERT = 5
    STENCIL_OP_INCREMENT_AND_WRAP = 6
    STENCIL_OP_DECREMENT_AND_WRAP = 7
    STENCIL_OP_MAX_ENUM = 2147483647
end
@cenum PolygonMode::UInt32 begin
    POLYGON_MODE_FILL = 0
    POLYGON_MODE_LINE = 1
    POLYGON_MODE_POINT = 2
    POLYGON_MODE_FILL_RECTANGLE_NV = 1000153000
    POLYGON_MODE_MAX_ENUM = 2147483647
end
@cenum PrimitiveTopology::UInt32 begin
    PRIMITIVE_TOPOLOGY_POINT_LIST = 0
    PRIMITIVE_TOPOLOGY_LINE_LIST = 1
    PRIMITIVE_TOPOLOGY_LINE_STRIP = 2
    PRIMITIVE_TOPOLOGY_TRIANGLE_LIST = 3
    PRIMITIVE_TOPOLOGY_TRIANGLE_STRIP = 4
    PRIMITIVE_TOPOLOGY_TRIANGLE_FAN = 5
    PRIMITIVE_TOPOLOGY_LINE_LIST_WITH_ADJACENCY = 6
    PRIMITIVE_TOPOLOGY_LINE_STRIP_WITH_ADJACENCY = 7
    PRIMITIVE_TOPOLOGY_TRIANGLE_LIST_WITH_ADJACENCY = 8
    PRIMITIVE_TOPOLOGY_TRIANGLE_STRIP_WITH_ADJACENCY = 9
    PRIMITIVE_TOPOLOGY_PATCH_LIST = 10
    PRIMITIVE_TOPOLOGY_MAX_ENUM = 2147483647
end
struct PipelineInputAssemblyStateCreateInfo
    topology::PrimitiveTopology
    primitive_restart_enable::Bool
    vk::VkPipelineInputAssemblyStateCreateInfo
end

@cenum VertexInputRate::UInt32 begin
    VERTEX_INPUT_RATE_VERTEX = 0
    VERTEX_INPUT_RATE_INSTANCE = 1
    VERTEX_INPUT_RATE_MAX_ENUM = 2147483647
end
struct VertexInputBindingDescription
    binding::UInt32
    stride::UInt32
    input_rate::VertexInputRate
    vk::VkVertexInputBindingDescription
end

@cenum FrontFace::UInt32 begin
    FRONT_FACE_COUNTER_CLOCKWISE = 0
    FRONT_FACE_CLOCKWISE = 1
    FRONT_FACE_MAX_ENUM = 2147483647
end
@cenum DynamicState::UInt32 begin
    DYNAMIC_STATE_VIEWPORT = 0
    DYNAMIC_STATE_SCISSOR = 1
    DYNAMIC_STATE_LINE_WIDTH = 2
    DYNAMIC_STATE_DEPTH_BIAS = 3
    DYNAMIC_STATE_BLEND_CONSTANTS = 4
    DYNAMIC_STATE_DEPTH_BOUNDS = 5
    DYNAMIC_STATE_STENCIL_COMPARE_MASK = 6
    DYNAMIC_STATE_STENCIL_WRITE_MASK = 7
    DYNAMIC_STATE_STENCIL_REFERENCE = 8
    DYNAMIC_STATE_VIEWPORT_W_SCALING_NV = 1000087000
    DYNAMIC_STATE_DISCARD_RECTANGLE_EXT = 1000099000
    DYNAMIC_STATE_SAMPLE_LOCATIONS_EXT = 1000143000
    DYNAMIC_STATE_VIEWPORT_SHADING_RATE_PALETTE_NV = 1000164004
    DYNAMIC_STATE_VIEWPORT_COARSE_SAMPLE_ORDER_NV = 1000164006
    DYNAMIC_STATE_EXCLUSIVE_SCISSOR_NV = 1000205001
    DYNAMIC_STATE_LINE_STIPPLE_EXT = 1000259000
    DYNAMIC_STATE_CULL_MODE_EXT = 1000267000
    DYNAMIC_STATE_FRONT_FACE_EXT = 1000267001
    DYNAMIC_STATE_PRIMITIVE_TOPOLOGY_EXT = 1000267002
    DYNAMIC_STATE_VIEWPORT_WITH_COUNT_EXT = 1000267003
    DYNAMIC_STATE_SCISSOR_WITH_COUNT_EXT = 1000267004
    DYNAMIC_STATE_VERTEX_INPUT_BINDING_STRIDE_EXT = 1000267005
    DYNAMIC_STATE_DEPTH_TEST_ENABLE_EXT = 1000267006
    DYNAMIC_STATE_DEPTH_WRITE_ENABLE_EXT = 1000267007
    DYNAMIC_STATE_DEPTH_COMPARE_OP_EXT = 1000267008
    DYNAMIC_STATE_DEPTH_BOUNDS_TEST_ENABLE_EXT = 1000267009
    DYNAMIC_STATE_STENCIL_TEST_ENABLE_EXT = 1000267010
    DYNAMIC_STATE_STENCIL_OP_EXT = 1000267011
    DYNAMIC_STATE_MAX_ENUM = 2147483647
end
struct PipelineDynamicStateCreateInfo
    dynamic_states::DynamicState
    vk::VkPipelineDynamicStateCreateInfo
end

@cenum CompareOp::UInt32 begin
    COMPARE_OP_NEVER = 0
    COMPARE_OP_LESS = 1
    COMPARE_OP_EQUAL = 2
    COMPARE_OP_LESS_OR_EQUAL = 3
    COMPARE_OP_GREATER = 4
    COMPARE_OP_NOT_EQUAL = 5
    COMPARE_OP_GREATER_OR_EQUAL = 6
    COMPARE_OP_ALWAYS = 7
    COMPARE_OP_MAX_ENUM = 2147483647
end
struct SamplerCreateInfo
    mag_filter::Filter
    min_filter::Filter
    mipmap_mode::SamplerMipmapMode
    address_mode_u::SamplerAddressMode
    address_mode_v::SamplerAddressMode
    address_mode_w::SamplerAddressMode
    mip_lod_bias::Float32
    anisotropy_enable::Bool
    max_anisotropy::Float32
    compare_enable::Bool
    compare_op::CompareOp
    min_lod::Float32
    max_lod::Float32
    border_color::BorderColor
    unnormalized_coordinates::Bool
    vk::VkSamplerCreateInfo
end

struct StencilOpState
    fail_op::StencilOp
    pass_op::StencilOp
    depth_fail_op::StencilOp
    compare_op::CompareOp
    compare_mask::UInt32
    write_mask::UInt32
    reference::UInt32
    vk::VkStencilOpState
end

struct PipelineDepthStencilStateCreateInfo
    depth_test_enable::Bool
    depth_write_enable::Bool
    depth_compare_op::CompareOp
    depth_bounds_test_enable::Bool
    stencil_test_enable::Bool
    front::StencilOpState
    back::StencilOpState
    min_depth_bounds::Float32
    max_depth_bounds::Float32
    vk::VkPipelineDepthStencilStateCreateInfo
end

@cenum BlendOp::UInt32 begin
    BLEND_OP_ADD = 0
    BLEND_OP_SUBTRACT = 1
    BLEND_OP_REVERSE_SUBTRACT = 2
    BLEND_OP_MIN = 3
    BLEND_OP_MAX = 4
    BLEND_OP_ZERO_EXT = 1000148000
    BLEND_OP_SRC_EXT = 1000148001
    BLEND_OP_DST_EXT = 1000148002
    BLEND_OP_SRC_OVER_EXT = 1000148003
    BLEND_OP_DST_OVER_EXT = 1000148004
    BLEND_OP_SRC_IN_EXT = 1000148005
    BLEND_OP_DST_IN_EXT = 1000148006
    BLEND_OP_SRC_OUT_EXT = 1000148007
    BLEND_OP_DST_OUT_EXT = 1000148008
    BLEND_OP_SRC_ATOP_EXT = 1000148009
    BLEND_OP_DST_ATOP_EXT = 1000148010
    BLEND_OP_XOR_EXT = 1000148011
    BLEND_OP_MULTIPLY_EXT = 1000148012
    BLEND_OP_SCREEN_EXT = 1000148013
    BLEND_OP_OVERLAY_EXT = 1000148014
    BLEND_OP_DARKEN_EXT = 1000148015
    BLEND_OP_LIGHTEN_EXT = 1000148016
    BLEND_OP_COLORDODGE_EXT = 1000148017
    BLEND_OP_COLORBURN_EXT = 1000148018
    BLEND_OP_HARDLIGHT_EXT = 1000148019
    BLEND_OP_SOFTLIGHT_EXT = 1000148020
    BLEND_OP_DIFFERENCE_EXT = 1000148021
    BLEND_OP_EXCLUSION_EXT = 1000148022
    BLEND_OP_INVERT_EXT = 1000148023
    BLEND_OP_INVERT_RGB_EXT = 1000148024
    BLEND_OP_LINEARDODGE_EXT = 1000148025
    BLEND_OP_LINEARBURN_EXT = 1000148026
    BLEND_OP_VIVIDLIGHT_EXT = 1000148027
    BLEND_OP_LINEARLIGHT_EXT = 1000148028
    BLEND_OP_PINLIGHT_EXT = 1000148029
    BLEND_OP_HARDMIX_EXT = 1000148030
    BLEND_OP_HSL_HUE_EXT = 1000148031
    BLEND_OP_HSL_SATURATION_EXT = 1000148032
    BLEND_OP_HSL_COLOR_EXT = 1000148033
    BLEND_OP_HSL_LUMINOSITY_EXT = 1000148034
    BLEND_OP_PLUS_EXT = 1000148035
    BLEND_OP_PLUS_CLAMPED_EXT = 1000148036
    BLEND_OP_PLUS_CLAMPED_ALPHA_EXT = 1000148037
    BLEND_OP_PLUS_DARKER_EXT = 1000148038
    BLEND_OP_MINUS_EXT = 1000148039
    BLEND_OP_MINUS_CLAMPED_EXT = 1000148040
    BLEND_OP_CONTRAST_EXT = 1000148041
    BLEND_OP_INVERT_OVG_EXT = 1000148042
    BLEND_OP_RED_EXT = 1000148043
    BLEND_OP_GREEN_EXT = 1000148044
    BLEND_OP_BLUE_EXT = 1000148045
    BLEND_OP_MAX_ENUM = 2147483647
end
@cenum BlendFactor::UInt32 begin
    BLEND_FACTOR_ZERO = 0
    BLEND_FACTOR_ONE = 1
    BLEND_FACTOR_SRC_COLOR = 2
    BLEND_FACTOR_ONE_MINUS_SRC_COLOR = 3
    BLEND_FACTOR_DST_COLOR = 4
    BLEND_FACTOR_ONE_MINUS_DST_COLOR = 5
    BLEND_FACTOR_SRC_ALPHA = 6
    BLEND_FACTOR_ONE_MINUS_SRC_ALPHA = 7
    BLEND_FACTOR_DST_ALPHA = 8
    BLEND_FACTOR_ONE_MINUS_DST_ALPHA = 9
    BLEND_FACTOR_CONSTANT_COLOR = 10
    BLEND_FACTOR_ONE_MINUS_CONSTANT_COLOR = 11
    BLEND_FACTOR_CONSTANT_ALPHA = 12
    BLEND_FACTOR_ONE_MINUS_CONSTANT_ALPHA = 13
    BLEND_FACTOR_SRC_ALPHA_SATURATE = 14
    BLEND_FACTOR_SRC1_COLOR = 15
    BLEND_FACTOR_ONE_MINUS_SRC1_COLOR = 16
    BLEND_FACTOR_SRC1_ALPHA = 17
    BLEND_FACTOR_ONE_MINUS_SRC1_ALPHA = 18
    BLEND_FACTOR_MAX_ENUM = 2147483647
end
@cenum ImageViewType::UInt32 begin
    IMAGE_VIEW_TYPE_1D = 0
    IMAGE_VIEW_TYPE_2D = 1
    IMAGE_VIEW_TYPE_3D = 2
    IMAGE_VIEW_TYPE_CUBE = 3
    IMAGE_VIEW_TYPE_1D_ARRAY = 4
    IMAGE_VIEW_TYPE_2D_ARRAY = 5
    IMAGE_VIEW_TYPE_CUBE_ARRAY = 6
    IMAGE_VIEW_TYPE_MAX_ENUM = 2147483647
end
struct PhysicalDeviceImageViewImageFormatInfoEXT
    image_view_type::ImageViewType
    vk::VkPhysicalDeviceImageViewImageFormatInfoEXT
end

@cenum ComponentSwizzle::UInt32 begin
    COMPONENT_SWIZZLE_IDENTITY = 0
    COMPONENT_SWIZZLE_ZERO = 1
    COMPONENT_SWIZZLE_ONE = 2
    COMPONENT_SWIZZLE_R = 3
    COMPONENT_SWIZZLE_G = 4
    COMPONENT_SWIZZLE_B = 5
    COMPONENT_SWIZZLE_A = 6
    COMPONENT_SWIZZLE_MAX_ENUM = 2147483647
end
struct ComponentMapping
    r::ComponentSwizzle
    g::ComponentSwizzle
    b::ComponentSwizzle
    a::ComponentSwizzle
    vk::VkComponentMapping
end

@cenum SharingMode::UInt32 begin
    SHARING_MODE_EXCLUSIVE = 0
    SHARING_MODE_CONCURRENT = 1
    SHARING_MODE_MAX_ENUM = 2147483647
end
struct PhysicalDeviceImageDrmFormatModifierInfoEXT
    drm_format_modifier::UInt64
    sharing_mode::SharingMode
    queue_family_indices::Ptr{UInt32}
    vk::VkPhysicalDeviceImageDrmFormatModifierInfoEXT
end

@cenum QueryType::UInt32 begin
    QUERY_TYPE_OCCLUSION = 0
    QUERY_TYPE_PIPELINE_STATISTICS = 1
    QUERY_TYPE_TIMESTAMP = 2
    QUERY_TYPE_TRANSFORM_FEEDBACK_STREAM_EXT = 1000028004
    QUERY_TYPE_PERFORMANCE_QUERY_KHR = 1000116000
    QUERY_TYPE_ACCELERATION_STRUCTURE_COMPACTED_SIZE_KHR = 1000165000
    QUERY_TYPE_ACCELERATION_STRUCTURE_SERIALIZATION_SIZE_KHR = 1000150000
    QUERY_TYPE_PERFORMANCE_QUERY_INTEL = 1000210000
    QUERY_TYPE_ACCELERATION_STRUCTURE_COMPACTED_SIZE_NV = 1000165000
    QUERY_TYPE_MAX_ENUM = 2147483647
end
@cenum PhysicalDeviceType::UInt32 begin
    PHYSICAL_DEVICE_TYPE_OTHER = 0
    PHYSICAL_DEVICE_TYPE_INTEGRATED_GPU = 1
    PHYSICAL_DEVICE_TYPE_DISCRETE_GPU = 2
    PHYSICAL_DEVICE_TYPE_VIRTUAL_GPU = 3
    PHYSICAL_DEVICE_TYPE_CPU = 4
    PHYSICAL_DEVICE_TYPE_MAX_ENUM = 2147483647
end
@cenum ImageType::UInt32 begin
    IMAGE_TYPE_1D = 0
    IMAGE_TYPE_2D = 1
    IMAGE_TYPE_3D = 2
    IMAGE_TYPE_MAX_ENUM = 2147483647
end
@cenum ImageTiling::UInt32 begin
    IMAGE_TILING_OPTIMAL = 0
    IMAGE_TILING_LINEAR = 1
    IMAGE_TILING_DRM_FORMAT_MODIFIER_EXT = 1000158000
    IMAGE_TILING_MAX_ENUM = 2147483647
end
@cenum Format::UInt32 begin
    FORMAT_UNDEFINED = 0
    FORMAT_R4G4_UNORM_PACK8 = 1
    FORMAT_R4G4B4A4_UNORM_PACK16 = 2
    FORMAT_B4G4R4A4_UNORM_PACK16 = 3
    FORMAT_R5G6B5_UNORM_PACK16 = 4
    FORMAT_B5G6R5_UNORM_PACK16 = 5
    FORMAT_R5G5B5A1_UNORM_PACK16 = 6
    FORMAT_B5G5R5A1_UNORM_PACK16 = 7
    FORMAT_A1R5G5B5_UNORM_PACK16 = 8
    FORMAT_R8_UNORM = 9
    FORMAT_R8_SNORM = 10
    FORMAT_R8_USCALED = 11
    FORMAT_R8_SSCALED = 12
    FORMAT_R8_UINT = 13
    FORMAT_R8_SINT = 14
    FORMAT_R8_SRGB = 15
    FORMAT_R8G8_UNORM = 16
    FORMAT_R8G8_SNORM = 17
    FORMAT_R8G8_USCALED = 18
    FORMAT_R8G8_SSCALED = 19
    FORMAT_R8G8_UINT = 20
    FORMAT_R8G8_SINT = 21
    FORMAT_R8G8_SRGB = 22
    FORMAT_R8G8B8_UNORM = 23
    FORMAT_R8G8B8_SNORM = 24
    FORMAT_R8G8B8_USCALED = 25
    FORMAT_R8G8B8_SSCALED = 26
    FORMAT_R8G8B8_UINT = 27
    FORMAT_R8G8B8_SINT = 28
    FORMAT_R8G8B8_SRGB = 29
    FORMAT_B8G8R8_UNORM = 30
    FORMAT_B8G8R8_SNORM = 31
    FORMAT_B8G8R8_USCALED = 32
    FORMAT_B8G8R8_SSCALED = 33
    FORMAT_B8G8R8_UINT = 34
    FORMAT_B8G8R8_SINT = 35
    FORMAT_B8G8R8_SRGB = 36
    FORMAT_R8G8B8A8_UNORM = 37
    FORMAT_R8G8B8A8_SNORM = 38
    FORMAT_R8G8B8A8_USCALED = 39
    FORMAT_R8G8B8A8_SSCALED = 40
    FORMAT_R8G8B8A8_UINT = 41
    FORMAT_R8G8B8A8_SINT = 42
    FORMAT_R8G8B8A8_SRGB = 43
    FORMAT_B8G8R8A8_UNORM = 44
    FORMAT_B8G8R8A8_SNORM = 45
    FORMAT_B8G8R8A8_USCALED = 46
    FORMAT_B8G8R8A8_SSCALED = 47
    FORMAT_B8G8R8A8_UINT = 48
    FORMAT_B8G8R8A8_SINT = 49
    FORMAT_B8G8R8A8_SRGB = 50
    FORMAT_A8B8G8R8_UNORM_PACK32 = 51
    FORMAT_A8B8G8R8_SNORM_PACK32 = 52
    FORMAT_A8B8G8R8_USCALED_PACK32 = 53
    FORMAT_A8B8G8R8_SSCALED_PACK32 = 54
    FORMAT_A8B8G8R8_UINT_PACK32 = 55
    FORMAT_A8B8G8R8_SINT_PACK32 = 56
    FORMAT_A8B8G8R8_SRGB_PACK32 = 57
    FORMAT_A2R10G10B10_UNORM_PACK32 = 58
    FORMAT_A2R10G10B10_SNORM_PACK32 = 59
    FORMAT_A2R10G10B10_USCALED_PACK32 = 60
    FORMAT_A2R10G10B10_SSCALED_PACK32 = 61
    FORMAT_A2R10G10B10_UINT_PACK32 = 62
    FORMAT_A2R10G10B10_SINT_PACK32 = 63
    FORMAT_A2B10G10R10_UNORM_PACK32 = 64
    FORMAT_A2B10G10R10_SNORM_PACK32 = 65
    FORMAT_A2B10G10R10_USCALED_PACK32 = 66
    FORMAT_A2B10G10R10_SSCALED_PACK32 = 67
    FORMAT_A2B10G10R10_UINT_PACK32 = 68
    FORMAT_A2B10G10R10_SINT_PACK32 = 69
    FORMAT_R16_UNORM = 70
    FORMAT_R16_SNORM = 71
    FORMAT_R16_USCALED = 72
    FORMAT_R16_SSCALED = 73
    FORMAT_R16_UINT = 74
    FORMAT_R16_SINT = 75
    FORMAT_R16_SFLOAT = 76
    FORMAT_R16G16_UNORM = 77
    FORMAT_R16G16_SNORM = 78
    FORMAT_R16G16_USCALED = 79
    FORMAT_R16G16_SSCALED = 80
    FORMAT_R16G16_UINT = 81
    FORMAT_R16G16_SINT = 82
    FORMAT_R16G16_SFLOAT = 83
    FORMAT_R16G16B16_UNORM = 84
    FORMAT_R16G16B16_SNORM = 85
    FORMAT_R16G16B16_USCALED = 86
    FORMAT_R16G16B16_SSCALED = 87
    FORMAT_R16G16B16_UINT = 88
    FORMAT_R16G16B16_SINT = 89
    FORMAT_R16G16B16_SFLOAT = 90
    FORMAT_R16G16B16A16_UNORM = 91
    FORMAT_R16G16B16A16_SNORM = 92
    FORMAT_R16G16B16A16_USCALED = 93
    FORMAT_R16G16B16A16_SSCALED = 94
    FORMAT_R16G16B16A16_UINT = 95
    FORMAT_R16G16B16A16_SINT = 96
    FORMAT_R16G16B16A16_SFLOAT = 97
    FORMAT_R32_UINT = 98
    FORMAT_R32_SINT = 99
    FORMAT_R32_SFLOAT = 100
    FORMAT_R32G32_UINT = 101
    FORMAT_R32G32_SINT = 102
    FORMAT_R32G32_SFLOAT = 103
    FORMAT_R32G32B32_UINT = 104
    FORMAT_R32G32B32_SINT = 105
    FORMAT_R32G32B32_SFLOAT = 106
    FORMAT_R32G32B32A32_UINT = 107
    FORMAT_R32G32B32A32_SINT = 108
    FORMAT_R32G32B32A32_SFLOAT = 109
    FORMAT_R64_UINT = 110
    FORMAT_R64_SINT = 111
    FORMAT_R64_SFLOAT = 112
    FORMAT_R64G64_UINT = 113
    FORMAT_R64G64_SINT = 114
    FORMAT_R64G64_SFLOAT = 115
    FORMAT_R64G64B64_UINT = 116
    FORMAT_R64G64B64_SINT = 117
    FORMAT_R64G64B64_SFLOAT = 118
    FORMAT_R64G64B64A64_UINT = 119
    FORMAT_R64G64B64A64_SINT = 120
    FORMAT_R64G64B64A64_SFLOAT = 121
    FORMAT_B10G11R11_UFLOAT_PACK32 = 122
    FORMAT_E5B9G9R9_UFLOAT_PACK32 = 123
    FORMAT_D16_UNORM = 124
    FORMAT_X8_D24_UNORM_PACK32 = 125
    FORMAT_D32_SFLOAT = 126
    FORMAT_S8_UINT = 127
    FORMAT_D16_UNORM_S8_UINT = 128
    FORMAT_D24_UNORM_S8_UINT = 129
    FORMAT_D32_SFLOAT_S8_UINT = 130
    FORMAT_BC1_RGB_UNORM_BLOCK = 131
    FORMAT_BC1_RGB_SRGB_BLOCK = 132
    FORMAT_BC1_RGBA_UNORM_BLOCK = 133
    FORMAT_BC1_RGBA_SRGB_BLOCK = 134
    FORMAT_BC2_UNORM_BLOCK = 135
    FORMAT_BC2_SRGB_BLOCK = 136
    FORMAT_BC3_UNORM_BLOCK = 137
    FORMAT_BC3_SRGB_BLOCK = 138
    FORMAT_BC4_UNORM_BLOCK = 139
    FORMAT_BC4_SNORM_BLOCK = 140
    FORMAT_BC5_UNORM_BLOCK = 141
    FORMAT_BC5_SNORM_BLOCK = 142
    FORMAT_BC6H_UFLOAT_BLOCK = 143
    FORMAT_BC6H_SFLOAT_BLOCK = 144
    FORMAT_BC7_UNORM_BLOCK = 145
    FORMAT_BC7_SRGB_BLOCK = 146
    FORMAT_ETC2_R8G8B8_UNORM_BLOCK = 147
    FORMAT_ETC2_R8G8B8_SRGB_BLOCK = 148
    FORMAT_ETC2_R8G8B8A1_UNORM_BLOCK = 149
    FORMAT_ETC2_R8G8B8A1_SRGB_BLOCK = 150
    FORMAT_ETC2_R8G8B8A8_UNORM_BLOCK = 151
    FORMAT_ETC2_R8G8B8A8_SRGB_BLOCK = 152
    FORMAT_EAC_R11_UNORM_BLOCK = 153
    FORMAT_EAC_R11_SNORM_BLOCK = 154
    FORMAT_EAC_R11G11_UNORM_BLOCK = 155
    FORMAT_EAC_R11G11_SNORM_BLOCK = 156
    FORMAT_ASTC_4x4_UNORM_BLOCK = 157
    FORMAT_ASTC_4x4_SRGB_BLOCK = 158
    FORMAT_ASTC_5x4_UNORM_BLOCK = 159
    FORMAT_ASTC_5x4_SRGB_BLOCK = 160
    FORMAT_ASTC_5x5_UNORM_BLOCK = 161
    FORMAT_ASTC_5x5_SRGB_BLOCK = 162
    FORMAT_ASTC_6x5_UNORM_BLOCK = 163
    FORMAT_ASTC_6x5_SRGB_BLOCK = 164
    FORMAT_ASTC_6x6_UNORM_BLOCK = 165
    FORMAT_ASTC_6x6_SRGB_BLOCK = 166
    FORMAT_ASTC_8x5_UNORM_BLOCK = 167
    FORMAT_ASTC_8x5_SRGB_BLOCK = 168
    FORMAT_ASTC_8x6_UNORM_BLOCK = 169
    FORMAT_ASTC_8x6_SRGB_BLOCK = 170
    FORMAT_ASTC_8x8_UNORM_BLOCK = 171
    FORMAT_ASTC_8x8_SRGB_BLOCK = 172
    FORMAT_ASTC_10x5_UNORM_BLOCK = 173
    FORMAT_ASTC_10x5_SRGB_BLOCK = 174
    FORMAT_ASTC_10x6_UNORM_BLOCK = 175
    FORMAT_ASTC_10x6_SRGB_BLOCK = 176
    FORMAT_ASTC_10x8_UNORM_BLOCK = 177
    FORMAT_ASTC_10x8_SRGB_BLOCK = 178
    FORMAT_ASTC_10x10_UNORM_BLOCK = 179
    FORMAT_ASTC_10x10_SRGB_BLOCK = 180
    FORMAT_ASTC_12x10_UNORM_BLOCK = 181
    FORMAT_ASTC_12x10_SRGB_BLOCK = 182
    FORMAT_ASTC_12x12_UNORM_BLOCK = 183
    FORMAT_ASTC_12x12_SRGB_BLOCK = 184
    FORMAT_G8B8G8R8_422_UNORM = 1000156000
    FORMAT_B8G8R8G8_422_UNORM = 1000156001
    FORMAT_G8_B8_R8_3PLANE_420_UNORM = 1000156002
    FORMAT_G8_B8R8_2PLANE_420_UNORM = 1000156003
    FORMAT_G8_B8_R8_3PLANE_422_UNORM = 1000156004
    FORMAT_G8_B8R8_2PLANE_422_UNORM = 1000156005
    FORMAT_G8_B8_R8_3PLANE_444_UNORM = 1000156006
    FORMAT_R10X6_UNORM_PACK16 = 1000156007
    FORMAT_R10X6G10X6_UNORM_2PACK16 = 1000156008
    FORMAT_R10X6G10X6B10X6A10X6_UNORM_4PACK16 = 1000156009
    FORMAT_G10X6B10X6G10X6R10X6_422_UNORM_4PACK16 = 1000156010
    FORMAT_B10X6G10X6R10X6G10X6_422_UNORM_4PACK16 = 1000156011
    FORMAT_G10X6_B10X6_R10X6_3PLANE_420_UNORM_3PACK16 = 1000156012
    FORMAT_G10X6_B10X6R10X6_2PLANE_420_UNORM_3PACK16 = 1000156013
    FORMAT_G10X6_B10X6_R10X6_3PLANE_422_UNORM_3PACK16 = 1000156014
    FORMAT_G10X6_B10X6R10X6_2PLANE_422_UNORM_3PACK16 = 1000156015
    FORMAT_G10X6_B10X6_R10X6_3PLANE_444_UNORM_3PACK16 = 1000156016
    FORMAT_R12X4_UNORM_PACK16 = 1000156017
    FORMAT_R12X4G12X4_UNORM_2PACK16 = 1000156018
    FORMAT_R12X4G12X4B12X4A12X4_UNORM_4PACK16 = 1000156019
    FORMAT_G12X4B12X4G12X4R12X4_422_UNORM_4PACK16 = 1000156020
    FORMAT_B12X4G12X4R12X4G12X4_422_UNORM_4PACK16 = 1000156021
    FORMAT_G12X4_B12X4_R12X4_3PLANE_420_UNORM_3PACK16 = 1000156022
    FORMAT_G12X4_B12X4R12X4_2PLANE_420_UNORM_3PACK16 = 1000156023
    FORMAT_G12X4_B12X4_R12X4_3PLANE_422_UNORM_3PACK16 = 1000156024
    FORMAT_G12X4_B12X4R12X4_2PLANE_422_UNORM_3PACK16 = 1000156025
    FORMAT_G12X4_B12X4_R12X4_3PLANE_444_UNORM_3PACK16 = 1000156026
    FORMAT_G16B16G16R16_422_UNORM = 1000156027
    FORMAT_B16G16R16G16_422_UNORM = 1000156028
    FORMAT_G16_B16_R16_3PLANE_420_UNORM = 1000156029
    FORMAT_G16_B16R16_2PLANE_420_UNORM = 1000156030
    FORMAT_G16_B16_R16_3PLANE_422_UNORM = 1000156031
    FORMAT_G16_B16R16_2PLANE_422_UNORM = 1000156032
    FORMAT_G16_B16_R16_3PLANE_444_UNORM = 1000156033
    FORMAT_PVRTC1_2BPP_UNORM_BLOCK_IMG = 1000054000
    FORMAT_PVRTC1_4BPP_UNORM_BLOCK_IMG = 1000054001
    FORMAT_PVRTC2_2BPP_UNORM_BLOCK_IMG = 1000054002
    FORMAT_PVRTC2_4BPP_UNORM_BLOCK_IMG = 1000054003
    FORMAT_PVRTC1_2BPP_SRGB_BLOCK_IMG = 1000054004
    FORMAT_PVRTC1_4BPP_SRGB_BLOCK_IMG = 1000054005
    FORMAT_PVRTC2_2BPP_SRGB_BLOCK_IMG = 1000054006
    FORMAT_PVRTC2_4BPP_SRGB_BLOCK_IMG = 1000054007
    FORMAT_ASTC_4x4_SFLOAT_BLOCK_EXT = 1000066000
    FORMAT_ASTC_5x4_SFLOAT_BLOCK_EXT = 1000066001
    FORMAT_ASTC_5x5_SFLOAT_BLOCK_EXT = 1000066002
    FORMAT_ASTC_6x5_SFLOAT_BLOCK_EXT = 1000066003
    FORMAT_ASTC_6x6_SFLOAT_BLOCK_EXT = 1000066004
    FORMAT_ASTC_8x5_SFLOAT_BLOCK_EXT = 1000066005
    FORMAT_ASTC_8x6_SFLOAT_BLOCK_EXT = 1000066006
    FORMAT_ASTC_8x8_SFLOAT_BLOCK_EXT = 1000066007
    FORMAT_ASTC_10x5_SFLOAT_BLOCK_EXT = 1000066008
    FORMAT_ASTC_10x6_SFLOAT_BLOCK_EXT = 1000066009
    FORMAT_ASTC_10x8_SFLOAT_BLOCK_EXT = 1000066010
    FORMAT_ASTC_10x10_SFLOAT_BLOCK_EXT = 1000066011
    FORMAT_ASTC_12x10_SFLOAT_BLOCK_EXT = 1000066012
    FORMAT_ASTC_12x12_SFLOAT_BLOCK_EXT = 1000066013
    FORMAT_A4R4G4B4_UNORM_PACK16_EXT = 1000340000
    FORMAT_A4B4G4R4_UNORM_PACK16_EXT = 1000340001
    FORMAT_G8B8G8R8_422_UNORM_KHR = 1000156000
    FORMAT_B8G8R8G8_422_UNORM_KHR = 1000156001
    FORMAT_G8_B8_R8_3PLANE_420_UNORM_KHR = 1000156002
    FORMAT_G8_B8R8_2PLANE_420_UNORM_KHR = 1000156003
    FORMAT_G8_B8_R8_3PLANE_422_UNORM_KHR = 1000156004
    FORMAT_G8_B8R8_2PLANE_422_UNORM_KHR = 1000156005
    FORMAT_G8_B8_R8_3PLANE_444_UNORM_KHR = 1000156006
    FORMAT_R10X6_UNORM_PACK16_KHR = 1000156007
    FORMAT_R10X6G10X6_UNORM_2PACK16_KHR = 1000156008
    FORMAT_R10X6G10X6B10X6A10X6_UNORM_4PACK16_KHR = 1000156009
    FORMAT_G10X6B10X6G10X6R10X6_422_UNORM_4PACK16_KHR = 1000156010
    FORMAT_B10X6G10X6R10X6G10X6_422_UNORM_4PACK16_KHR = 1000156011
    FORMAT_G10X6_B10X6_R10X6_3PLANE_420_UNORM_3PACK16_KHR = 1000156012
    FORMAT_G10X6_B10X6R10X6_2PLANE_420_UNORM_3PACK16_KHR = 1000156013
    FORMAT_G10X6_B10X6_R10X6_3PLANE_422_UNORM_3PACK16_KHR = 1000156014
    FORMAT_G10X6_B10X6R10X6_2PLANE_422_UNORM_3PACK16_KHR = 1000156015
    FORMAT_G10X6_B10X6_R10X6_3PLANE_444_UNORM_3PACK16_KHR = 1000156016
    FORMAT_R12X4_UNORM_PACK16_KHR = 1000156017
    FORMAT_R12X4G12X4_UNORM_2PACK16_KHR = 1000156018
    FORMAT_R12X4G12X4B12X4A12X4_UNORM_4PACK16_KHR = 1000156019
    FORMAT_G12X4B12X4G12X4R12X4_422_UNORM_4PACK16_KHR = 1000156020
    FORMAT_B12X4G12X4R12X4G12X4_422_UNORM_4PACK16_KHR = 1000156021
    FORMAT_G12X4_B12X4_R12X4_3PLANE_420_UNORM_3PACK16_KHR = 1000156022
    FORMAT_G12X4_B12X4R12X4_2PLANE_420_UNORM_3PACK16_KHR = 1000156023
    FORMAT_G12X4_B12X4_R12X4_3PLANE_422_UNORM_3PACK16_KHR = 1000156024
    FORMAT_G12X4_B12X4R12X4_2PLANE_422_UNORM_3PACK16_KHR = 1000156025
    FORMAT_G12X4_B12X4_R12X4_3PLANE_444_UNORM_3PACK16_KHR = 1000156026
    FORMAT_G16B16G16R16_422_UNORM_KHR = 1000156027
    FORMAT_B16G16R16G16_422_UNORM_KHR = 1000156028
    FORMAT_G16_B16_R16_3PLANE_420_UNORM_KHR = 1000156029
    FORMAT_G16_B16R16_2PLANE_420_UNORM_KHR = 1000156030
    FORMAT_G16_B16_R16_3PLANE_422_UNORM_KHR = 1000156031
    FORMAT_G16_B16R16_2PLANE_422_UNORM_KHR = 1000156032
    FORMAT_G16_B16_R16_3PLANE_444_UNORM_KHR = 1000156033
    FORMAT_MAX_ENUM = 2147483647
end
struct SurfaceFormatKHR
    format::Format
    color_space::ColorSpaceKHR
end

struct SurfaceFormat2KHR
    surface_format::SurfaceFormatKHR
end

struct SamplerCustomBorderColorCreateInfoEXT
    custom_border_color::ClearColorValue
    format::Format
    vk::VkSamplerCustomBorderColorCreateInfoEXT
end

struct ImageViewASTCDecodeModeEXT
    decode_mode::Format
    vk::VkImageViewASTCDecodeModeEXT
end

struct ImageFormatListCreateInfo
    view_formats::Format
    vk::VkImageFormatListCreateInfo
end

struct SamplerYcbcrConversionCreateInfo
    format::Format
    ycbcr_model::SamplerYcbcrModelConversion
    ycbcr_range::SamplerYcbcrRange
    components::ComponentMapping
    x_chroma_offset::ChromaLocation
    y_chroma_offset::ChromaLocation
    chroma_filter::Filter
    force_explicit_reconstruction::Bool
    vk::VkSamplerYcbcrConversionCreateInfo
end

struct VertexInputAttributeDescription
    location::UInt32
    binding::UInt32
    format::Format
    offset::UInt32
    vk::VkVertexInputAttributeDescription
end

struct PipelineVertexInputStateCreateInfo
    vertex_binding_descriptions::VertexInputBindingDescription
    vertex_attribute_descriptions::VertexInputAttributeDescription
    vk::VkPipelineVertexInputStateCreateInfo
end

@cenum InternalAllocationType::UInt32 begin
    INTERNAL_ALLOCATION_TYPE_EXECUTABLE = 0
    INTERNAL_ALLOCATION_TYPE_MAX_ENUM = 2147483647
end
@cenum SystemAllocationScope::UInt32 begin
    SYSTEM_ALLOCATION_SCOPE_COMMAND = 0
    SYSTEM_ALLOCATION_SCOPE_OBJECT = 1
    SYSTEM_ALLOCATION_SCOPE_CACHE = 2
    SYSTEM_ALLOCATION_SCOPE_DEVICE = 3
    SYSTEM_ALLOCATION_SCOPE_INSTANCE = 4
    SYSTEM_ALLOCATION_SCOPE_MAX_ENUM = 2147483647
end
@cenum PipelineCacheHeaderVersion::UInt32 begin
    PIPELINE_CACHE_HEADER_VERSION_ONE = 1
    PIPELINE_CACHE_HEADER_VERSION_MAX_ENUM = 2147483647
end
@cenum VendorId::UInt32 begin
    VENDOR_ID_VIV = 65537
    VENDOR_ID_VSI = 65538
    VENDOR_ID_KAZAN = 65539
    VENDOR_ID_CODEPLAY = 65540
    VENDOR_ID_MESA = 65541
    VENDOR_ID_MAX_ENUM = 2147483647
end
@cenum ObjectType::UInt32 begin
    OBJECT_TYPE_UNKNOWN = 0
    OBJECT_TYPE_INSTANCE = 1
    OBJECT_TYPE_PHYSICAL_DEVICE = 2
    OBJECT_TYPE_DEVICE = 3
    OBJECT_TYPE_QUEUE = 4
    OBJECT_TYPE_SEMAPHORE = 5
    OBJECT_TYPE_COMMAND_BUFFER = 6
    OBJECT_TYPE_FENCE = 7
    OBJECT_TYPE_DEVICE_MEMORY = 8
    OBJECT_TYPE_BUFFER = 9
    OBJECT_TYPE_IMAGE = 10
    OBJECT_TYPE_EVENT = 11
    OBJECT_TYPE_QUERY_POOL = 12
    OBJECT_TYPE_BUFFER_VIEW = 13
    OBJECT_TYPE_IMAGE_VIEW = 14
    OBJECT_TYPE_SHADER_MODULE = 15
    OBJECT_TYPE_PIPELINE_CACHE = 16
    OBJECT_TYPE_PIPELINE_LAYOUT = 17
    OBJECT_TYPE_RENDER_PASS = 18
    OBJECT_TYPE_PIPELINE = 19
    OBJECT_TYPE_DESCRIPTOR_SET_LAYOUT = 20
    OBJECT_TYPE_SAMPLER = 21
    OBJECT_TYPE_DESCRIPTOR_POOL = 22
    OBJECT_TYPE_DESCRIPTOR_SET = 23
    OBJECT_TYPE_FRAMEBUFFER = 24
    OBJECT_TYPE_COMMAND_POOL = 25
    OBJECT_TYPE_SAMPLER_YCBCR_CONVERSION = 1000156000
    OBJECT_TYPE_DESCRIPTOR_UPDATE_TEMPLATE = 1000085000
    OBJECT_TYPE_SURFACE_KHR = 1000000000
    OBJECT_TYPE_SWAPCHAIN_KHR = 1000001000
    OBJECT_TYPE_DISPLAY_KHR = 1000002000
    OBJECT_TYPE_DISPLAY_MODE_KHR = 1000002001
    OBJECT_TYPE_DEBUG_REPORT_CALLBACK_EXT = 1000011000
    OBJECT_TYPE_DEBUG_UTILS_MESSENGER_EXT = 1000128000
    OBJECT_TYPE_ACCELERATION_STRUCTURE_KHR = 1000165000
    OBJECT_TYPE_VALIDATION_CACHE_EXT = 1000160000
    OBJECT_TYPE_PERFORMANCE_CONFIGURATION_INTEL = 1000210000
    OBJECT_TYPE_DEFERRED_OPERATION_KHR = 1000268000
    OBJECT_TYPE_INDIRECT_COMMANDS_LAYOUT_NV = 1000277000
    OBJECT_TYPE_PRIVATE_DATA_SLOT_EXT = 1000295000
    OBJECT_TYPE_DESCRIPTOR_UPDATE_TEMPLATE_KHR = 1000085000
    OBJECT_TYPE_SAMPLER_YCBCR_CONVERSION_KHR = 1000156000
    OBJECT_TYPE_ACCELERATION_STRUCTURE_NV = 1000165000
    OBJECT_TYPE_MAX_ENUM = 2147483647
end
struct DebugUtilsObjectTagInfoEXT
    object_type::ObjectType
    object_handle::UInt64
    tag_name::UInt64
    tag::Ptr{Cvoid}
    vk::VkDebugUtilsObjectTagInfoEXT
end

struct DebugUtilsObjectNameInfoEXT
    object_type::ObjectType
    object_handle::UInt64
    object_name::String
    vk::VkDebugUtilsObjectNameInfoEXT
end

struct DebugUtilsMessengerCallbackDataEXT
    message_id_name::String
    message_id_number::Int32
    message::String
    queue_labels::DebugUtilsLabelEXT
    cmd_buf_labels::DebugUtilsLabelEXT
    objects::DebugUtilsObjectNameInfoEXT
    vk::VkDebugUtilsMessengerCallbackDataEXT
end

@cenum ImageLayout::UInt32 begin
    IMAGE_LAYOUT_UNDEFINED = 0
    IMAGE_LAYOUT_GENERAL = 1
    IMAGE_LAYOUT_COLOR_ATTACHMENT_OPTIMAL = 2
    IMAGE_LAYOUT_DEPTH_STENCIL_ATTACHMENT_OPTIMAL = 3
    IMAGE_LAYOUT_DEPTH_STENCIL_READ_ONLY_OPTIMAL = 4
    IMAGE_LAYOUT_SHADER_READ_ONLY_OPTIMAL = 5
    IMAGE_LAYOUT_TRANSFER_SRC_OPTIMAL = 6
    IMAGE_LAYOUT_TRANSFER_DST_OPTIMAL = 7
    IMAGE_LAYOUT_PREINITIALIZED = 8
    IMAGE_LAYOUT_DEPTH_READ_ONLY_STENCIL_ATTACHMENT_OPTIMAL = 1000117000
    IMAGE_LAYOUT_DEPTH_ATTACHMENT_STENCIL_READ_ONLY_OPTIMAL = 1000117001
    IMAGE_LAYOUT_DEPTH_ATTACHMENT_OPTIMAL = 1000241000
    IMAGE_LAYOUT_DEPTH_READ_ONLY_OPTIMAL = 1000241001
    IMAGE_LAYOUT_STENCIL_ATTACHMENT_OPTIMAL = 1000241002
    IMAGE_LAYOUT_STENCIL_READ_ONLY_OPTIMAL = 1000241003
    IMAGE_LAYOUT_PRESENT_SRC_KHR = 1000001002
    IMAGE_LAYOUT_SHARED_PRESENT_KHR = 1000111000
    IMAGE_LAYOUT_SHADING_RATE_OPTIMAL_NV = 1000164003
    IMAGE_LAYOUT_FRAGMENT_DENSITY_MAP_OPTIMAL_EXT = 1000218000
    IMAGE_LAYOUT_DEPTH_READ_ONLY_STENCIL_ATTACHMENT_OPTIMAL_KHR = 1000117000
    IMAGE_LAYOUT_DEPTH_ATTACHMENT_STENCIL_READ_ONLY_OPTIMAL_KHR = 1000117001
    IMAGE_LAYOUT_DEPTH_ATTACHMENT_OPTIMAL_KHR = 1000241000
    IMAGE_LAYOUT_DEPTH_READ_ONLY_OPTIMAL_KHR = 1000241001
    IMAGE_LAYOUT_STENCIL_ATTACHMENT_OPTIMAL_KHR = 1000241002
    IMAGE_LAYOUT_STENCIL_READ_ONLY_OPTIMAL_KHR = 1000241003
    IMAGE_LAYOUT_MAX_ENUM = 2147483647
end
struct AttachmentDescriptionStencilLayout
    stencil_initial_layout::ImageLayout
    stencil_final_layout::ImageLayout
    vk::VkAttachmentDescriptionStencilLayout
end

struct AttachmentReferenceStencilLayout
    stencil_layout::ImageLayout
    vk::VkAttachmentReferenceStencilLayout
end

struct AttachmentDescription2
    format::Format
    samples::SampleCountFlagBits
    load_op::AttachmentLoadOp
    store_op::AttachmentStoreOp
    stencil_load_op::AttachmentLoadOp
    stencil_store_op::AttachmentStoreOp
    initial_layout::ImageLayout
    final_layout::ImageLayout
    vk::VkAttachmentDescription2
end

struct AttachmentReference
    attachment::UInt32
    layout::ImageLayout
    vk::VkAttachmentReference
end

struct RenderPassFragmentDensityMapCreateInfoEXT
    fragment_density_map_attachment::AttachmentReference
    vk::VkRenderPassFragmentDensityMapCreateInfoEXT
end

struct SubpassDescription
    pipeline_bind_point::PipelineBindPoint
    input_attachments::AttachmentReference
    color_attachments::AttachmentReference
    resolve_attachments::AttachmentReference
    depth_stencil_attachment::AttachmentReference
    preserve_attachments::Ptr{UInt32}
    vk::VkSubpassDescription
end

struct AttachmentDescription
    format::Format
    samples::SampleCountFlagBits
    load_op::AttachmentLoadOp
    store_op::AttachmentStoreOp
    stencil_load_op::AttachmentLoadOp
    stencil_store_op::AttachmentStoreOp
    initial_layout::ImageLayout
    final_layout::ImageLayout
    vk::VkAttachmentDescription
end

@cenum StructureType::UInt32 begin
    STRUCTURE_TYPE_APPLICATION_INFO = 0
    STRUCTURE_TYPE_INSTANCE_CREATE_INFO = 1
    STRUCTURE_TYPE_DEVICE_QUEUE_CREATE_INFO = 2
    STRUCTURE_TYPE_DEVICE_CREATE_INFO = 3
    STRUCTURE_TYPE_SUBMIT_INFO = 4
    STRUCTURE_TYPE_MEMORY_ALLOCATE_INFO = 5
    STRUCTURE_TYPE_MAPPED_MEMORY_RANGE = 6
    STRUCTURE_TYPE_BIND_SPARSE_INFO = 7
    STRUCTURE_TYPE_FENCE_CREATE_INFO = 8
    STRUCTURE_TYPE_SEMAPHORE_CREATE_INFO = 9
    STRUCTURE_TYPE_EVENT_CREATE_INFO = 10
    STRUCTURE_TYPE_QUERY_POOL_CREATE_INFO = 11
    STRUCTURE_TYPE_BUFFER_CREATE_INFO = 12
    STRUCTURE_TYPE_BUFFER_VIEW_CREATE_INFO = 13
    STRUCTURE_TYPE_IMAGE_CREATE_INFO = 14
    STRUCTURE_TYPE_IMAGE_VIEW_CREATE_INFO = 15
    STRUCTURE_TYPE_SHADER_MODULE_CREATE_INFO = 16
    STRUCTURE_TYPE_PIPELINE_CACHE_CREATE_INFO = 17
    STRUCTURE_TYPE_PIPELINE_SHADER_STAGE_CREATE_INFO = 18
    STRUCTURE_TYPE_PIPELINE_VERTEX_INPUT_STATE_CREATE_INFO = 19
    STRUCTURE_TYPE_PIPELINE_INPUT_ASSEMBLY_STATE_CREATE_INFO = 20
    STRUCTURE_TYPE_PIPELINE_TESSELLATION_STATE_CREATE_INFO = 21
    STRUCTURE_TYPE_PIPELINE_VIEWPORT_STATE_CREATE_INFO = 22
    STRUCTURE_TYPE_PIPELINE_RASTERIZATION_STATE_CREATE_INFO = 23
    STRUCTURE_TYPE_PIPELINE_MULTISAMPLE_STATE_CREATE_INFO = 24
    STRUCTURE_TYPE_PIPELINE_DEPTH_STENCIL_STATE_CREATE_INFO = 25
    STRUCTURE_TYPE_PIPELINE_COLOR_BLEND_STATE_CREATE_INFO = 26
    STRUCTURE_TYPE_PIPELINE_DYNAMIC_STATE_CREATE_INFO = 27
    STRUCTURE_TYPE_GRAPHICS_PIPELINE_CREATE_INFO = 28
    STRUCTURE_TYPE_COMPUTE_PIPELINE_CREATE_INFO = 29
    STRUCTURE_TYPE_PIPELINE_LAYOUT_CREATE_INFO = 30
    STRUCTURE_TYPE_SAMPLER_CREATE_INFO = 31
    STRUCTURE_TYPE_DESCRIPTOR_SET_LAYOUT_CREATE_INFO = 32
    STRUCTURE_TYPE_DESCRIPTOR_POOL_CREATE_INFO = 33
    STRUCTURE_TYPE_DESCRIPTOR_SET_ALLOCATE_INFO = 34
    STRUCTURE_TYPE_WRITE_DESCRIPTOR_SET = 35
    STRUCTURE_TYPE_COPY_DESCRIPTOR_SET = 36
    STRUCTURE_TYPE_FRAMEBUFFER_CREATE_INFO = 37
    STRUCTURE_TYPE_RENDER_PASS_CREATE_INFO = 38
    STRUCTURE_TYPE_COMMAND_POOL_CREATE_INFO = 39
    STRUCTURE_TYPE_COMMAND_BUFFER_ALLOCATE_INFO = 40
    STRUCTURE_TYPE_COMMAND_BUFFER_INHERITANCE_INFO = 41
    STRUCTURE_TYPE_COMMAND_BUFFER_BEGIN_INFO = 42
    STRUCTURE_TYPE_RENDER_PASS_BEGIN_INFO = 43
    STRUCTURE_TYPE_BUFFER_MEMORY_BARRIER = 44
    STRUCTURE_TYPE_IMAGE_MEMORY_BARRIER = 45
    STRUCTURE_TYPE_MEMORY_BARRIER = 46
    STRUCTURE_TYPE_LOADER_INSTANCE_CREATE_INFO = 47
    STRUCTURE_TYPE_LOADER_DEVICE_CREATE_INFO = 48
    STRUCTURE_TYPE_PHYSICAL_DEVICE_SUBGROUP_PROPERTIES = 1000094000
    STRUCTURE_TYPE_BIND_BUFFER_MEMORY_INFO = 1000157000
    STRUCTURE_TYPE_BIND_IMAGE_MEMORY_INFO = 1000157001
    STRUCTURE_TYPE_PHYSICAL_DEVICE_16BIT_STORAGE_FEATURES = 1000083000
    STRUCTURE_TYPE_MEMORY_DEDICATED_REQUIREMENTS = 1000127000
    STRUCTURE_TYPE_MEMORY_DEDICATED_ALLOCATE_INFO = 1000127001
    STRUCTURE_TYPE_MEMORY_ALLOCATE_FLAGS_INFO = 1000060000
    STRUCTURE_TYPE_DEVICE_GROUP_RENDER_PASS_BEGIN_INFO = 1000060003
    STRUCTURE_TYPE_DEVICE_GROUP_COMMAND_BUFFER_BEGIN_INFO = 1000060004
    STRUCTURE_TYPE_DEVICE_GROUP_SUBMIT_INFO = 1000060005
    STRUCTURE_TYPE_DEVICE_GROUP_BIND_SPARSE_INFO = 1000060006
    STRUCTURE_TYPE_BIND_BUFFER_MEMORY_DEVICE_GROUP_INFO = 1000060013
    STRUCTURE_TYPE_BIND_IMAGE_MEMORY_DEVICE_GROUP_INFO = 1000060014
    STRUCTURE_TYPE_PHYSICAL_DEVICE_GROUP_PROPERTIES = 1000070000
    STRUCTURE_TYPE_DEVICE_GROUP_DEVICE_CREATE_INFO = 1000070001
    STRUCTURE_TYPE_BUFFER_MEMORY_REQUIREMENTS_INFO_2 = 1000146000
    STRUCTURE_TYPE_IMAGE_MEMORY_REQUIREMENTS_INFO_2 = 1000146001
    STRUCTURE_TYPE_IMAGE_SPARSE_MEMORY_REQUIREMENTS_INFO_2 = 1000146002
    STRUCTURE_TYPE_MEMORY_REQUIREMENTS_2 = 1000146003
    STRUCTURE_TYPE_SPARSE_IMAGE_MEMORY_REQUIREMENTS_2 = 1000146004
    STRUCTURE_TYPE_PHYSICAL_DEVICE_FEATURES_2 = 1000059000
    STRUCTURE_TYPE_PHYSICAL_DEVICE_PROPERTIES_2 = 1000059001
    STRUCTURE_TYPE_FORMAT_PROPERTIES_2 = 1000059002
    STRUCTURE_TYPE_IMAGE_FORMAT_PROPERTIES_2 = 1000059003
    STRUCTURE_TYPE_PHYSICAL_DEVICE_IMAGE_FORMAT_INFO_2 = 1000059004
    STRUCTURE_TYPE_QUEUE_FAMILY_PROPERTIES_2 = 1000059005
    STRUCTURE_TYPE_PHYSICAL_DEVICE_MEMORY_PROPERTIES_2 = 1000059006
    STRUCTURE_TYPE_SPARSE_IMAGE_FORMAT_PROPERTIES_2 = 1000059007
    STRUCTURE_TYPE_PHYSICAL_DEVICE_SPARSE_IMAGE_FORMAT_INFO_2 = 1000059008
    STRUCTURE_TYPE_PHYSICAL_DEVICE_POINT_CLIPPING_PROPERTIES = 1000117000
    STRUCTURE_TYPE_RENDER_PASS_INPUT_ATTACHMENT_ASPECT_CREATE_INFO = 1000117001
    STRUCTURE_TYPE_IMAGE_VIEW_USAGE_CREATE_INFO = 1000117002
    STRUCTURE_TYPE_PIPELINE_TESSELLATION_DOMAIN_ORIGIN_STATE_CREATE_INFO = 1000117003
    STRUCTURE_TYPE_RENDER_PASS_MULTIVIEW_CREATE_INFO = 1000053000
    STRUCTURE_TYPE_PHYSICAL_DEVICE_MULTIVIEW_FEATURES = 1000053001
    STRUCTURE_TYPE_PHYSICAL_DEVICE_MULTIVIEW_PROPERTIES = 1000053002
    STRUCTURE_TYPE_PHYSICAL_DEVICE_VARIABLE_POINTERS_FEATURES = 1000120000
    STRUCTURE_TYPE_PROTECTED_SUBMIT_INFO = 1000145000
    STRUCTURE_TYPE_PHYSICAL_DEVICE_PROTECTED_MEMORY_FEATURES = 1000145001
    STRUCTURE_TYPE_PHYSICAL_DEVICE_PROTECTED_MEMORY_PROPERTIES = 1000145002
    STRUCTURE_TYPE_DEVICE_QUEUE_INFO_2 = 1000145003
    STRUCTURE_TYPE_SAMPLER_YCBCR_CONVERSION_CREATE_INFO = 1000156000
    STRUCTURE_TYPE_SAMPLER_YCBCR_CONVERSION_INFO = 1000156001
    STRUCTURE_TYPE_BIND_IMAGE_PLANE_MEMORY_INFO = 1000156002
    STRUCTURE_TYPE_IMAGE_PLANE_MEMORY_REQUIREMENTS_INFO = 1000156003
    STRUCTURE_TYPE_PHYSICAL_DEVICE_SAMPLER_YCBCR_CONVERSION_FEATURES = 1000156004
    STRUCTURE_TYPE_SAMPLER_YCBCR_CONVERSION_IMAGE_FORMAT_PROPERTIES = 1000156005
    STRUCTURE_TYPE_DESCRIPTOR_UPDATE_TEMPLATE_CREATE_INFO = 1000085000
    STRUCTURE_TYPE_PHYSICAL_DEVICE_EXTERNAL_IMAGE_FORMAT_INFO = 1000071000
    STRUCTURE_TYPE_EXTERNAL_IMAGE_FORMAT_PROPERTIES = 1000071001
    STRUCTURE_TYPE_PHYSICAL_DEVICE_EXTERNAL_BUFFER_INFO = 1000071002
    STRUCTURE_TYPE_EXTERNAL_BUFFER_PROPERTIES = 1000071003
    STRUCTURE_TYPE_PHYSICAL_DEVICE_ID_PROPERTIES = 1000071004
    STRUCTURE_TYPE_EXTERNAL_MEMORY_BUFFER_CREATE_INFO = 1000072000
    STRUCTURE_TYPE_EXTERNAL_MEMORY_IMAGE_CREATE_INFO = 1000072001
    STRUCTURE_TYPE_EXPORT_MEMORY_ALLOCATE_INFO = 1000072002
    STRUCTURE_TYPE_PHYSICAL_DEVICE_EXTERNAL_FENCE_INFO = 1000112000
    STRUCTURE_TYPE_EXTERNAL_FENCE_PROPERTIES = 1000112001
    STRUCTURE_TYPE_EXPORT_FENCE_CREATE_INFO = 1000113000
    STRUCTURE_TYPE_EXPORT_SEMAPHORE_CREATE_INFO = 1000077000
    STRUCTURE_TYPE_PHYSICAL_DEVICE_EXTERNAL_SEMAPHORE_INFO = 1000076000
    STRUCTURE_TYPE_EXTERNAL_SEMAPHORE_PROPERTIES = 1000076001
    STRUCTURE_TYPE_PHYSICAL_DEVICE_MAINTENANCE_3_PROPERTIES = 1000168000
    STRUCTURE_TYPE_DESCRIPTOR_SET_LAYOUT_SUPPORT = 1000168001
    STRUCTURE_TYPE_PHYSICAL_DEVICE_SHADER_DRAW_PARAMETERS_FEATURES = 1000063000
    STRUCTURE_TYPE_PHYSICAL_DEVICE_VULKAN_1_1_FEATURES = 49
    STRUCTURE_TYPE_PHYSICAL_DEVICE_VULKAN_1_1_PROPERTIES = 50
    STRUCTURE_TYPE_PHYSICAL_DEVICE_VULKAN_1_2_FEATURES = 51
    STRUCTURE_TYPE_PHYSICAL_DEVICE_VULKAN_1_2_PROPERTIES = 52
    STRUCTURE_TYPE_IMAGE_FORMAT_LIST_CREATE_INFO = 1000147000
    STRUCTURE_TYPE_ATTACHMENT_DESCRIPTION_2 = 1000109000
    STRUCTURE_TYPE_ATTACHMENT_REFERENCE_2 = 1000109001
    STRUCTURE_TYPE_SUBPASS_DESCRIPTION_2 = 1000109002
    STRUCTURE_TYPE_SUBPASS_DEPENDENCY_2 = 1000109003
    STRUCTURE_TYPE_RENDER_PASS_CREATE_INFO_2 = 1000109004
    STRUCTURE_TYPE_SUBPASS_BEGIN_INFO = 1000109005
    STRUCTURE_TYPE_SUBPASS_END_INFO = 1000109006
    STRUCTURE_TYPE_PHYSICAL_DEVICE_8BIT_STORAGE_FEATURES = 1000177000
    STRUCTURE_TYPE_PHYSICAL_DEVICE_DRIVER_PROPERTIES = 1000196000
    STRUCTURE_TYPE_PHYSICAL_DEVICE_SHADER_ATOMIC_INT64_FEATURES = 1000180000
    STRUCTURE_TYPE_PHYSICAL_DEVICE_SHADER_FLOAT16_INT8_FEATURES = 1000082000
    STRUCTURE_TYPE_PHYSICAL_DEVICE_FLOAT_CONTROLS_PROPERTIES = 1000197000
    STRUCTURE_TYPE_DESCRIPTOR_SET_LAYOUT_BINDING_FLAGS_CREATE_INFO = 1000161000
    STRUCTURE_TYPE_PHYSICAL_DEVICE_DESCRIPTOR_INDEXING_FEATURES = 1000161001
    STRUCTURE_TYPE_PHYSICAL_DEVICE_DESCRIPTOR_INDEXING_PROPERTIES = 1000161002
    STRUCTURE_TYPE_DESCRIPTOR_SET_VARIABLE_DESCRIPTOR_COUNT_ALLOCATE_INFO = 1000161003
    STRUCTURE_TYPE_DESCRIPTOR_SET_VARIABLE_DESCRIPTOR_COUNT_LAYOUT_SUPPORT = 1000161004
    STRUCTURE_TYPE_PHYSICAL_DEVICE_DEPTH_STENCIL_RESOLVE_PROPERTIES = 1000199000
    STRUCTURE_TYPE_SUBPASS_DESCRIPTION_DEPTH_STENCIL_RESOLVE = 1000199001
    STRUCTURE_TYPE_PHYSICAL_DEVICE_SCALAR_BLOCK_LAYOUT_FEATURES = 1000221000
    STRUCTURE_TYPE_IMAGE_STENCIL_USAGE_CREATE_INFO = 1000246000
    STRUCTURE_TYPE_PHYSICAL_DEVICE_SAMPLER_FILTER_MINMAX_PROPERTIES = 1000130000
    STRUCTURE_TYPE_SAMPLER_REDUCTION_MODE_CREATE_INFO = 1000130001
    STRUCTURE_TYPE_PHYSICAL_DEVICE_VULKAN_MEMORY_MODEL_FEATURES = 1000211000
    STRUCTURE_TYPE_PHYSICAL_DEVICE_IMAGELESS_FRAMEBUFFER_FEATURES = 1000108000
    STRUCTURE_TYPE_FRAMEBUFFER_ATTACHMENTS_CREATE_INFO = 1000108001
    STRUCTURE_TYPE_FRAMEBUFFER_ATTACHMENT_IMAGE_INFO = 1000108002
    STRUCTURE_TYPE_RENDER_PASS_ATTACHMENT_BEGIN_INFO = 1000108003
    STRUCTURE_TYPE_PHYSICAL_DEVICE_UNIFORM_BUFFER_STANDARD_LAYOUT_FEATURES = 1000253000
    STRUCTURE_TYPE_PHYSICAL_DEVICE_SHADER_SUBGROUP_EXTENDED_TYPES_FEATURES = 1000175000
    STRUCTURE_TYPE_PHYSICAL_DEVICE_SEPARATE_DEPTH_STENCIL_LAYOUTS_FEATURES = 1000241000
    STRUCTURE_TYPE_ATTACHMENT_REFERENCE_STENCIL_LAYOUT = 1000241001
    STRUCTURE_TYPE_ATTACHMENT_DESCRIPTION_STENCIL_LAYOUT = 1000241002
    STRUCTURE_TYPE_PHYSICAL_DEVICE_HOST_QUERY_RESET_FEATURES = 1000261000
    STRUCTURE_TYPE_PHYSICAL_DEVICE_TIMELINE_SEMAPHORE_FEATURES = 1000207000
    STRUCTURE_TYPE_PHYSICAL_DEVICE_TIMELINE_SEMAPHORE_PROPERTIES = 1000207001
    STRUCTURE_TYPE_SEMAPHORE_TYPE_CREATE_INFO = 1000207002
    STRUCTURE_TYPE_TIMELINE_SEMAPHORE_SUBMIT_INFO = 1000207003
    STRUCTURE_TYPE_SEMAPHORE_WAIT_INFO = 1000207004
    STRUCTURE_TYPE_SEMAPHORE_SIGNAL_INFO = 1000207005
    STRUCTURE_TYPE_PHYSICAL_DEVICE_BUFFER_DEVICE_ADDRESS_FEATURES = 1000257000
    STRUCTURE_TYPE_BUFFER_DEVICE_ADDRESS_INFO = 1000244001
    STRUCTURE_TYPE_BUFFER_OPAQUE_CAPTURE_ADDRESS_CREATE_INFO = 1000257002
    STRUCTURE_TYPE_MEMORY_OPAQUE_CAPTURE_ADDRESS_ALLOCATE_INFO = 1000257003
    STRUCTURE_TYPE_DEVICE_MEMORY_OPAQUE_CAPTURE_ADDRESS_INFO = 1000257004
    STRUCTURE_TYPE_SWAPCHAIN_CREATE_INFO_KHR = 1000001000
    STRUCTURE_TYPE_PRESENT_INFO_KHR = 1000001001
    STRUCTURE_TYPE_DEVICE_GROUP_PRESENT_CAPABILITIES_KHR = 1000060007
    STRUCTURE_TYPE_IMAGE_SWAPCHAIN_CREATE_INFO_KHR = 1000060008
    STRUCTURE_TYPE_BIND_IMAGE_MEMORY_SWAPCHAIN_INFO_KHR = 1000060009
    STRUCTURE_TYPE_ACQUIRE_NEXT_IMAGE_INFO_KHR = 1000060010
    STRUCTURE_TYPE_DEVICE_GROUP_PRESENT_INFO_KHR = 1000060011
    STRUCTURE_TYPE_DEVICE_GROUP_SWAPCHAIN_CREATE_INFO_KHR = 1000060012
    STRUCTURE_TYPE_DISPLAY_MODE_CREATE_INFO_KHR = 1000002000
    STRUCTURE_TYPE_DISPLAY_SURFACE_CREATE_INFO_KHR = 1000002001
    STRUCTURE_TYPE_DISPLAY_PRESENT_INFO_KHR = 1000003000
    STRUCTURE_TYPE_XLIB_SURFACE_CREATE_INFO_KHR = 1000004000
    STRUCTURE_TYPE_XCB_SURFACE_CREATE_INFO_KHR = 1000005000
    STRUCTURE_TYPE_WAYLAND_SURFACE_CREATE_INFO_KHR = 1000006000
    STRUCTURE_TYPE_ANDROID_SURFACE_CREATE_INFO_KHR = 1000008000
    STRUCTURE_TYPE_WIN32_SURFACE_CREATE_INFO_KHR = 1000009000
    STRUCTURE_TYPE_DEBUG_REPORT_CALLBACK_CREATE_INFO_EXT = 1000011000
    STRUCTURE_TYPE_PIPELINE_RASTERIZATION_STATE_RASTERIZATION_ORDER_AMD = 1000018000
    STRUCTURE_TYPE_DEBUG_MARKER_OBJECT_NAME_INFO_EXT = 1000022000
    STRUCTURE_TYPE_DEBUG_MARKER_OBJECT_TAG_INFO_EXT = 1000022001
    STRUCTURE_TYPE_DEBUG_MARKER_MARKER_INFO_EXT = 1000022002
    STRUCTURE_TYPE_DEDICATED_ALLOCATION_IMAGE_CREATE_INFO_NV = 1000026000
    STRUCTURE_TYPE_DEDICATED_ALLOCATION_BUFFER_CREATE_INFO_NV = 1000026001
    STRUCTURE_TYPE_DEDICATED_ALLOCATION_MEMORY_ALLOCATE_INFO_NV = 1000026002
    STRUCTURE_TYPE_PHYSICAL_DEVICE_TRANSFORM_FEEDBACK_FEATURES_EXT = 1000028000
    STRUCTURE_TYPE_PHYSICAL_DEVICE_TRANSFORM_FEEDBACK_PROPERTIES_EXT = 1000028001
    STRUCTURE_TYPE_PIPELINE_RASTERIZATION_STATE_STREAM_CREATE_INFO_EXT = 1000028002
    STRUCTURE_TYPE_IMAGE_VIEW_HANDLE_INFO_NVX = 1000030000
    STRUCTURE_TYPE_IMAGE_VIEW_ADDRESS_PROPERTIES_NVX = 1000030001
    STRUCTURE_TYPE_TEXTURE_LOD_GATHER_FORMAT_PROPERTIES_AMD = 1000041000
    STRUCTURE_TYPE_STREAM_DESCRIPTOR_SURFACE_CREATE_INFO_GGP = 1000049000
    STRUCTURE_TYPE_PHYSICAL_DEVICE_CORNER_SAMPLED_IMAGE_FEATURES_NV = 1000050000
    STRUCTURE_TYPE_EXTERNAL_MEMORY_IMAGE_CREATE_INFO_NV = 1000056000
    STRUCTURE_TYPE_EXPORT_MEMORY_ALLOCATE_INFO_NV = 1000056001
    STRUCTURE_TYPE_IMPORT_MEMORY_WIN32_HANDLE_INFO_NV = 1000057000
    STRUCTURE_TYPE_EXPORT_MEMORY_WIN32_HANDLE_INFO_NV = 1000057001
    STRUCTURE_TYPE_WIN32_KEYED_MUTEX_ACQUIRE_RELEASE_INFO_NV = 1000058000
    STRUCTURE_TYPE_VALIDATION_FLAGS_EXT = 1000061000
    STRUCTURE_TYPE_VI_SURFACE_CREATE_INFO_NN = 1000062000
    STRUCTURE_TYPE_PHYSICAL_DEVICE_TEXTURE_COMPRESSION_ASTC_HDR_FEATURES_EXT = 1000066000
    STRUCTURE_TYPE_IMAGE_VIEW_ASTC_DECODE_MODE_EXT = 1000067000
    STRUCTURE_TYPE_PHYSICAL_DEVICE_ASTC_DECODE_FEATURES_EXT = 1000067001
    STRUCTURE_TYPE_IMPORT_MEMORY_WIN32_HANDLE_INFO_KHR = 1000073000
    STRUCTURE_TYPE_EXPORT_MEMORY_WIN32_HANDLE_INFO_KHR = 1000073001
    STRUCTURE_TYPE_MEMORY_WIN32_HANDLE_PROPERTIES_KHR = 1000073002
    STRUCTURE_TYPE_MEMORY_GET_WIN32_HANDLE_INFO_KHR = 1000073003
    STRUCTURE_TYPE_IMPORT_MEMORY_FD_INFO_KHR = 1000074000
    STRUCTURE_TYPE_MEMORY_FD_PROPERTIES_KHR = 1000074001
    STRUCTURE_TYPE_MEMORY_GET_FD_INFO_KHR = 1000074002
    STRUCTURE_TYPE_WIN32_KEYED_MUTEX_ACQUIRE_RELEASE_INFO_KHR = 1000075000
    STRUCTURE_TYPE_IMPORT_SEMAPHORE_WIN32_HANDLE_INFO_KHR = 1000078000
    STRUCTURE_TYPE_EXPORT_SEMAPHORE_WIN32_HANDLE_INFO_KHR = 1000078001
    STRUCTURE_TYPE_D3D12_FENCE_SUBMIT_INFO_KHR = 1000078002
    STRUCTURE_TYPE_SEMAPHORE_GET_WIN32_HANDLE_INFO_KHR = 1000078003
    STRUCTURE_TYPE_IMPORT_SEMAPHORE_FD_INFO_KHR = 1000079000
    STRUCTURE_TYPE_SEMAPHORE_GET_FD_INFO_KHR = 1000079001
    STRUCTURE_TYPE_PHYSICAL_DEVICE_PUSH_DESCRIPTOR_PROPERTIES_KHR = 1000080000
    STRUCTURE_TYPE_COMMAND_BUFFER_INHERITANCE_CONDITIONAL_RENDERING_INFO_EXT = 1000081000
    STRUCTURE_TYPE_PHYSICAL_DEVICE_CONDITIONAL_RENDERING_FEATURES_EXT = 1000081001
    STRUCTURE_TYPE_CONDITIONAL_RENDERING_BEGIN_INFO_EXT = 1000081002
    STRUCTURE_TYPE_PRESENT_REGIONS_KHR = 1000084000
    STRUCTURE_TYPE_PIPELINE_VIEWPORT_W_SCALING_STATE_CREATE_INFO_NV = 1000087000
    STRUCTURE_TYPE_SURFACE_CAPABILITIES_2_EXT = 1000090000
    STRUCTURE_TYPE_DISPLAY_POWER_INFO_EXT = 1000091000
    STRUCTURE_TYPE_DEVICE_EVENT_INFO_EXT = 1000091001
    STRUCTURE_TYPE_DISPLAY_EVENT_INFO_EXT = 1000091002
    STRUCTURE_TYPE_SWAPCHAIN_COUNTER_CREATE_INFO_EXT = 1000091003
    STRUCTURE_TYPE_PRESENT_TIMES_INFO_GOOGLE = 1000092000
    STRUCTURE_TYPE_PHYSICAL_DEVICE_MULTIVIEW_PER_VIEW_ATTRIBUTES_PROPERTIES_NVX = 1000097000
    STRUCTURE_TYPE_PIPELINE_VIEWPORT_SWIZZLE_STATE_CREATE_INFO_NV = 1000098000
    STRUCTURE_TYPE_PHYSICAL_DEVICE_DISCARD_RECTANGLE_PROPERTIES_EXT = 1000099000
    STRUCTURE_TYPE_PIPELINE_DISCARD_RECTANGLE_STATE_CREATE_INFO_EXT = 1000099001
    STRUCTURE_TYPE_PHYSICAL_DEVICE_CONSERVATIVE_RASTERIZATION_PROPERTIES_EXT = 1000101000
    STRUCTURE_TYPE_PIPELINE_RASTERIZATION_CONSERVATIVE_STATE_CREATE_INFO_EXT = 1000101001
    STRUCTURE_TYPE_PHYSICAL_DEVICE_DEPTH_CLIP_ENABLE_FEATURES_EXT = 1000102000
    STRUCTURE_TYPE_PIPELINE_RASTERIZATION_DEPTH_CLIP_STATE_CREATE_INFO_EXT = 1000102001
    STRUCTURE_TYPE_HDR_METADATA_EXT = 1000105000
    STRUCTURE_TYPE_SHARED_PRESENT_SURFACE_CAPABILITIES_KHR = 1000111000
    STRUCTURE_TYPE_IMPORT_FENCE_WIN32_HANDLE_INFO_KHR = 1000114000
    STRUCTURE_TYPE_EXPORT_FENCE_WIN32_HANDLE_INFO_KHR = 1000114001
    STRUCTURE_TYPE_FENCE_GET_WIN32_HANDLE_INFO_KHR = 1000114002
    STRUCTURE_TYPE_IMPORT_FENCE_FD_INFO_KHR = 1000115000
    STRUCTURE_TYPE_FENCE_GET_FD_INFO_KHR = 1000115001
    STRUCTURE_TYPE_PHYSICAL_DEVICE_PERFORMANCE_QUERY_FEATURES_KHR = 1000116000
    STRUCTURE_TYPE_PHYSICAL_DEVICE_PERFORMANCE_QUERY_PROPERTIES_KHR = 1000116001
    STRUCTURE_TYPE_QUERY_POOL_PERFORMANCE_CREATE_INFO_KHR = 1000116002
    STRUCTURE_TYPE_PERFORMANCE_QUERY_SUBMIT_INFO_KHR = 1000116003
    STRUCTURE_TYPE_ACQUIRE_PROFILING_LOCK_INFO_KHR = 1000116004
    STRUCTURE_TYPE_PERFORMANCE_COUNTER_KHR = 1000116005
    STRUCTURE_TYPE_PERFORMANCE_COUNTER_DESCRIPTION_KHR = 1000116006
    STRUCTURE_TYPE_PHYSICAL_DEVICE_SURFACE_INFO_2_KHR = 1000119000
    STRUCTURE_TYPE_SURFACE_CAPABILITIES_2_KHR = 1000119001
    STRUCTURE_TYPE_SURFACE_FORMAT_2_KHR = 1000119002
    STRUCTURE_TYPE_DISPLAY_PROPERTIES_2_KHR = 1000121000
    STRUCTURE_TYPE_DISPLAY_PLANE_PROPERTIES_2_KHR = 1000121001
    STRUCTURE_TYPE_DISPLAY_MODE_PROPERTIES_2_KHR = 1000121002
    STRUCTURE_TYPE_DISPLAY_PLANE_INFO_2_KHR = 1000121003
    STRUCTURE_TYPE_DISPLAY_PLANE_CAPABILITIES_2_KHR = 1000121004
    STRUCTURE_TYPE_IOS_SURFACE_CREATE_INFO_MVK = 1000122000
    STRUCTURE_TYPE_MACOS_SURFACE_CREATE_INFO_MVK = 1000123000
    STRUCTURE_TYPE_DEBUG_UTILS_OBJECT_NAME_INFO_EXT = 1000128000
    STRUCTURE_TYPE_DEBUG_UTILS_OBJECT_TAG_INFO_EXT = 1000128001
    STRUCTURE_TYPE_DEBUG_UTILS_LABEL_EXT = 1000128002
    STRUCTURE_TYPE_DEBUG_UTILS_MESSENGER_CALLBACK_DATA_EXT = 1000128003
    STRUCTURE_TYPE_DEBUG_UTILS_MESSENGER_CREATE_INFO_EXT = 1000128004
    STRUCTURE_TYPE_ANDROID_HARDWARE_BUFFER_USAGE_ANDROID = 1000129000
    STRUCTURE_TYPE_ANDROID_HARDWARE_BUFFER_PROPERTIES_ANDROID = 1000129001
    STRUCTURE_TYPE_ANDROID_HARDWARE_BUFFER_FORMAT_PROPERTIES_ANDROID = 1000129002
    STRUCTURE_TYPE_IMPORT_ANDROID_HARDWARE_BUFFER_INFO_ANDROID = 1000129003
    STRUCTURE_TYPE_MEMORY_GET_ANDROID_HARDWARE_BUFFER_INFO_ANDROID = 1000129004
    STRUCTURE_TYPE_EXTERNAL_FORMAT_ANDROID = 1000129005
    STRUCTURE_TYPE_PHYSICAL_DEVICE_INLINE_UNIFORM_BLOCK_FEATURES_EXT = 1000138000
    STRUCTURE_TYPE_PHYSICAL_DEVICE_INLINE_UNIFORM_BLOCK_PROPERTIES_EXT = 1000138001
    STRUCTURE_TYPE_WRITE_DESCRIPTOR_SET_INLINE_UNIFORM_BLOCK_EXT = 1000138002
    STRUCTURE_TYPE_DESCRIPTOR_POOL_INLINE_UNIFORM_BLOCK_CREATE_INFO_EXT = 1000138003
    STRUCTURE_TYPE_SAMPLE_LOCATIONS_INFO_EXT = 1000143000
    STRUCTURE_TYPE_RENDER_PASS_SAMPLE_LOCATIONS_BEGIN_INFO_EXT = 1000143001
    STRUCTURE_TYPE_PIPELINE_SAMPLE_LOCATIONS_STATE_CREATE_INFO_EXT = 1000143002
    STRUCTURE_TYPE_PHYSICAL_DEVICE_SAMPLE_LOCATIONS_PROPERTIES_EXT = 1000143003
    STRUCTURE_TYPE_MULTISAMPLE_PROPERTIES_EXT = 1000143004
    STRUCTURE_TYPE_PHYSICAL_DEVICE_BLEND_OPERATION_ADVANCED_FEATURES_EXT = 1000148000
    STRUCTURE_TYPE_PHYSICAL_DEVICE_BLEND_OPERATION_ADVANCED_PROPERTIES_EXT = 1000148001
    STRUCTURE_TYPE_PIPELINE_COLOR_BLEND_ADVANCED_STATE_CREATE_INFO_EXT = 1000148002
    STRUCTURE_TYPE_PIPELINE_COVERAGE_TO_COLOR_STATE_CREATE_INFO_NV = 1000149000
    STRUCTURE_TYPE_BIND_ACCELERATION_STRUCTURE_MEMORY_INFO_KHR = 1000165006
    STRUCTURE_TYPE_WRITE_DESCRIPTOR_SET_ACCELERATION_STRUCTURE_KHR = 1000165007
    STRUCTURE_TYPE_ACCELERATION_STRUCTURE_BUILD_GEOMETRY_INFO_KHR = 1000150000
    STRUCTURE_TYPE_ACCELERATION_STRUCTURE_CREATE_GEOMETRY_TYPE_INFO_KHR = 1000150001
    STRUCTURE_TYPE_ACCELERATION_STRUCTURE_DEVICE_ADDRESS_INFO_KHR = 1000150002
    STRUCTURE_TYPE_ACCELERATION_STRUCTURE_GEOMETRY_AABBS_DATA_KHR = 1000150003
    STRUCTURE_TYPE_ACCELERATION_STRUCTURE_GEOMETRY_INSTANCES_DATA_KHR = 1000150004
    STRUCTURE_TYPE_ACCELERATION_STRUCTURE_GEOMETRY_TRIANGLES_DATA_KHR = 1000150005
    STRUCTURE_TYPE_ACCELERATION_STRUCTURE_GEOMETRY_KHR = 1000150006
    STRUCTURE_TYPE_ACCELERATION_STRUCTURE_MEMORY_REQUIREMENTS_INFO_KHR = 1000150008
    STRUCTURE_TYPE_ACCELERATION_STRUCTURE_VERSION_KHR = 1000150009
    STRUCTURE_TYPE_COPY_ACCELERATION_STRUCTURE_INFO_KHR = 1000150010
    STRUCTURE_TYPE_COPY_ACCELERATION_STRUCTURE_TO_MEMORY_INFO_KHR = 1000150011
    STRUCTURE_TYPE_COPY_MEMORY_TO_ACCELERATION_STRUCTURE_INFO_KHR = 1000150012
    STRUCTURE_TYPE_PHYSICAL_DEVICE_RAY_TRACING_FEATURES_KHR = 1000150013
    STRUCTURE_TYPE_PHYSICAL_DEVICE_RAY_TRACING_PROPERTIES_KHR = 1000150014
    STRUCTURE_TYPE_RAY_TRACING_PIPELINE_CREATE_INFO_KHR = 1000150015
    STRUCTURE_TYPE_RAY_TRACING_SHADER_GROUP_CREATE_INFO_KHR = 1000150016
    STRUCTURE_TYPE_ACCELERATION_STRUCTURE_CREATE_INFO_KHR = 1000150017
    STRUCTURE_TYPE_RAY_TRACING_PIPELINE_INTERFACE_CREATE_INFO_KHR = 1000150018
    STRUCTURE_TYPE_PIPELINE_COVERAGE_MODULATION_STATE_CREATE_INFO_NV = 1000152000
    STRUCTURE_TYPE_PHYSICAL_DEVICE_SHADER_SM_BUILTINS_FEATURES_NV = 1000154000
    STRUCTURE_TYPE_PHYSICAL_DEVICE_SHADER_SM_BUILTINS_PROPERTIES_NV = 1000154001
    STRUCTURE_TYPE_DRM_FORMAT_MODIFIER_PROPERTIES_LIST_EXT = 1000158000
    STRUCTURE_TYPE_DRM_FORMAT_MODIFIER_PROPERTIES_EXT = 1000158001
    STRUCTURE_TYPE_PHYSICAL_DEVICE_IMAGE_DRM_FORMAT_MODIFIER_INFO_EXT = 1000158002
    STRUCTURE_TYPE_IMAGE_DRM_FORMAT_MODIFIER_LIST_CREATE_INFO_EXT = 1000158003
    STRUCTURE_TYPE_IMAGE_DRM_FORMAT_MODIFIER_EXPLICIT_CREATE_INFO_EXT = 1000158004
    STRUCTURE_TYPE_IMAGE_DRM_FORMAT_MODIFIER_PROPERTIES_EXT = 1000158005
    STRUCTURE_TYPE_VALIDATION_CACHE_CREATE_INFO_EXT = 1000160000
    STRUCTURE_TYPE_SHADER_MODULE_VALIDATION_CACHE_CREATE_INFO_EXT = 1000160001
    STRUCTURE_TYPE_PIPELINE_VIEWPORT_SHADING_RATE_IMAGE_STATE_CREATE_INFO_NV = 1000164000
    STRUCTURE_TYPE_PHYSICAL_DEVICE_SHADING_RATE_IMAGE_FEATURES_NV = 1000164001
    STRUCTURE_TYPE_PHYSICAL_DEVICE_SHADING_RATE_IMAGE_PROPERTIES_NV = 1000164002
    STRUCTURE_TYPE_PIPELINE_VIEWPORT_COARSE_SAMPLE_ORDER_STATE_CREATE_INFO_NV = 1000164005
    STRUCTURE_TYPE_RAY_TRACING_PIPELINE_CREATE_INFO_NV = 1000165000
    STRUCTURE_TYPE_ACCELERATION_STRUCTURE_CREATE_INFO_NV = 1000165001
    STRUCTURE_TYPE_GEOMETRY_NV = 1000165003
    STRUCTURE_TYPE_GEOMETRY_TRIANGLES_NV = 1000165004
    STRUCTURE_TYPE_GEOMETRY_AABB_NV = 1000165005
    STRUCTURE_TYPE_ACCELERATION_STRUCTURE_MEMORY_REQUIREMENTS_INFO_NV = 1000165008
    STRUCTURE_TYPE_PHYSICAL_DEVICE_RAY_TRACING_PROPERTIES_NV = 1000165009
    STRUCTURE_TYPE_RAY_TRACING_SHADER_GROUP_CREATE_INFO_NV = 1000165011
    STRUCTURE_TYPE_ACCELERATION_STRUCTURE_INFO_NV = 1000165012
    STRUCTURE_TYPE_PHYSICAL_DEVICE_REPRESENTATIVE_FRAGMENT_TEST_FEATURES_NV = 1000166000
    STRUCTURE_TYPE_PIPELINE_REPRESENTATIVE_FRAGMENT_TEST_STATE_CREATE_INFO_NV = 1000166001
    STRUCTURE_TYPE_PHYSICAL_DEVICE_IMAGE_VIEW_IMAGE_FORMAT_INFO_EXT = 1000170000
    STRUCTURE_TYPE_FILTER_CUBIC_IMAGE_VIEW_IMAGE_FORMAT_PROPERTIES_EXT = 1000170001
    STRUCTURE_TYPE_DEVICE_QUEUE_GLOBAL_PRIORITY_CREATE_INFO_EXT = 1000174000
    STRUCTURE_TYPE_IMPORT_MEMORY_HOST_POINTER_INFO_EXT = 1000178000
    STRUCTURE_TYPE_MEMORY_HOST_POINTER_PROPERTIES_EXT = 1000178001
    STRUCTURE_TYPE_PHYSICAL_DEVICE_EXTERNAL_MEMORY_HOST_PROPERTIES_EXT = 1000178002
    STRUCTURE_TYPE_PHYSICAL_DEVICE_SHADER_CLOCK_FEATURES_KHR = 1000181000
    STRUCTURE_TYPE_PIPELINE_COMPILER_CONTROL_CREATE_INFO_AMD = 1000183000
    STRUCTURE_TYPE_CALIBRATED_TIMESTAMP_INFO_EXT = 1000184000
    STRUCTURE_TYPE_PHYSICAL_DEVICE_SHADER_CORE_PROPERTIES_AMD = 1000185000
    STRUCTURE_TYPE_DEVICE_MEMORY_OVERALLOCATION_CREATE_INFO_AMD = 1000189000
    STRUCTURE_TYPE_PHYSICAL_DEVICE_VERTEX_ATTRIBUTE_DIVISOR_PROPERTIES_EXT = 1000190000
    STRUCTURE_TYPE_PIPELINE_VERTEX_INPUT_DIVISOR_STATE_CREATE_INFO_EXT = 1000190001
    STRUCTURE_TYPE_PHYSICAL_DEVICE_VERTEX_ATTRIBUTE_DIVISOR_FEATURES_EXT = 1000190002
    STRUCTURE_TYPE_PRESENT_FRAME_TOKEN_GGP = 1000191000
    STRUCTURE_TYPE_PIPELINE_CREATION_FEEDBACK_CREATE_INFO_EXT = 1000192000
    STRUCTURE_TYPE_PHYSICAL_DEVICE_COMPUTE_SHADER_DERIVATIVES_FEATURES_NV = 1000201000
    STRUCTURE_TYPE_PHYSICAL_DEVICE_MESH_SHADER_FEATURES_NV = 1000202000
    STRUCTURE_TYPE_PHYSICAL_DEVICE_MESH_SHADER_PROPERTIES_NV = 1000202001
    STRUCTURE_TYPE_PHYSICAL_DEVICE_FRAGMENT_SHADER_BARYCENTRIC_FEATURES_NV = 1000203000
    STRUCTURE_TYPE_PHYSICAL_DEVICE_SHADER_IMAGE_FOOTPRINT_FEATURES_NV = 1000204000
    STRUCTURE_TYPE_PIPELINE_VIEWPORT_EXCLUSIVE_SCISSOR_STATE_CREATE_INFO_NV = 1000205000
    STRUCTURE_TYPE_PHYSICAL_DEVICE_EXCLUSIVE_SCISSOR_FEATURES_NV = 1000205002
    STRUCTURE_TYPE_CHECKPOINT_DATA_NV = 1000206000
    STRUCTURE_TYPE_QUEUE_FAMILY_CHECKPOINT_PROPERTIES_NV = 1000206001
    STRUCTURE_TYPE_PHYSICAL_DEVICE_SHADER_INTEGER_FUNCTIONS_2_FEATURES_INTEL = 1000209000
    STRUCTURE_TYPE_QUERY_POOL_PERFORMANCE_QUERY_CREATE_INFO_INTEL = 1000210000
    STRUCTURE_TYPE_INITIALIZE_PERFORMANCE_API_INFO_INTEL = 1000210001
    STRUCTURE_TYPE_PERFORMANCE_MARKER_INFO_INTEL = 1000210002
    STRUCTURE_TYPE_PERFORMANCE_STREAM_MARKER_INFO_INTEL = 1000210003
    STRUCTURE_TYPE_PERFORMANCE_OVERRIDE_INFO_INTEL = 1000210004
    STRUCTURE_TYPE_PERFORMANCE_CONFIGURATION_ACQUIRE_INFO_INTEL = 1000210005
    STRUCTURE_TYPE_PHYSICAL_DEVICE_PCI_BUS_INFO_PROPERTIES_EXT = 1000212000
    STRUCTURE_TYPE_DISPLAY_NATIVE_HDR_SURFACE_CAPABILITIES_AMD = 1000213000
    STRUCTURE_TYPE_SWAPCHAIN_DISPLAY_NATIVE_HDR_CREATE_INFO_AMD = 1000213001
    STRUCTURE_TYPE_IMAGEPIPE_SURFACE_CREATE_INFO_FUCHSIA = 1000214000
    STRUCTURE_TYPE_METAL_SURFACE_CREATE_INFO_EXT = 1000217000
    STRUCTURE_TYPE_PHYSICAL_DEVICE_FRAGMENT_DENSITY_MAP_FEATURES_EXT = 1000218000
    STRUCTURE_TYPE_PHYSICAL_DEVICE_FRAGMENT_DENSITY_MAP_PROPERTIES_EXT = 1000218001
    STRUCTURE_TYPE_RENDER_PASS_FRAGMENT_DENSITY_MAP_CREATE_INFO_EXT = 1000218002
    STRUCTURE_TYPE_PHYSICAL_DEVICE_SUBGROUP_SIZE_CONTROL_PROPERTIES_EXT = 1000225000
    STRUCTURE_TYPE_PIPELINE_SHADER_STAGE_REQUIRED_SUBGROUP_SIZE_CREATE_INFO_EXT = 1000225001
    STRUCTURE_TYPE_PHYSICAL_DEVICE_SUBGROUP_SIZE_CONTROL_FEATURES_EXT = 1000225002
    STRUCTURE_TYPE_PHYSICAL_DEVICE_SHADER_CORE_PROPERTIES_2_AMD = 1000227000
    STRUCTURE_TYPE_PHYSICAL_DEVICE_COHERENT_MEMORY_FEATURES_AMD = 1000229000
    STRUCTURE_TYPE_PHYSICAL_DEVICE_MEMORY_BUDGET_PROPERTIES_EXT = 1000237000
    STRUCTURE_TYPE_PHYSICAL_DEVICE_MEMORY_PRIORITY_FEATURES_EXT = 1000238000
    STRUCTURE_TYPE_MEMORY_PRIORITY_ALLOCATE_INFO_EXT = 1000238001
    STRUCTURE_TYPE_SURFACE_PROTECTED_CAPABILITIES_KHR = 1000239000
    STRUCTURE_TYPE_PHYSICAL_DEVICE_DEDICATED_ALLOCATION_IMAGE_ALIASING_FEATURES_NV = 1000240000
    STRUCTURE_TYPE_PHYSICAL_DEVICE_BUFFER_DEVICE_ADDRESS_FEATURES_EXT = 1000244000
    STRUCTURE_TYPE_BUFFER_DEVICE_ADDRESS_CREATE_INFO_EXT = 1000244002
    STRUCTURE_TYPE_PHYSICAL_DEVICE_TOOL_PROPERTIES_EXT = 1000245000
    STRUCTURE_TYPE_VALIDATION_FEATURES_EXT = 1000247000
    STRUCTURE_TYPE_PHYSICAL_DEVICE_COOPERATIVE_MATRIX_FEATURES_NV = 1000249000
    STRUCTURE_TYPE_COOPERATIVE_MATRIX_PROPERTIES_NV = 1000249001
    STRUCTURE_TYPE_PHYSICAL_DEVICE_COOPERATIVE_MATRIX_PROPERTIES_NV = 1000249002
    STRUCTURE_TYPE_PHYSICAL_DEVICE_COVERAGE_REDUCTION_MODE_FEATURES_NV = 1000250000
    STRUCTURE_TYPE_PIPELINE_COVERAGE_REDUCTION_STATE_CREATE_INFO_NV = 1000250001
    STRUCTURE_TYPE_FRAMEBUFFER_MIXED_SAMPLES_COMBINATION_NV = 1000250002
    STRUCTURE_TYPE_PHYSICAL_DEVICE_FRAGMENT_SHADER_INTERLOCK_FEATURES_EXT = 1000251000
    STRUCTURE_TYPE_PHYSICAL_DEVICE_YCBCR_IMAGE_ARRAYS_FEATURES_EXT = 1000252000
    STRUCTURE_TYPE_SURFACE_FULL_SCREEN_EXCLUSIVE_INFO_EXT = 1000255000
    STRUCTURE_TYPE_SURFACE_CAPABILITIES_FULL_SCREEN_EXCLUSIVE_EXT = 1000255002
    STRUCTURE_TYPE_SURFACE_FULL_SCREEN_EXCLUSIVE_WIN32_INFO_EXT = 1000255001
    STRUCTURE_TYPE_HEADLESS_SURFACE_CREATE_INFO_EXT = 1000256000
    STRUCTURE_TYPE_PHYSICAL_DEVICE_LINE_RASTERIZATION_FEATURES_EXT = 1000259000
    STRUCTURE_TYPE_PIPELINE_RASTERIZATION_LINE_STATE_CREATE_INFO_EXT = 1000259001
    STRUCTURE_TYPE_PHYSICAL_DEVICE_LINE_RASTERIZATION_PROPERTIES_EXT = 1000259002
    STRUCTURE_TYPE_PHYSICAL_DEVICE_SHADER_ATOMIC_FLOAT_FEATURES_EXT = 1000260000
    STRUCTURE_TYPE_PHYSICAL_DEVICE_INDEX_TYPE_UINT8_FEATURES_EXT = 1000265000
    STRUCTURE_TYPE_PHYSICAL_DEVICE_EXTENDED_DYNAMIC_STATE_FEATURES_EXT = 1000267000
    STRUCTURE_TYPE_DEFERRED_OPERATION_INFO_KHR = 1000268000
    STRUCTURE_TYPE_PHYSICAL_DEVICE_PIPELINE_EXECUTABLE_PROPERTIES_FEATURES_KHR = 1000269000
    STRUCTURE_TYPE_PIPELINE_INFO_KHR = 1000269001
    STRUCTURE_TYPE_PIPELINE_EXECUTABLE_PROPERTIES_KHR = 1000269002
    STRUCTURE_TYPE_PIPELINE_EXECUTABLE_INFO_KHR = 1000269003
    STRUCTURE_TYPE_PIPELINE_EXECUTABLE_STATISTIC_KHR = 1000269004
    STRUCTURE_TYPE_PIPELINE_EXECUTABLE_INTERNAL_REPRESENTATION_KHR = 1000269005
    STRUCTURE_TYPE_PHYSICAL_DEVICE_SHADER_DEMOTE_TO_HELPER_INVOCATION_FEATURES_EXT = 1000276000
    STRUCTURE_TYPE_PHYSICAL_DEVICE_DEVICE_GENERATED_COMMANDS_PROPERTIES_NV = 1000277000
    STRUCTURE_TYPE_GRAPHICS_SHADER_GROUP_CREATE_INFO_NV = 1000277001
    STRUCTURE_TYPE_GRAPHICS_PIPELINE_SHADER_GROUPS_CREATE_INFO_NV = 1000277002
    STRUCTURE_TYPE_INDIRECT_COMMANDS_LAYOUT_TOKEN_NV = 1000277003
    STRUCTURE_TYPE_INDIRECT_COMMANDS_LAYOUT_CREATE_INFO_NV = 1000277004
    STRUCTURE_TYPE_GENERATED_COMMANDS_INFO_NV = 1000277005
    STRUCTURE_TYPE_GENERATED_COMMANDS_MEMORY_REQUIREMENTS_INFO_NV = 1000277006
    STRUCTURE_TYPE_PHYSICAL_DEVICE_DEVICE_GENERATED_COMMANDS_FEATURES_NV = 1000277007
    STRUCTURE_TYPE_PHYSICAL_DEVICE_TEXEL_BUFFER_ALIGNMENT_FEATURES_EXT = 1000281000
    STRUCTURE_TYPE_PHYSICAL_DEVICE_TEXEL_BUFFER_ALIGNMENT_PROPERTIES_EXT = 1000281001
    STRUCTURE_TYPE_COMMAND_BUFFER_INHERITANCE_RENDER_PASS_TRANSFORM_INFO_QCOM = 1000282000
    STRUCTURE_TYPE_RENDER_PASS_TRANSFORM_BEGIN_INFO_QCOM = 1000282001
    STRUCTURE_TYPE_PHYSICAL_DEVICE_ROBUSTNESS_2_FEATURES_EXT = 1000286000
    STRUCTURE_TYPE_PHYSICAL_DEVICE_ROBUSTNESS_2_PROPERTIES_EXT = 1000286001
    STRUCTURE_TYPE_SAMPLER_CUSTOM_BORDER_COLOR_CREATE_INFO_EXT = 1000287000
    STRUCTURE_TYPE_PHYSICAL_DEVICE_CUSTOM_BORDER_COLOR_PROPERTIES_EXT = 1000287001
    STRUCTURE_TYPE_PHYSICAL_DEVICE_CUSTOM_BORDER_COLOR_FEATURES_EXT = 1000287002
    STRUCTURE_TYPE_PIPELINE_LIBRARY_CREATE_INFO_KHR = 1000290000
    STRUCTURE_TYPE_PHYSICAL_DEVICE_PRIVATE_DATA_FEATURES_EXT = 1000295000
    STRUCTURE_TYPE_DEVICE_PRIVATE_DATA_CREATE_INFO_EXT = 1000295001
    STRUCTURE_TYPE_PRIVATE_DATA_SLOT_CREATE_INFO_EXT = 1000295002
    STRUCTURE_TYPE_PHYSICAL_DEVICE_PIPELINE_CREATION_CACHE_CONTROL_FEATURES_EXT = 1000297000
    STRUCTURE_TYPE_PHYSICAL_DEVICE_DIAGNOSTICS_CONFIG_FEATURES_NV = 1000300000
    STRUCTURE_TYPE_DEVICE_DIAGNOSTICS_CONFIG_CREATE_INFO_NV = 1000300001
    STRUCTURE_TYPE_PHYSICAL_DEVICE_FRAGMENT_DENSITY_MAP_2_FEATURES_EXT = 1000332000
    STRUCTURE_TYPE_PHYSICAL_DEVICE_FRAGMENT_DENSITY_MAP_2_PROPERTIES_EXT = 1000332001
    STRUCTURE_TYPE_PHYSICAL_DEVICE_IMAGE_ROBUSTNESS_FEATURES_EXT = 1000335000
    STRUCTURE_TYPE_PHYSICAL_DEVICE_4444_FORMATS_FEATURES_EXT = 1000340000
    STRUCTURE_TYPE_DIRECTFB_SURFACE_CREATE_INFO_EXT = 1000346000
    STRUCTURE_TYPE_PHYSICAL_DEVICE_VARIABLE_POINTER_FEATURES = 1000120000
    STRUCTURE_TYPE_PHYSICAL_DEVICE_SHADER_DRAW_PARAMETER_FEATURES = 1000063000
    STRUCTURE_TYPE_DEBUG_REPORT_CREATE_INFO_EXT = 1000011000
    STRUCTURE_TYPE_RENDER_PASS_MULTIVIEW_CREATE_INFO_KHR = 1000053000
    STRUCTURE_TYPE_PHYSICAL_DEVICE_MULTIVIEW_FEATURES_KHR = 1000053001
    STRUCTURE_TYPE_PHYSICAL_DEVICE_MULTIVIEW_PROPERTIES_KHR = 1000053002
    STRUCTURE_TYPE_PHYSICAL_DEVICE_FEATURES_2_KHR = 1000059000
    STRUCTURE_TYPE_PHYSICAL_DEVICE_PROPERTIES_2_KHR = 1000059001
    STRUCTURE_TYPE_FORMAT_PROPERTIES_2_KHR = 1000059002
    STRUCTURE_TYPE_IMAGE_FORMAT_PROPERTIES_2_KHR = 1000059003
    STRUCTURE_TYPE_PHYSICAL_DEVICE_IMAGE_FORMAT_INFO_2_KHR = 1000059004
    STRUCTURE_TYPE_QUEUE_FAMILY_PROPERTIES_2_KHR = 1000059005
    STRUCTURE_TYPE_PHYSICAL_DEVICE_MEMORY_PROPERTIES_2_KHR = 1000059006
    STRUCTURE_TYPE_SPARSE_IMAGE_FORMAT_PROPERTIES_2_KHR = 1000059007
    STRUCTURE_TYPE_PHYSICAL_DEVICE_SPARSE_IMAGE_FORMAT_INFO_2_KHR = 1000059008
    STRUCTURE_TYPE_MEMORY_ALLOCATE_FLAGS_INFO_KHR = 1000060000
    STRUCTURE_TYPE_DEVICE_GROUP_RENDER_PASS_BEGIN_INFO_KHR = 1000060003
    STRUCTURE_TYPE_DEVICE_GROUP_COMMAND_BUFFER_BEGIN_INFO_KHR = 1000060004
    STRUCTURE_TYPE_DEVICE_GROUP_SUBMIT_INFO_KHR = 1000060005
    STRUCTURE_TYPE_DEVICE_GROUP_BIND_SPARSE_INFO_KHR = 1000060006
    STRUCTURE_TYPE_BIND_BUFFER_MEMORY_DEVICE_GROUP_INFO_KHR = 1000060013
    STRUCTURE_TYPE_BIND_IMAGE_MEMORY_DEVICE_GROUP_INFO_KHR = 1000060014
    STRUCTURE_TYPE_PHYSICAL_DEVICE_GROUP_PROPERTIES_KHR = 1000070000
    STRUCTURE_TYPE_DEVICE_GROUP_DEVICE_CREATE_INFO_KHR = 1000070001
    STRUCTURE_TYPE_PHYSICAL_DEVICE_EXTERNAL_IMAGE_FORMAT_INFO_KHR = 1000071000
    STRUCTURE_TYPE_EXTERNAL_IMAGE_FORMAT_PROPERTIES_KHR = 1000071001
    STRUCTURE_TYPE_PHYSICAL_DEVICE_EXTERNAL_BUFFER_INFO_KHR = 1000071002
    STRUCTURE_TYPE_EXTERNAL_BUFFER_PROPERTIES_KHR = 1000071003
    STRUCTURE_TYPE_PHYSICAL_DEVICE_ID_PROPERTIES_KHR = 1000071004
    STRUCTURE_TYPE_EXTERNAL_MEMORY_BUFFER_CREATE_INFO_KHR = 1000072000
    STRUCTURE_TYPE_EXTERNAL_MEMORY_IMAGE_CREATE_INFO_KHR = 1000072001
    STRUCTURE_TYPE_EXPORT_MEMORY_ALLOCATE_INFO_KHR = 1000072002
    STRUCTURE_TYPE_PHYSICAL_DEVICE_EXTERNAL_SEMAPHORE_INFO_KHR = 1000076000
    STRUCTURE_TYPE_EXTERNAL_SEMAPHORE_PROPERTIES_KHR = 1000076001
    STRUCTURE_TYPE_EXPORT_SEMAPHORE_CREATE_INFO_KHR = 1000077000
    STRUCTURE_TYPE_PHYSICAL_DEVICE_SHADER_FLOAT16_INT8_FEATURES_KHR = 1000082000
    STRUCTURE_TYPE_PHYSICAL_DEVICE_FLOAT16_INT8_FEATURES_KHR = 1000082000
    STRUCTURE_TYPE_PHYSICAL_DEVICE_16BIT_STORAGE_FEATURES_KHR = 1000083000
    STRUCTURE_TYPE_DESCRIPTOR_UPDATE_TEMPLATE_CREATE_INFO_KHR = 1000085000
    STRUCTURE_TYPE_SURFACE_CAPABILITIES2_EXT = 1000090000
    STRUCTURE_TYPE_PHYSICAL_DEVICE_IMAGELESS_FRAMEBUFFER_FEATURES_KHR = 1000108000
    STRUCTURE_TYPE_FRAMEBUFFER_ATTACHMENTS_CREATE_INFO_KHR = 1000108001
    STRUCTURE_TYPE_FRAMEBUFFER_ATTACHMENT_IMAGE_INFO_KHR = 1000108002
    STRUCTURE_TYPE_RENDER_PASS_ATTACHMENT_BEGIN_INFO_KHR = 1000108003
    STRUCTURE_TYPE_ATTACHMENT_DESCRIPTION_2_KHR = 1000109000
    STRUCTURE_TYPE_ATTACHMENT_REFERENCE_2_KHR = 1000109001
    STRUCTURE_TYPE_SUBPASS_DESCRIPTION_2_KHR = 1000109002
    STRUCTURE_TYPE_SUBPASS_DEPENDENCY_2_KHR = 1000109003
    STRUCTURE_TYPE_RENDER_PASS_CREATE_INFO_2_KHR = 1000109004
    STRUCTURE_TYPE_SUBPASS_BEGIN_INFO_KHR = 1000109005
    STRUCTURE_TYPE_SUBPASS_END_INFO_KHR = 1000109006
    STRUCTURE_TYPE_PHYSICAL_DEVICE_EXTERNAL_FENCE_INFO_KHR = 1000112000
    STRUCTURE_TYPE_EXTERNAL_FENCE_PROPERTIES_KHR = 1000112001
    STRUCTURE_TYPE_EXPORT_FENCE_CREATE_INFO_KHR = 1000113000
    STRUCTURE_TYPE_PHYSICAL_DEVICE_POINT_CLIPPING_PROPERTIES_KHR = 1000117000
    STRUCTURE_TYPE_RENDER_PASS_INPUT_ATTACHMENT_ASPECT_CREATE_INFO_KHR = 1000117001
    STRUCTURE_TYPE_IMAGE_VIEW_USAGE_CREATE_INFO_KHR = 1000117002
    STRUCTURE_TYPE_PIPELINE_TESSELLATION_DOMAIN_ORIGIN_STATE_CREATE_INFO_KHR = 1000117003
    STRUCTURE_TYPE_PHYSICAL_DEVICE_VARIABLE_POINTERS_FEATURES_KHR = 1000120000
    STRUCTURE_TYPE_PHYSICAL_DEVICE_VARIABLE_POINTER_FEATURES_KHR = 1000120000
    STRUCTURE_TYPE_MEMORY_DEDICATED_REQUIREMENTS_KHR = 1000127000
    STRUCTURE_TYPE_MEMORY_DEDICATED_ALLOCATE_INFO_KHR = 1000127001
    STRUCTURE_TYPE_PHYSICAL_DEVICE_SAMPLER_FILTER_MINMAX_PROPERTIES_EXT = 1000130000
    STRUCTURE_TYPE_SAMPLER_REDUCTION_MODE_CREATE_INFO_EXT = 1000130001
    STRUCTURE_TYPE_BUFFER_MEMORY_REQUIREMENTS_INFO_2_KHR = 1000146000
    STRUCTURE_TYPE_IMAGE_MEMORY_REQUIREMENTS_INFO_2_KHR = 1000146001
    STRUCTURE_TYPE_IMAGE_SPARSE_MEMORY_REQUIREMENTS_INFO_2_KHR = 1000146002
    STRUCTURE_TYPE_MEMORY_REQUIREMENTS_2_KHR = 1000146003
    STRUCTURE_TYPE_SPARSE_IMAGE_MEMORY_REQUIREMENTS_2_KHR = 1000146004
    STRUCTURE_TYPE_IMAGE_FORMAT_LIST_CREATE_INFO_KHR = 1000147000
    STRUCTURE_TYPE_SAMPLER_YCBCR_CONVERSION_CREATE_INFO_KHR = 1000156000
    STRUCTURE_TYPE_SAMPLER_YCBCR_CONVERSION_INFO_KHR = 1000156001
    STRUCTURE_TYPE_BIND_IMAGE_PLANE_MEMORY_INFO_KHR = 1000156002
    STRUCTURE_TYPE_IMAGE_PLANE_MEMORY_REQUIREMENTS_INFO_KHR = 1000156003
    STRUCTURE_TYPE_PHYSICAL_DEVICE_SAMPLER_YCBCR_CONVERSION_FEATURES_KHR = 1000156004
    STRUCTURE_TYPE_SAMPLER_YCBCR_CONVERSION_IMAGE_FORMAT_PROPERTIES_KHR = 1000156005
    STRUCTURE_TYPE_BIND_BUFFER_MEMORY_INFO_KHR = 1000157000
    STRUCTURE_TYPE_BIND_IMAGE_MEMORY_INFO_KHR = 1000157001
    STRUCTURE_TYPE_DESCRIPTOR_SET_LAYOUT_BINDING_FLAGS_CREATE_INFO_EXT = 1000161000
    STRUCTURE_TYPE_PHYSICAL_DEVICE_DESCRIPTOR_INDEXING_FEATURES_EXT = 1000161001
    STRUCTURE_TYPE_PHYSICAL_DEVICE_DESCRIPTOR_INDEXING_PROPERTIES_EXT = 1000161002
    STRUCTURE_TYPE_DESCRIPTOR_SET_VARIABLE_DESCRIPTOR_COUNT_ALLOCATE_INFO_EXT = 1000161003
    STRUCTURE_TYPE_DESCRIPTOR_SET_VARIABLE_DESCRIPTOR_COUNT_LAYOUT_SUPPORT_EXT = 1000161004
    STRUCTURE_TYPE_BIND_ACCELERATION_STRUCTURE_MEMORY_INFO_NV = 1000165006
    STRUCTURE_TYPE_WRITE_DESCRIPTOR_SET_ACCELERATION_STRUCTURE_NV = 1000165007
    STRUCTURE_TYPE_PHYSICAL_DEVICE_MAINTENANCE_3_PROPERTIES_KHR = 1000168000
    STRUCTURE_TYPE_DESCRIPTOR_SET_LAYOUT_SUPPORT_KHR = 1000168001
    STRUCTURE_TYPE_PHYSICAL_DEVICE_SHADER_SUBGROUP_EXTENDED_TYPES_FEATURES_KHR = 1000175000
    STRUCTURE_TYPE_PHYSICAL_DEVICE_8BIT_STORAGE_FEATURES_KHR = 1000177000
    STRUCTURE_TYPE_PHYSICAL_DEVICE_SHADER_ATOMIC_INT64_FEATURES_KHR = 1000180000
    STRUCTURE_TYPE_PHYSICAL_DEVICE_DRIVER_PROPERTIES_KHR = 1000196000
    STRUCTURE_TYPE_PHYSICAL_DEVICE_FLOAT_CONTROLS_PROPERTIES_KHR = 1000197000
    STRUCTURE_TYPE_PHYSICAL_DEVICE_DEPTH_STENCIL_RESOLVE_PROPERTIES_KHR = 1000199000
    STRUCTURE_TYPE_SUBPASS_DESCRIPTION_DEPTH_STENCIL_RESOLVE_KHR = 1000199001
    STRUCTURE_TYPE_PHYSICAL_DEVICE_TIMELINE_SEMAPHORE_FEATURES_KHR = 1000207000
    STRUCTURE_TYPE_PHYSICAL_DEVICE_TIMELINE_SEMAPHORE_PROPERTIES_KHR = 1000207001
    STRUCTURE_TYPE_SEMAPHORE_TYPE_CREATE_INFO_KHR = 1000207002
    STRUCTURE_TYPE_TIMELINE_SEMAPHORE_SUBMIT_INFO_KHR = 1000207003
    STRUCTURE_TYPE_SEMAPHORE_WAIT_INFO_KHR = 1000207004
    STRUCTURE_TYPE_SEMAPHORE_SIGNAL_INFO_KHR = 1000207005
    STRUCTURE_TYPE_QUERY_POOL_CREATE_INFO_INTEL = 1000210000
    STRUCTURE_TYPE_PHYSICAL_DEVICE_VULKAN_MEMORY_MODEL_FEATURES_KHR = 1000211000
    STRUCTURE_TYPE_PHYSICAL_DEVICE_SCALAR_BLOCK_LAYOUT_FEATURES_EXT = 1000221000
    STRUCTURE_TYPE_PHYSICAL_DEVICE_SEPARATE_DEPTH_STENCIL_LAYOUTS_FEATURES_KHR = 1000241000
    STRUCTURE_TYPE_ATTACHMENT_REFERENCE_STENCIL_LAYOUT_KHR = 1000241001
    STRUCTURE_TYPE_ATTACHMENT_DESCRIPTION_STENCIL_LAYOUT_KHR = 1000241002
    STRUCTURE_TYPE_PHYSICAL_DEVICE_BUFFER_ADDRESS_FEATURES_EXT = 1000244000
    STRUCTURE_TYPE_BUFFER_DEVICE_ADDRESS_INFO_EXT = 1000244001
    STRUCTURE_TYPE_IMAGE_STENCIL_USAGE_CREATE_INFO_EXT = 1000246000
    STRUCTURE_TYPE_PHYSICAL_DEVICE_UNIFORM_BUFFER_STANDARD_LAYOUT_FEATURES_KHR = 1000253000
    STRUCTURE_TYPE_PHYSICAL_DEVICE_BUFFER_DEVICE_ADDRESS_FEATURES_KHR = 1000257000
    STRUCTURE_TYPE_BUFFER_DEVICE_ADDRESS_INFO_KHR = 1000244001
    STRUCTURE_TYPE_BUFFER_OPAQUE_CAPTURE_ADDRESS_CREATE_INFO_KHR = 1000257002
    STRUCTURE_TYPE_MEMORY_OPAQUE_CAPTURE_ADDRESS_ALLOCATE_INFO_KHR = 1000257003
    STRUCTURE_TYPE_DEVICE_MEMORY_OPAQUE_CAPTURE_ADDRESS_INFO_KHR = 1000257004
    STRUCTURE_TYPE_PHYSICAL_DEVICE_HOST_QUERY_RESET_FEATURES_EXT = 1000261000
    STRUCTURE_TYPE_MAX_ENUM = 2147483647
end
@cenum Result::Int32 begin
    SUCCESS = 0
    NOT_READY = 1
    TIMEOUT = 2
    EVENT_SET = 3
    EVENT_RESET = 4
    INCOMPLETE = 5
    ERROR_OUT_OF_HOST_MEMORY = -1
    ERROR_OUT_OF_DEVICE_MEMORY = -2
    ERROR_INITIALIZATION_FAILED = -3
    ERROR_DEVICE_LOST = -4
    ERROR_MEMORY_MAP_FAILED = -5
    ERROR_LAYER_NOT_PRESENT = -6
    ERROR_EXTENSION_NOT_PRESENT = -7
    ERROR_FEATURE_NOT_PRESENT = -8
    ERROR_INCOMPATIBLE_DRIVER = -9
    ERROR_TOO_MANY_OBJECTS = -10
    ERROR_FORMAT_NOT_SUPPORTED = -11
    ERROR_FRAGMENTED_POOL = -12
    ERROR_UNKNOWN = -13
    ERROR_OUT_OF_POOL_MEMORY = -1000069000
    ERROR_INVALID_EXTERNAL_HANDLE = -1000072003
    ERROR_FRAGMENTATION = -1000161000
    ERROR_INVALID_OPAQUE_CAPTURE_ADDRESS = -1000257000
    ERROR_SURFACE_LOST_KHR = -1000000000
    ERROR_NATIVE_WINDOW_IN_USE_KHR = -1000000001
    SUBOPTIMAL_KHR = 1000001003
    ERROR_OUT_OF_DATE_KHR = -1000001004
    ERROR_INCOMPATIBLE_DISPLAY_KHR = -1000003001
    ERROR_VALIDATION_FAILED_EXT = -1000011001
    ERROR_INVALID_SHADER_NV = -1000012000
    ERROR_INCOMPATIBLE_VERSION_KHR = -1000150000
    ERROR_INVALID_DRM_FORMAT_MODIFIER_PLANE_LAYOUT_EXT = -1000158000
    ERROR_NOT_PERMITTED_EXT = -1000174001
    ERROR_FULL_SCREEN_EXCLUSIVE_MODE_LOST_EXT = -1000255000
    THREAD_IDLE_KHR = 1000268000
    THREAD_DONE_KHR = 1000268001
    OPERATION_DEFERRED_KHR = 1000268002
    OPERATION_NOT_DEFERRED_KHR = 1000268003
    PIPELINE_COMPILE_REQUIRED_EXT = 1000297000
    ERROR_OUT_OF_POOL_MEMORY_KHR = -1000069000
    ERROR_INVALID_EXTERNAL_HANDLE_KHR = -1000072003
    ERROR_FRAGMENTATION_EXT = -1000161000
    ERROR_INVALID_DEVICE_ADDRESS_EXT = -1000257000
    ERROR_INVALID_OPAQUE_CAPTURE_ADDRESS_KHR = -1000257000
    ERROR_PIPELINE_COMPILE_REQUIRED_EXT = 1000297000
    RESULT_MAX_ENUM = 2147483647
end
const KHR_RAY_TRACING_EXTENSION_NAME = "VK_KHR_ray_tracing"
const KHR_RAY_TRACING_SPEC_VERSION = 8
const KHR_ray_tracing = 1
const KHR_PIPELINE_LIBRARY_EXTENSION_NAME = "VK_KHR_pipeline_library"
const KHR_PIPELINE_LIBRARY_SPEC_VERSION = 1
const KHR_pipeline_library = 1
const KHR_DEFERRED_HOST_OPERATIONS_EXTENSION_NAME = "VK_KHR_deferred_host_operations"
const KHR_DEFERRED_HOST_OPERATIONS_SPEC_VERSION = 3
const KHR_deferred_host_operations = 1
const VULKAN_BETA_H_ = 1
const PFN_vkGetPrivateDataEXT = Ptr{Cvoid}
const PFN_vkSetPrivateDataEXT = Ptr{Cvoid}
const PFN_vkDestroyPrivateDataSlotEXT = Ptr{Cvoid}
const PFN_vkCreatePrivateDataSlotEXT = Ptr{Cvoid}
struct PrivateDataSlotEXT
    handle::VkPrivateDataSlotEXT
    info::PrivateDataSlotCreateInfoEXT
end

const PrivateDataSlotEXT_T = Cvoid
const PFN_vkDestroyIndirectCommandsLayoutNV = Ptr{Cvoid}
const PFN_vkCreateIndirectCommandsLayoutNV = Ptr{Cvoid}
const PFN_vkCmdBindPipelineShaderGroupNV = Ptr{Cvoid}
const PFN_vkCmdExecuteGeneratedCommandsNV = Ptr{Cvoid}
const PFN_vkCmdPreprocessGeneratedCommandsNV = Ptr{Cvoid}
const PFN_vkGetGeneratedCommandsMemoryRequirementsNV = Ptr{Cvoid}
const IndirectCommandsLayoutNV_T = Cvoid
const PFN_vkCmdSetStencilOpEXT = Ptr{Cvoid}
const PFN_vkCmdSetStencilTestEnableEXT = Ptr{Cvoid}
const PFN_vkCmdSetDepthBoundsTestEnableEXT = Ptr{Cvoid}
const PFN_vkCmdSetDepthCompareOpEXT = Ptr{Cvoid}
const PFN_vkCmdSetDepthWriteEnableEXT = Ptr{Cvoid}
const PFN_vkCmdSetDepthTestEnableEXT = Ptr{Cvoid}
const PFN_vkCmdBindVertexBuffers2EXT = Ptr{Cvoid}
const PFN_vkCmdSetScissorWithCountEXT = Ptr{Cvoid}
const PFN_vkCmdSetViewportWithCountEXT = Ptr{Cvoid}
const PFN_vkCmdSetPrimitiveTopologyEXT = Ptr{Cvoid}
const PFN_vkCmdSetFrontFaceEXT = Ptr{Cvoid}
const PFN_vkCmdSetCullModeEXT = Ptr{Cvoid}
const PFN_vkResetQueryPoolEXT = Ptr{Cvoid}
const PhysicalDeviceHostQueryResetFeaturesEXT = PhysicalDeviceHostQueryResetFeatures
const PFN_vkCmdSetLineStippleEXT = Ptr{Cvoid}
const PFN_vkCreateHeadlessSurfaceEXT = Ptr{Cvoid}
const PFN_vkGetPhysicalDeviceSupportedFramebufferMixedSamplesCombinationsNV = Ptr{Cvoid}
const PFN_vkGetPhysicalDeviceCooperativeMatrixPropertiesNV = Ptr{Cvoid}
const PFN_vkGetPhysicalDeviceToolPropertiesEXT = Ptr{Cvoid}
const PFN_vkGetBufferDeviceAddressEXT = Ptr{Cvoid}
const PhysicalDeviceBufferAddressFeaturesEXT = PhysicalDeviceBufferDeviceAddressFeaturesEXT
const PhysicalDeviceScalarBlockLayoutFeaturesEXT = PhysicalDeviceScalarBlockLayoutFeatures
const PFN_vkSetLocalDimmingAMD = Ptr{Cvoid}
const PFN_vkGetPerformanceParameterINTEL = Ptr{Cvoid}
const PFN_vkQueueSetPerformanceConfigurationINTEL = Ptr{Cvoid}
const PFN_vkReleasePerformanceConfigurationINTEL = Ptr{Cvoid}
const PFN_vkAcquirePerformanceConfigurationINTEL = Ptr{Cvoid}
const PFN_vkCmdSetPerformanceOverrideINTEL = Ptr{Cvoid}
const PFN_vkCmdSetPerformanceStreamMarkerINTEL = Ptr{Cvoid}
const PFN_vkCmdSetPerformanceMarkerINTEL = Ptr{Cvoid}
const PFN_vkUninitializePerformanceApiINTEL = Ptr{Cvoid}
const PFN_vkInitializePerformanceApiINTEL = Ptr{Cvoid}
const QueryPoolCreateInfoINTEL = QueryPoolPerformanceQueryCreateInfoINTEL
struct PerformanceConfigurationINTEL
    handle::VkPerformanceConfigurationINTEL
end

const PerformanceConfigurationINTEL_T = Cvoid
const PFN_vkGetQueueCheckpointDataNV = Ptr{Cvoid}
const PFN_vkCmdSetCheckpointNV = Ptr{Cvoid}
const PFN_vkCmdSetExclusiveScissorNV = Ptr{Cvoid}
const PFN_vkCmdDrawMeshTasksIndirectCountNV = Ptr{Cvoid}
const PFN_vkCmdDrawMeshTasksIndirectNV = Ptr{Cvoid}
const PFN_vkCmdDrawMeshTasksNV = Ptr{Cvoid}
const PFN_vkGetCalibratedTimestampsEXT = Ptr{Cvoid}
const PFN_vkGetPhysicalDeviceCalibrateableTimeDomainsEXT = Ptr{Cvoid}
const PFN_vkCmdWriteBufferMarkerAMD = Ptr{Cvoid}
const PFN_vkGetMemoryHostPointerPropertiesEXT = Ptr{Cvoid}
const PFN_vkCompileDeferredNV = Ptr{Cvoid}
const PFN_vkCmdWriteAccelerationStructuresPropertiesNV = Ptr{Cvoid}
const PFN_vkCmdWriteAccelerationStructuresPropertiesKHR = Ptr{Cvoid}
const PFN_vkGetAccelerationStructureHandleNV = Ptr{Cvoid}
const PFN_vkGetRayTracingShaderGroupHandlesNV = Ptr{Cvoid}
const PFN_vkGetRayTracingShaderGroupHandlesKHR = Ptr{Cvoid}
const PFN_vkCreateRayTracingPipelinesNV = Ptr{Cvoid}
const PFN_vkCmdTraceRaysNV = Ptr{Cvoid}
const PFN_vkCmdCopyAccelerationStructureNV = Ptr{Cvoid}
const PFN_vkCmdBuildAccelerationStructureNV = Ptr{Cvoid}
const PFN_vkBindAccelerationStructureMemoryNV = Ptr{Cvoid}
const PFN_vkBindAccelerationStructureMemoryKHR = Ptr{Cvoid}
const PFN_vkGetAccelerationStructureMemoryRequirementsNV = Ptr{Cvoid}
const PFN_vkDestroyAccelerationStructureNV = Ptr{Cvoid}
const PFN_vkDestroyAccelerationStructureKHR = Ptr{Cvoid}
const PFN_vkCreateAccelerationStructureNV = Ptr{Cvoid}
const AccelerationStructureInstanceNV = AccelerationStructureInstanceKHR
const AabbPositionsNV = AabbPositionsKHR
const TransformMatrixNV = TransformMatrixKHR
const BuildAccelerationStructureFlagBitsNV = BuildAccelerationStructureFlagBitsKHR
const GeometryInstanceFlagBitsNV = GeometryInstanceFlagBitsKHR
const GeometryFlagBitsNV = GeometryFlagBitsKHR
const AccelerationStructureMemoryRequirementsTypeNV = AccelerationStructureMemoryRequirementsTypeKHR
const CopyAccelerationStructureModeNV = CopyAccelerationStructureModeKHR
const AccelerationStructureTypeNV = AccelerationStructureTypeKHR
const GeometryTypeNV = GeometryTypeKHR
const RayTracingShaderGroupTypeNV = RayTracingShaderGroupTypeKHR
struct AccelerationStructureKHR
    handle::VkAccelerationStructureKHR
    info::AccelerationStructureCreateInfoKHR
end

struct WriteDescriptorSetAccelerationStructureKHR
    acceleration_structures::AccelerationStructureKHR
    vk::VkWriteDescriptorSetAccelerationStructureKHR
end

const WriteDescriptorSetAccelerationStructureNV = WriteDescriptorSetAccelerationStructureKHR
const AccelerationStructureKHR_T = Cvoid
const PFN_vkCmdSetCoarseSampleOrderNV = Ptr{Cvoid}
const PFN_vkCmdSetViewportShadingRatePaletteNV = Ptr{Cvoid}
const PFN_vkCmdBindShadingRateImageNV = Ptr{Cvoid}
const DescriptorSetVariableDescriptorCountLayoutSupportEXT = DescriptorSetVariableDescriptorCountLayoutSupport
const DescriptorSetVariableDescriptorCountAllocateInfoEXT = DescriptorSetVariableDescriptorCountAllocateInfo
const PhysicalDeviceDescriptorIndexingPropertiesEXT = PhysicalDeviceDescriptorIndexingProperties
const PhysicalDeviceDescriptorIndexingFeaturesEXT = PhysicalDeviceDescriptorIndexingFeatures
const DescriptorBindingFlagBitsEXT = DescriptorBindingFlagBits
const PFN_vkGetValidationCacheDataEXT = Ptr{Cvoid}
const PFN_vkMergeValidationCachesEXT = Ptr{Cvoid}
const PFN_vkDestroyValidationCacheEXT = Ptr{Cvoid}
const PFN_vkCreateValidationCacheEXT = Ptr{Cvoid}
struct ValidationCacheEXT
    handle::VkValidationCacheEXT
    info::ValidationCacheCreateInfoEXT
end

struct ShaderModuleValidationCacheCreateInfoEXT
    validation_cache::ValidationCacheEXT
    vk::VkShaderModuleValidationCacheCreateInfoEXT
end

const ValidationCacheEXT_T = Cvoid
const PFN_vkGetImageDrmFormatModifierPropertiesEXT = Ptr{Cvoid}
const PFN_vkGetPhysicalDeviceMultisamplePropertiesEXT = Ptr{Cvoid}
const PFN_vkCmdSetSampleLocationsEXT = Ptr{Cvoid}
const PhysicalDeviceSamplerFilterMinmaxPropertiesEXT = PhysicalDeviceSamplerFilterMinmaxProperties
const SamplerReductionModeCreateInfoEXT = SamplerReductionModeCreateInfo
const SamplerReductionModeEXT = SamplerReductionMode
const PFN_vkSubmitDebugUtilsMessageEXT = Ptr{Cvoid}
const PFN_vkDestroyDebugUtilsMessengerEXT = Ptr{Cvoid}
const PFN_vkCreateDebugUtilsMessengerEXT = Ptr{Cvoid}
const PFN_vkCmdInsertDebugUtilsLabelEXT = Ptr{Cvoid}
const PFN_vkCmdEndDebugUtilsLabelEXT = Ptr{Cvoid}
const PFN_vkCmdBeginDebugUtilsLabelEXT = Ptr{Cvoid}
const PFN_vkQueueInsertDebugUtilsLabelEXT = Ptr{Cvoid}
const PFN_vkQueueEndDebugUtilsLabelEXT = Ptr{Cvoid}
const PFN_vkQueueBeginDebugUtilsLabelEXT = Ptr{Cvoid}
const PFN_vkSetDebugUtilsObjectTagEXT = Ptr{Cvoid}
const PFN_vkSetDebugUtilsObjectNameEXT = Ptr{Cvoid}
const PFN_vkDebugUtilsMessengerCallbackEXT = Ptr{Cvoid}
const DebugUtilsMessengerEXT_T = Cvoid
const PFN_vkSetHdrMetadataEXT = Ptr{Cvoid}
const PFN_vkCmdSetDiscardRectangleEXT = Ptr{Cvoid}
const PFN_vkGetPastPresentationTimingGOOGLE = Ptr{Cvoid}
const PFN_vkGetRefreshCycleDurationGOOGLE = Ptr{Cvoid}
const PFN_vkGetSwapchainCounterEXT = Ptr{Cvoid}
const PFN_vkRegisterDisplayEventEXT = Ptr{Cvoid}
const PFN_vkRegisterDeviceEventEXT = Ptr{Cvoid}
const PFN_vkDisplayPowerControlEXT = Ptr{Cvoid}
const PFN_vkGetPhysicalDeviceSurfaceCapabilities2EXT = Ptr{Cvoid}
const PFN_vkReleaseDisplayEXT = Ptr{Cvoid}
const PFN_vkCmdSetViewportWScalingNV = Ptr{Cvoid}
const PFN_vkCmdEndConditionalRenderingEXT = Ptr{Cvoid}
const PFN_vkCmdBeginConditionalRenderingEXT = Ptr{Cvoid}
const PFN_vkGetPhysicalDeviceExternalImageFormatPropertiesNV = Ptr{Cvoid}
const PFN_vkGetShaderInfoAMD = Ptr{Cvoid}
const PFN_vkCmdDrawIndexedIndirectCountAMD = Ptr{Cvoid}
const PFN_vkCmdDrawIndirectCountAMD = Ptr{Cvoid}
const PFN_vkGetImageViewAddressNVX = Ptr{Cvoid}
const PFN_vkGetImageViewHandleNVX = Ptr{Cvoid}
const PFN_vkCmdDrawIndirectByteCountEXT = Ptr{Cvoid}
const PFN_vkCmdEndQueryIndexedEXT = Ptr{Cvoid}
const PFN_vkCmdBeginQueryIndexedEXT = Ptr{Cvoid}
const PFN_vkCmdEndTransformFeedbackEXT = Ptr{Cvoid}
const PFN_vkCmdBeginTransformFeedbackEXT = Ptr{Cvoid}
const PFN_vkCmdBindTransformFeedbackBuffersEXT = Ptr{Cvoid}
const PFN_vkCmdDebugMarkerInsertEXT = Ptr{Cvoid}
const PFN_vkCmdDebugMarkerEndEXT = Ptr{Cvoid}
const PFN_vkCmdDebugMarkerBeginEXT = Ptr{Cvoid}
const PFN_vkDebugMarkerSetObjectNameEXT = Ptr{Cvoid}
const PFN_vkDebugMarkerSetObjectTagEXT = Ptr{Cvoid}
const PFN_vkDebugReportMessageEXT = Ptr{Cvoid}
const PFN_vkDestroyDebugReportCallbackEXT = Ptr{Cvoid}
const PFN_vkCreateDebugReportCallbackEXT = Ptr{Cvoid}
const PFN_vkDebugReportCallbackEXT = Ptr{Cvoid}
struct DebugReportCallbackEXT
    handle::VkDebugReportCallbackEXT
    info::DebugReportCallbackCreateInfoEXT
end

const DebugReportCallbackEXT_T = Cvoid
const PFN_vkGetPipelineExecutableInternalRepresentationsKHR = Ptr{Cvoid}
const PFN_vkGetPipelineExecutableStatisticsKHR = Ptr{Cvoid}
const PFN_vkGetPipelineExecutablePropertiesKHR = Ptr{Cvoid}
const PFN_vkGetDeviceMemoryOpaqueCaptureAddressKHR = Ptr{Cvoid}
const PFN_vkGetBufferOpaqueCaptureAddressKHR = Ptr{Cvoid}
const PFN_vkGetBufferDeviceAddressKHR = Ptr{Cvoid}
const MemoryOpaqueCaptureAddressAllocateInfoKHR = MemoryOpaqueCaptureAddressAllocateInfo
const BufferOpaqueCaptureAddressCreateInfoKHR = BufferOpaqueCaptureAddressCreateInfo
const PhysicalDeviceBufferDeviceAddressFeaturesKHR = PhysicalDeviceBufferDeviceAddressFeatures
const PhysicalDeviceUniformBufferStandardLayoutFeaturesKHR = PhysicalDeviceUniformBufferStandardLayoutFeatures
const AttachmentDescriptionStencilLayoutKHR = AttachmentDescriptionStencilLayout
const AttachmentReferenceStencilLayoutKHR = AttachmentReferenceStencilLayout
const PhysicalDeviceSeparateDepthStencilLayoutsFeaturesKHR = PhysicalDeviceSeparateDepthStencilLayoutsFeatures
const PhysicalDeviceVulkanMemoryModelFeaturesKHR = PhysicalDeviceVulkanMemoryModelFeatures
const PFN_vkSignalSemaphoreKHR = Ptr{Cvoid}
const PFN_vkWaitSemaphoresKHR = Ptr{Cvoid}
const PFN_vkGetSemaphoreCounterValueKHR = Ptr{Cvoid}
const TimelineSemaphoreSubmitInfoKHR = TimelineSemaphoreSubmitInfo
const SemaphoreTypeCreateInfoKHR = SemaphoreTypeCreateInfo
const PhysicalDeviceTimelineSemaphorePropertiesKHR = PhysicalDeviceTimelineSemaphoreProperties
const PhysicalDeviceTimelineSemaphoreFeaturesKHR = PhysicalDeviceTimelineSemaphoreFeatures
const SemaphoreWaitFlagBitsKHR = SemaphoreWaitFlagBits
const SemaphoreTypeKHR = SemaphoreType
const ResolveModeFlagBitsKHR = ResolveModeFlagBits
const PhysicalDeviceFloatControlsPropertiesKHR = PhysicalDeviceFloatControlsProperties
const ShaderFloatControlsIndependenceKHR = ShaderFloatControlsIndependence
const PhysicalDeviceDriverPropertiesKHR = PhysicalDeviceDriverProperties
const ConformanceVersionKHR = ConformanceVersion
const DriverIdKHR = DriverId
const PhysicalDeviceShaderAtomicInt64FeaturesKHR = PhysicalDeviceShaderAtomicInt64Features
const PhysicalDevice8BitStorageFeaturesKHR = PhysicalDevice8BitStorageFeatures
const PhysicalDeviceShaderSubgroupExtendedTypesFeaturesKHR = PhysicalDeviceShaderSubgroupExtendedTypesFeatures
const PFN_vkCmdDrawIndexedIndirectCountKHR = Ptr{Cvoid}
const PFN_vkCmdDrawIndirectCountKHR = Ptr{Cvoid}
const PFN_vkGetDescriptorSetLayoutSupportKHR = Ptr{Cvoid}
const DescriptorSetLayoutSupportKHR = DescriptorSetLayoutSupport
const PFN_vkBindImageMemory2KHR = Ptr{Cvoid}
const PFN_vkBindBufferMemory2KHR = Ptr{Cvoid}
const PFN_vkDestroySamplerYcbcrConversionKHR = Ptr{Cvoid}
const PFN_vkCreateSamplerYcbcrConversionKHR = Ptr{Cvoid}
const SamplerYcbcrConversionImageFormatPropertiesKHR = SamplerYcbcrConversionImageFormatProperties
const PhysicalDeviceSamplerYcbcrConversionFeaturesKHR = PhysicalDeviceSamplerYcbcrConversionFeatures
const ImagePlaneMemoryRequirementsInfoKHR = ImagePlaneMemoryRequirementsInfo
const BindImagePlaneMemoryInfoKHR = BindImagePlaneMemoryInfo
const SamplerYcbcrConversionCreateInfoKHR = SamplerYcbcrConversionCreateInfo
const ChromaLocationKHR = ChromaLocation
const SamplerYcbcrRangeKHR = SamplerYcbcrRange
const SamplerYcbcrModelConversionKHR = SamplerYcbcrModelConversion
struct SamplerYcbcrConversionKHR
    handle::VkSamplerYcbcrConversionKHR
end

const ImageFormatListCreateInfoKHR = ImageFormatListCreateInfo
const PFN_vkGetImageSparseMemoryRequirements2KHR = Ptr{Cvoid}
const PFN_vkGetBufferMemoryRequirements2KHR = Ptr{Cvoid}
const PFN_vkGetImageMemoryRequirements2KHR = Ptr{Cvoid}
const MemoryDedicatedRequirementsKHR = MemoryDedicatedRequirements
const PFN_vkGetDisplayPlaneCapabilities2KHR = Ptr{Cvoid}
const PFN_vkGetDisplayModeProperties2KHR = Ptr{Cvoid}
const PFN_vkGetPhysicalDeviceDisplayPlaneProperties2KHR = Ptr{Cvoid}
const PFN_vkGetPhysicalDeviceDisplayProperties2KHR = Ptr{Cvoid}
const PhysicalDeviceVariablePointersFeaturesKHR = PhysicalDeviceVariablePointersFeatures
const PhysicalDeviceVariablePointerFeaturesKHR = PhysicalDeviceVariablePointersFeatures
const PFN_vkGetPhysicalDeviceSurfaceFormats2KHR = Ptr{Cvoid}
const PFN_vkGetPhysicalDeviceSurfaceCapabilities2KHR = Ptr{Cvoid}
const PipelineTessellationDomainOriginStateCreateInfoKHR = PipelineTessellationDomainOriginStateCreateInfo
const PhysicalDevicePointClippingPropertiesKHR = PhysicalDevicePointClippingProperties
const TessellationDomainOriginKHR = TessellationDomainOrigin
const PointClippingBehaviorKHR = PointClippingBehavior
const PFN_vkReleaseProfilingLockKHR = Ptr{Cvoid}
const PFN_vkAcquireProfilingLockKHR = Ptr{Cvoid}
const PFN_vkGetPhysicalDeviceQueueFamilyPerformanceQueryPassesKHR = Ptr{Cvoid}
const PFN_vkEnumeratePhysicalDeviceQueueFamilyPerformanceQueryCountersKHR = Ptr{Cvoid}
const PFN_vkGetFenceFdKHR = Ptr{Cvoid}
const PFN_vkImportFenceFdKHR = Ptr{Cvoid}
const FenceImportFlagBitsKHR = FenceImportFlagBits
const PFN_vkGetPhysicalDeviceExternalFencePropertiesKHR = Ptr{Cvoid}
const PhysicalDeviceExternalFenceInfoKHR = PhysicalDeviceExternalFenceInfo
const ExternalFenceFeatureFlagBitsKHR = ExternalFenceFeatureFlagBits
const ExternalFenceHandleTypeFlagBitsKHR = ExternalFenceHandleTypeFlagBits
const PFN_vkGetSwapchainStatusKHR = Ptr{Cvoid}
const PFN_vkCmdEndRenderPass2KHR = Ptr{Cvoid}
const PFN_vkCmdNextSubpass2KHR = Ptr{Cvoid}
const PFN_vkCmdBeginRenderPass2KHR = Ptr{Cvoid}
const PFN_vkCreateRenderPass2KHR = Ptr{Cvoid}
const SubpassEndInfoKHR = SubpassEndInfo
const SubpassBeginInfoKHR = SubpassBeginInfo
const AttachmentDescription2KHR = AttachmentDescription2
const PhysicalDeviceImagelessFramebufferFeaturesKHR = PhysicalDeviceImagelessFramebufferFeatures
const PFN_vkUpdateDescriptorSetWithTemplateKHR = Ptr{Cvoid}
const PFN_vkDestroyDescriptorUpdateTemplateKHR = Ptr{Cvoid}
const PFN_vkCreateDescriptorUpdateTemplateKHR = Ptr{Cvoid}
const DescriptorUpdateTemplateEntryKHR = DescriptorUpdateTemplateEntry
const DescriptorUpdateTemplateTypeKHR = DescriptorUpdateTemplateType
struct DescriptorUpdateTemplateKHR
    handle::VkDescriptorUpdateTemplateKHR
end

const PhysicalDevice16BitStorageFeaturesKHR = PhysicalDevice16BitStorageFeatures
const PhysicalDeviceFloat16Int8FeaturesKHR = PhysicalDeviceShaderFloat16Int8Features
const PhysicalDeviceShaderFloat16Int8FeaturesKHR = PhysicalDeviceShaderFloat16Int8Features
const PFN_vkCmdPushDescriptorSetWithTemplateKHR = Ptr{Cvoid}
const PFN_vkCmdPushDescriptorSetKHR = Ptr{Cvoid}
const PFN_vkGetSemaphoreFdKHR = Ptr{Cvoid}
const PFN_vkImportSemaphoreFdKHR = Ptr{Cvoid}
const SemaphoreImportFlagBitsKHR = SemaphoreImportFlagBits
const PFN_vkGetPhysicalDeviceExternalSemaphorePropertiesKHR = Ptr{Cvoid}
const PhysicalDeviceExternalSemaphoreInfoKHR = PhysicalDeviceExternalSemaphoreInfo
const ExternalSemaphoreFeatureFlagBitsKHR = ExternalSemaphoreFeatureFlagBits
const ExternalSemaphoreHandleTypeFlagBitsKHR = ExternalSemaphoreHandleTypeFlagBits
const PFN_vkGetMemoryFdPropertiesKHR = Ptr{Cvoid}
const PFN_vkGetMemoryFdKHR = Ptr{Cvoid}
const PFN_vkGetPhysicalDeviceExternalBufferPropertiesKHR = Ptr{Cvoid}
const PhysicalDeviceIDPropertiesKHR = PhysicalDeviceIDProperties
const PhysicalDeviceExternalImageFormatInfoKHR = PhysicalDeviceExternalImageFormatInfo
const ExternalMemoryFeatureFlagBitsKHR = ExternalMemoryFeatureFlagBits
const ExternalMemoryHandleTypeFlagBitsKHR = ExternalMemoryHandleTypeFlagBits
const PFN_vkEnumeratePhysicalDeviceGroupsKHR = Ptr{Cvoid}
const PFN_vkTrimCommandPoolKHR = Ptr{Cvoid}
const PFN_vkCmdDispatchBaseKHR = Ptr{Cvoid}
const PFN_vkCmdSetDeviceMaskKHR = Ptr{Cvoid}
const PFN_vkGetDeviceGroupPeerMemoryFeaturesKHR = Ptr{Cvoid}
const BindImageMemoryDeviceGroupInfoKHR = BindImageMemoryDeviceGroupInfo
const BindBufferMemoryDeviceGroupInfoKHR = BindBufferMemoryDeviceGroupInfo
const DeviceGroupBindSparseInfoKHR = DeviceGroupBindSparseInfo
const DeviceGroupSubmitInfoKHR = DeviceGroupSubmitInfo
const DeviceGroupCommandBufferBeginInfoKHR = DeviceGroupCommandBufferBeginInfo
const DeviceGroupRenderPassBeginInfoKHR = DeviceGroupRenderPassBeginInfo
const MemoryAllocateFlagsInfoKHR = MemoryAllocateFlagsInfo
const MemoryAllocateFlagBitsKHR = MemoryAllocateFlagBits
const PeerMemoryFeatureFlagBitsKHR = PeerMemoryFeatureFlagBits
const PFN_vkGetPhysicalDeviceSparseImageFormatProperties2KHR = Ptr{Cvoid}
const PFN_vkGetPhysicalDeviceMemoryProperties2KHR = Ptr{Cvoid}
const PFN_vkGetPhysicalDeviceQueueFamilyProperties2KHR = Ptr{Cvoid}
const PFN_vkGetPhysicalDeviceImageFormatProperties2KHR = Ptr{Cvoid}
const PFN_vkGetPhysicalDeviceFormatProperties2KHR = Ptr{Cvoid}
const PFN_vkGetPhysicalDeviceProperties2KHR = Ptr{Cvoid}
const PFN_vkGetPhysicalDeviceFeatures2KHR = Ptr{Cvoid}
const PhysicalDeviceFeatures2KHR = PhysicalDeviceFeatures2
const PhysicalDeviceMultiviewPropertiesKHR = PhysicalDeviceMultiviewProperties
const PhysicalDeviceMultiviewFeaturesKHR = PhysicalDeviceMultiviewFeatures
const RenderPassMultiviewCreateInfoKHR = RenderPassMultiviewCreateInfo
const PFN_vkCreateSharedSwapchainsKHR = Ptr{Cvoid}
const PFN_vkCreateDisplayPlaneSurfaceKHR = Ptr{Cvoid}
const PFN_vkGetDisplayPlaneCapabilitiesKHR = Ptr{Cvoid}
const PFN_vkCreateDisplayModeKHR = Ptr{Cvoid}
const PFN_vkGetDisplayModePropertiesKHR = Ptr{Cvoid}
const PFN_vkGetDisplayPlaneSupportedDisplaysKHR = Ptr{Cvoid}
const PFN_vkGetPhysicalDeviceDisplayPlanePropertiesKHR = Ptr{Cvoid}
const PFN_vkGetPhysicalDeviceDisplayPropertiesKHR = Ptr{Cvoid}
struct DisplayModeKHR
    handle::VkDisplayModeKHR
    info::DisplayModeCreateInfoKHR
end

struct DisplayModePropertiesKHR
    display_mode::DisplayModeKHR
    parameters::DisplayModeParametersKHR
end

struct DisplayModeProperties2KHR
    display_mode_properties::DisplayModePropertiesKHR
end

struct DisplayPlaneInfo2KHR
    mode::DisplayModeKHR
    plane_index::UInt32
    vk::VkDisplayPlaneInfo2KHR
end

struct DisplaySurfaceCreateInfoKHR
    display_mode::DisplayModeKHR
    plane_index::UInt32
    plane_stack_index::UInt32
    transform::SurfaceTransformFlagBitsKHR
    global_alpha::Float32
    alpha_mode::DisplayPlaneAlphaFlagBitsKHR
    image_extent::Extent2D
    vk::VkDisplaySurfaceCreateInfoKHR
end

const DisplayModeKHR_T = Cvoid
struct DisplayKHR
    handle::VkDisplayKHR
end

struct DisplayPlanePropertiesKHR
    current_display::DisplayKHR
    current_stack_index::UInt32
end

struct DisplayPlaneProperties2KHR
    display_plane_properties::DisplayPlanePropertiesKHR
end

const DisplayKHR_T = Cvoid
const PFN_vkAcquireNextImage2KHR = Ptr{Cvoid}
const PFN_vkGetPhysicalDevicePresentRectanglesKHR = Ptr{Cvoid}
const PFN_vkGetDeviceGroupSurfacePresentModesKHR = Ptr{Cvoid}
const PFN_vkGetDeviceGroupPresentCapabilitiesKHR = Ptr{Cvoid}
const PFN_vkQueuePresentKHR = Ptr{Cvoid}
const PFN_vkAcquireNextImageKHR = Ptr{Cvoid}
const PFN_vkGetSwapchainImagesKHR = Ptr{Cvoid}
const PFN_vkDestroySwapchainKHR = Ptr{Cvoid}
const PFN_vkCreateSwapchainKHR = Ptr{Cvoid}
const SwapchainKHR = Ptr{VkSwapchainKHR_T}
struct BindImageMemorySwapchainInfoKHR
    swapchain::SwapchainKHR
    image_index::UInt32
    vk::VkBindImageMemorySwapchainInfoKHR
end

struct ImageSwapchainCreateInfoKHR
    swapchain::SwapchainKHR
    vk::VkImageSwapchainCreateInfoKHR
end

const SwapchainKHR_T = Cvoid
const PFN_vkGetPhysicalDeviceSurfacePresentModesKHR = Ptr{Cvoid}
const PFN_vkGetPhysicalDeviceSurfaceFormatsKHR = Ptr{Cvoid}
const PFN_vkGetPhysicalDeviceSurfaceCapabilitiesKHR = Ptr{Cvoid}
const PFN_vkGetPhysicalDeviceSurfaceSupportKHR = Ptr{Cvoid}
const PFN_vkDestroySurfaceKHR = Ptr{Cvoid}
struct SurfaceKHR
    handle::VkSurfaceKHR
    info::HeadlessSurfaceCreateInfoEXT
end

struct PhysicalDeviceSurfaceInfo2KHR
    surface::SurfaceKHR
    vk::VkPhysicalDeviceSurfaceInfo2KHR
end

const SurfaceKHR_T = Cvoid
const PFN_vkGetDeviceMemoryOpaqueCaptureAddress = Ptr{Cvoid}
const PFN_vkGetBufferOpaqueCaptureAddress = Ptr{Cvoid}
const PFN_vkGetBufferDeviceAddress = Ptr{Cvoid}
const PFN_vkSignalSemaphore = Ptr{Cvoid}
const PFN_vkWaitSemaphores = Ptr{Cvoid}
const PFN_vkGetSemaphoreCounterValue = Ptr{Cvoid}
const PFN_vkResetQueryPool = Ptr{Cvoid}
const PFN_vkCmdEndRenderPass2 = Ptr{Cvoid}
const PFN_vkCmdNextSubpass2 = Ptr{Cvoid}
const PFN_vkCmdBeginRenderPass2 = Ptr{Cvoid}
const PFN_vkCreateRenderPass2 = Ptr{Cvoid}
const PFN_vkCmdDrawIndexedIndirectCount = Ptr{Cvoid}
const PFN_vkCmdDrawIndirectCount = Ptr{Cvoid}
const PFN_vkGetDescriptorSetLayoutSupport = Ptr{Cvoid}
const PFN_vkGetPhysicalDeviceExternalSemaphoreProperties = Ptr{Cvoid}
const PFN_vkGetPhysicalDeviceExternalFenceProperties = Ptr{Cvoid}
const PFN_vkGetPhysicalDeviceExternalBufferProperties = Ptr{Cvoid}
const PFN_vkUpdateDescriptorSetWithTemplate = Ptr{Cvoid}
const PFN_vkDestroyDescriptorUpdateTemplate = Ptr{Cvoid}
const PFN_vkCreateDescriptorUpdateTemplate = Ptr{Cvoid}
const PFN_vkDestroySamplerYcbcrConversion = Ptr{Cvoid}
const PFN_vkCreateSamplerYcbcrConversion = Ptr{Cvoid}
const PFN_vkGetDeviceQueue2 = Ptr{Cvoid}
const PFN_vkTrimCommandPool = Ptr{Cvoid}
const PFN_vkGetPhysicalDeviceSparseImageFormatProperties2 = Ptr{Cvoid}
const PFN_vkGetPhysicalDeviceMemoryProperties2 = Ptr{Cvoid}
const PFN_vkGetPhysicalDeviceQueueFamilyProperties2 = Ptr{Cvoid}
const PFN_vkGetPhysicalDeviceImageFormatProperties2 = Ptr{Cvoid}
const PFN_vkGetPhysicalDeviceFormatProperties2 = Ptr{Cvoid}
const PFN_vkGetPhysicalDeviceProperties2 = Ptr{Cvoid}
const PFN_vkGetPhysicalDeviceFeatures2 = Ptr{Cvoid}
const PFN_vkGetImageSparseMemoryRequirements2 = Ptr{Cvoid}
const PFN_vkGetBufferMemoryRequirements2 = Ptr{Cvoid}
const PFN_vkGetImageMemoryRequirements2 = Ptr{Cvoid}
const PFN_vkEnumeratePhysicalDeviceGroups = Ptr{Cvoid}
const PFN_vkCmdDispatchBase = Ptr{Cvoid}
const PFN_vkCmdSetDeviceMask = Ptr{Cvoid}
const PFN_vkGetDeviceGroupPeerMemoryFeatures = Ptr{Cvoid}
const PFN_vkBindImageMemory2 = Ptr{Cvoid}
const PFN_vkBindBufferMemory2 = Ptr{Cvoid}
const PFN_vkEnumerateInstanceVersion = Ptr{Cvoid}
const PhysicalDeviceShaderDrawParameterFeatures = PhysicalDeviceShaderDrawParametersFeatures
const PhysicalDeviceVariablePointerFeatures = PhysicalDeviceVariablePointersFeatures
const DescriptorUpdateTemplate_T = Cvoid
struct SamplerYcbcrConversion
    handle::VkSamplerYcbcrConversion
    info::SamplerYcbcrConversionCreateInfo
end

struct SamplerYcbcrConversionInfo
    conversion::SamplerYcbcrConversion
    vk::VkSamplerYcbcrConversionInfo
end

const SamplerYcbcrConversionInfoKHR = SamplerYcbcrConversionInfo
const SamplerYcbcrConversion_T = Cvoid
const PFN_vkCmdExecuteCommands = Ptr{Cvoid}
const PFN_vkCmdEndRenderPass = Ptr{Cvoid}
const PFN_vkCmdNextSubpass = Ptr{Cvoid}
const PFN_vkCmdBeginRenderPass = Ptr{Cvoid}
const PFN_vkCmdPushConstants = Ptr{Cvoid}
const PFN_vkCmdCopyQueryPoolResults = Ptr{Cvoid}
const PFN_vkCmdWriteTimestamp = Ptr{Cvoid}
const PFN_vkCmdResetQueryPool = Ptr{Cvoid}
const PFN_vkCmdEndQuery = Ptr{Cvoid}
const PFN_vkCmdBeginQuery = Ptr{Cvoid}
const PFN_vkCmdPipelineBarrier = Ptr{Cvoid}
const PFN_vkCmdWaitEvents = Ptr{Cvoid}
const PFN_vkCmdResetEvent = Ptr{Cvoid}
const PFN_vkCmdSetEvent = Ptr{Cvoid}
const PFN_vkCmdResolveImage = Ptr{Cvoid}
const PFN_vkCmdClearAttachments = Ptr{Cvoid}
const PFN_vkCmdClearDepthStencilImage = Ptr{Cvoid}
const PFN_vkCmdClearColorImage = Ptr{Cvoid}
const PFN_vkCmdFillBuffer = Ptr{Cvoid}
const PFN_vkCmdUpdateBuffer = Ptr{Cvoid}
const PFN_vkCmdCopyImageToBuffer = Ptr{Cvoid}
const PFN_vkCmdCopyBufferToImage = Ptr{Cvoid}
const PFN_vkCmdBlitImage = Ptr{Cvoid}
const PFN_vkCmdCopyImage = Ptr{Cvoid}
const PFN_vkCmdCopyBuffer = Ptr{Cvoid}
const PFN_vkCmdDispatchIndirect = Ptr{Cvoid}
const PFN_vkCmdDispatch = Ptr{Cvoid}
const PFN_vkCmdDrawIndexedIndirect = Ptr{Cvoid}
const PFN_vkCmdDrawIndirect = Ptr{Cvoid}
const PFN_vkCmdDrawIndexed = Ptr{Cvoid}
const PFN_vkCmdDraw = Ptr{Cvoid}
const PFN_vkCmdBindVertexBuffers = Ptr{Cvoid}
const PFN_vkCmdBindIndexBuffer = Ptr{Cvoid}
const PFN_vkCmdBindDescriptorSets = Ptr{Cvoid}
const PFN_vkCmdSetStencilReference = Ptr{Cvoid}
const PFN_vkCmdSetStencilWriteMask = Ptr{Cvoid}
const PFN_vkCmdSetStencilCompareMask = Ptr{Cvoid}
const PFN_vkCmdSetDepthBounds = Ptr{Cvoid}
const PFN_vkCmdSetBlendConstants = Ptr{Cvoid}
const PFN_vkCmdSetDepthBias = Ptr{Cvoid}
const PFN_vkCmdSetLineWidth = Ptr{Cvoid}
const PFN_vkCmdSetScissor = Ptr{Cvoid}
const PFN_vkCmdSetViewport = Ptr{Cvoid}
const PFN_vkCmdBindPipeline = Ptr{Cvoid}
const PFN_vkResetCommandBuffer = Ptr{Cvoid}
const PFN_vkEndCommandBuffer = Ptr{Cvoid}
const PFN_vkBeginCommandBuffer = Ptr{Cvoid}
const PFN_vkFreeCommandBuffers = Ptr{Cvoid}
const PFN_vkAllocateCommandBuffers = Ptr{Cvoid}
const PFN_vkResetCommandPool = Ptr{Cvoid}
const PFN_vkDestroyCommandPool = Ptr{Cvoid}
const PFN_vkCreateCommandPool = Ptr{Cvoid}
const PFN_vkGetRenderAreaGranularity = Ptr{Cvoid}
const PFN_vkDestroyRenderPass = Ptr{Cvoid}
const PFN_vkCreateRenderPass = Ptr{Cvoid}
const PFN_vkDestroyFramebuffer = Ptr{Cvoid}
const PFN_vkCreateFramebuffer = Ptr{Cvoid}
const PFN_vkUpdateDescriptorSets = Ptr{Cvoid}
const PFN_vkFreeDescriptorSets = Ptr{Cvoid}
const PFN_vkAllocateDescriptorSets = Ptr{Cvoid}
const PFN_vkResetDescriptorPool = Ptr{Cvoid}
const PFN_vkDestroyDescriptorPool = Ptr{Cvoid}
const PFN_vkCreateDescriptorPool = Ptr{Cvoid}
const PFN_vkDestroyDescriptorSetLayout = Ptr{Cvoid}
const PFN_vkCreateDescriptorSetLayout = Ptr{Cvoid}
const PFN_vkDestroySampler = Ptr{Cvoid}
const PFN_vkCreateSampler = Ptr{Cvoid}
const PFN_vkDestroyPipelineLayout = Ptr{Cvoid}
const PFN_vkCreatePipelineLayout = Ptr{Cvoid}
const PFN_vkDestroyPipeline = Ptr{Cvoid}
const PFN_vkCreateComputePipelines = Ptr{Cvoid}
const PFN_vkCreateGraphicsPipelines = Ptr{Cvoid}
const PFN_vkMergePipelineCaches = Ptr{Cvoid}
const PFN_vkGetPipelineCacheData = Ptr{Cvoid}
const PFN_vkDestroyPipelineCache = Ptr{Cvoid}
const PFN_vkCreatePipelineCache = Ptr{Cvoid}
const PFN_vkDestroyShaderModule = Ptr{Cvoid}
const PFN_vkCreateShaderModule = Ptr{Cvoid}
const PFN_vkDestroyImageView = Ptr{Cvoid}
const PFN_vkCreateImageView = Ptr{Cvoid}
const PFN_vkGetImageSubresourceLayout = Ptr{Cvoid}
const PFN_vkDestroyImage = Ptr{Cvoid}
const PFN_vkCreateImage = Ptr{Cvoid}
const PFN_vkDestroyBufferView = Ptr{Cvoid}
const PFN_vkCreateBufferView = Ptr{Cvoid}
const PFN_vkDestroyBuffer = Ptr{Cvoid}
const PFN_vkCreateBuffer = Ptr{Cvoid}
const PFN_vkGetQueryPoolResults = Ptr{Cvoid}
const PFN_vkDestroyQueryPool = Ptr{Cvoid}
const PFN_vkCreateQueryPool = Ptr{Cvoid}
const PFN_vkResetEvent = Ptr{Cvoid}
const PFN_vkSetEvent = Ptr{Cvoid}
const PFN_vkGetEventStatus = Ptr{Cvoid}
const PFN_vkDestroyEvent = Ptr{Cvoid}
const PFN_vkCreateEvent = Ptr{Cvoid}
const PFN_vkDestroySemaphore = Ptr{Cvoid}
const PFN_vkCreateSemaphore = Ptr{Cvoid}
const PFN_vkWaitForFences = Ptr{Cvoid}
const PFN_vkGetFenceStatus = Ptr{Cvoid}
const PFN_vkResetFences = Ptr{Cvoid}
const PFN_vkDestroyFence = Ptr{Cvoid}
const PFN_vkCreateFence = Ptr{Cvoid}
const PFN_vkQueueBindSparse = Ptr{Cvoid}
const PFN_vkGetPhysicalDeviceSparseImageFormatProperties = Ptr{Cvoid}
const PFN_vkGetImageSparseMemoryRequirements = Ptr{Cvoid}
const PFN_vkGetImageMemoryRequirements = Ptr{Cvoid}
const PFN_vkGetBufferMemoryRequirements = Ptr{Cvoid}
const PFN_vkBindImageMemory = Ptr{Cvoid}
const PFN_vkBindBufferMemory = Ptr{Cvoid}
const PFN_vkGetDeviceMemoryCommitment = Ptr{Cvoid}
const PFN_vkInvalidateMappedMemoryRanges = Ptr{Cvoid}
const PFN_vkFlushMappedMemoryRanges = Ptr{Cvoid}
const PFN_vkUnmapMemory = Ptr{Cvoid}
const PFN_vkMapMemory = Ptr{Cvoid}
const PFN_vkFreeMemory = Ptr{Cvoid}
const PFN_vkAllocateMemory = Ptr{Cvoid}
const PFN_vkDeviceWaitIdle = Ptr{Cvoid}
const PFN_vkQueueWaitIdle = Ptr{Cvoid}
const PFN_vkQueueSubmit = Ptr{Cvoid}
const PFN_vkGetDeviceQueue = Ptr{Cvoid}
const PFN_vkEnumerateDeviceLayerProperties = Ptr{Cvoid}
const PFN_vkEnumerateInstanceLayerProperties = Ptr{Cvoid}
const PFN_vkEnumerateDeviceExtensionProperties = Ptr{Cvoid}
const PFN_vkEnumerateInstanceExtensionProperties = Ptr{Cvoid}
const PFN_vkDestroyDevice = Ptr{Cvoid}
const PFN_vkCreateDevice = Ptr{Cvoid}
const PFN_vkGetDeviceProcAddr = Ptr{Cvoid}
const PFN_vkGetInstanceProcAddr = Ptr{Cvoid}
const PFN_vkGetPhysicalDeviceMemoryProperties = Ptr{Cvoid}
const PFN_vkGetPhysicalDeviceQueueFamilyProperties = Ptr{Cvoid}
const PFN_vkGetPhysicalDeviceProperties = Ptr{Cvoid}
const PFN_vkGetPhysicalDeviceImageFormatProperties = Ptr{Cvoid}
const PFN_vkGetPhysicalDeviceFormatProperties = Ptr{Cvoid}
const PFN_vkGetPhysicalDeviceFeatures = Ptr{Cvoid}
const PFN_vkEnumeratePhysicalDevices = Ptr{Cvoid}
const PFN_vkDestroyInstance = Ptr{Cvoid}
const PFN_vkCreateInstance = Ptr{Cvoid}
const PFN_vkVoidFunction = Ptr{Cvoid}
const PFN_vkReallocationFunction = Ptr{Cvoid}
const PFN_vkInternalFreeNotification = Ptr{Cvoid}
const PFN_vkInternalAllocationNotification = Ptr{Cvoid}
const PFN_vkFreeFunction = Ptr{Cvoid}
const PFN_vkAllocationFunction = Ptr{Cvoid}
struct CommandPool
    handle::VkCommandPool
    info::CommandPoolCreateInfo
end

struct CommandBufferAllocateInfo
    command_pool::CommandPool
    level::CommandBufferLevel
    command_buffer_count::UInt32
    vk::VkCommandBufferAllocateInfo
end

const CommandPool_T = Cvoid
const Framebuffer_T = Cvoid
struct DescriptorPool
    handle::VkDescriptorPool
    info::DescriptorPoolCreateInfo
end

const DescriptorPool_T = Cvoid
struct DescriptorSet
    handle::VkDescriptorSet
end

struct CopyDescriptorSet
    src_set::DescriptorSet
    src_binding::UInt32
    src_array_element::UInt32
    dst_set::DescriptorSet
    dst_binding::UInt32
    dst_array_element::UInt32
    descriptor_count::UInt32
    vk::VkCopyDescriptorSet
end

const DescriptorSet_T = Cvoid
struct Sampler
    handle::VkSampler
    info::SamplerCreateInfo
end

const Sampler_T = Cvoid
const DescriptorSetLayout_T = Cvoid
const RenderPass_T = Cvoid
struct Pipeline
    handle::VkPipeline
    info::RayTracingPipelineCreateInfoKHR
end

struct PipelineExecutableInfoKHR
    pipeline::Pipeline
    executable_index::UInt32
    vk::VkPipelineExecutableInfoKHR
end

struct PipelineInfoKHR
    pipeline::Pipeline
    vk::VkPipelineInfoKHR
end

const Pipeline_T = Cvoid
const PipelineLayout_T = Cvoid
struct PipelineCache
    handle::VkPipelineCache
    info::PipelineCacheCreateInfo
end

const PipelineCache_T = Cvoid
struct ShaderModule
    handle::VkShaderModule
    info::ShaderModuleCreateInfo
end

struct PipelineShaderStageCreateInfo
    stage::ShaderStageFlagBits
    _module::ShaderModule
    name::String
    specialization_info::SpecializationInfo
    vk::VkPipelineShaderStageCreateInfo
end

struct GraphicsShaderGroupCreateInfoNV
    stages::PipelineShaderStageCreateInfo
    vertex_input_state::PipelineVertexInputStateCreateInfo
    tessellation_state::PipelineTessellationStateCreateInfo
    vk::VkGraphicsShaderGroupCreateInfoNV
end

struct GraphicsPipelineShaderGroupsCreateInfoNV
    groups::GraphicsShaderGroupCreateInfoNV
    pipelines::Pipeline
    vk::VkGraphicsPipelineShaderGroupsCreateInfoNV
end

const ShaderModule_T = Cvoid
const ImageView_T = Cvoid
const BufferView_T = Cvoid
const QueryPool_T = Cvoid
struct Event
    handle::VkEvent
    info::EventCreateInfo
end

const Event_T = Cvoid
struct DeviceMemory
    handle::VkDeviceMemory
end

struct MemoryGetFdInfoKHR
    memory::DeviceMemory
    handle_type::ExternalMemoryHandleTypeFlagBits
    vk::VkMemoryGetFdInfoKHR
end

struct DeviceMemoryOpaqueCaptureAddressInfo
    memory::DeviceMemory
    vk::VkDeviceMemoryOpaqueCaptureAddressInfo
end

const DeviceMemoryOpaqueCaptureAddressInfoKHR = DeviceMemoryOpaqueCaptureAddressInfo
const DeviceMemory_T = Cvoid
struct Fence
    handle::VkFence
    info::FenceCreateInfo
end

struct FenceGetFdInfoKHR
    fence::Fence
    handle_type::ExternalFenceHandleTypeFlagBits
    vk::VkFenceGetFdInfoKHR
end

struct ImportFenceFdInfoKHR
    fence::Fence
    handle_type::ExternalFenceHandleTypeFlagBits
    fd::Int32
    vk::VkImportFenceFdInfoKHR
end

const Fence_T = Cvoid
struct CommandBuffer
    handle::VkCommandBuffer
end

const CommandBuffer_T = Cvoid
struct Semaphore
    handle::VkSemaphore
    info::SemaphoreCreateInfo
end

struct SemaphoreGetFdInfoKHR
    semaphore::Semaphore
    handle_type::ExternalSemaphoreHandleTypeFlagBits
    vk::VkSemaphoreGetFdInfoKHR
end

struct ImportSemaphoreFdInfoKHR
    semaphore::Semaphore
    handle_type::ExternalSemaphoreHandleTypeFlagBits
    fd::Int32
    vk::VkImportSemaphoreFdInfoKHR
end

struct AcquireNextImageInfoKHR
    swapchain::SwapchainKHR
    timeout::UInt64
    semaphore::Semaphore
    fence::Fence
    device_mask::UInt32
    vk::VkAcquireNextImageInfoKHR
end

struct PresentInfoKHR
    wait_semaphores::Semaphore
    swapchains::SwapchainKHR
    image_indices::Ptr{UInt32}
    results::Result
    vk::VkPresentInfoKHR
end

struct SemaphoreSignalInfo
    semaphore::Semaphore
    value::UInt64
    vk::VkSemaphoreSignalInfo
end

const SemaphoreSignalInfoKHR = SemaphoreSignalInfo
struct SemaphoreWaitInfo
    semaphores::Semaphore
    values::Ptr{UInt64}
    vk::VkSemaphoreWaitInfo
end

const SemaphoreWaitInfoKHR = SemaphoreWaitInfo
const Semaphore_T = Cvoid
struct Queue
    handle::VkQueue
end

const Queue_T = Cvoid
struct Device
    handle::VkDevice
    info::DeviceCreateInfo
end

const Device_T = Cvoid
struct PhysicalDevice
    handle::VkPhysicalDevice
end

struct PhysicalDeviceGroupProperties
    physical_device_count::UInt32
    physical_devices::NTuple{32,PhysicalDevice}
    subset_allocation::Bool
end

const PhysicalDeviceGroupPropertiesKHR = PhysicalDeviceGroupProperties
struct DeviceGroupDeviceCreateInfo
    physical_devices::PhysicalDevice
    vk::VkDeviceGroupDeviceCreateInfo
end

const DeviceGroupDeviceCreateInfoKHR = DeviceGroupDeviceCreateInfo
const PhysicalDevice_T = Cvoid
struct Instance
    handle::VkInstance
    info::InstanceCreateInfo
end

const Instance_T = Cvoid
const Image_T = Cvoid
const Buffer_T = Cvoid
const SampleMask = UInt32
struct PipelineMultisampleStateCreateInfo
    sample_shading_enable::Bool
    min_sample_shading::Float32
    sample_mask::SampleMask
    alpha_to_coverage_enable::Bool
    alpha_to_one_enable::Bool
    vk::VkPipelineMultisampleStateCreateInfo
end

const Flags = UInt32
const DeviceDiagnosticsConfigFlagsNV = Flags
const PrivateDataSlotCreateFlagsEXT = Flags
const IndirectCommandsLayoutUsageFlagsNV = Flags
const IndirectStateFlagsNV = Flags
const HeadlessSurfaceCreateFlagsEXT = Flags
const PipelineCoverageReductionStateCreateFlagsNV = Flags
const ToolPurposeFlagsEXT = Flags
struct PhysicalDeviceToolPropertiesEXT
    name::String
    version::String
    purposes::ToolPurposeFlagsEXT
    description::String
    layer::String
end

const ShaderCorePropertiesFlagsAMD = Flags
struct PhysicalDeviceShaderCoreProperties2AMD
    shader_core_features::ShaderCorePropertiesFlagsAMD
    active_compute_unit_count::UInt32
end

const PipelineCreationFeedbackFlagsEXT = Flags
const PipelineCompilerControlFlagsAMD = Flags
struct PipelineCompilerControlCreateInfoAMD
    compiler_control_flags::PipelineCompilerControlFlagsAMD
    vk::VkPipelineCompilerControlCreateInfoAMD
end

const BuildAccelerationStructureFlagsKHR = Flags
const BuildAccelerationStructureFlagsNV = BuildAccelerationStructureFlagsKHR
const GeometryInstanceFlagsKHR = Flags
const GeometryInstanceFlagsNV = GeometryInstanceFlagsKHR
const GeometryFlagsKHR = Flags
const GeometryFlagsNV = GeometryFlagsKHR
const ValidationCacheCreateFlagsEXT = Flags
const PipelineCoverageModulationStateCreateFlagsNV = Flags
const PipelineCoverageToColorStateCreateFlagsNV = Flags
const DebugUtilsMessengerCreateFlagsEXT = Flags
const DebugUtilsMessageSeverityFlagsEXT = Flags
const DebugUtilsMessageTypeFlagsEXT = Flags
struct DebugUtilsMessengerCreateInfoEXT
    message_severity::DebugUtilsMessageSeverityFlagsEXT
    message_type::DebugUtilsMessageTypeFlagsEXT
    user_callback::Function
    user_data::Ptr{Cvoid}
    vk::VkDebugUtilsMessengerCreateInfoEXT
end

struct DebugUtilsMessengerEXT
    handle::VkDebugUtilsMessengerEXT
    info::DebugUtilsMessengerCreateInfoEXT
end

const DebugUtilsMessengerCallbackDataFlagsEXT = Flags
const PipelineRasterizationDepthClipStateCreateFlagsEXT = Flags
const PipelineRasterizationConservativeStateCreateFlagsEXT = Flags
const PipelineDiscardRectangleStateCreateFlagsEXT = Flags
const PipelineViewportSwizzleStateCreateFlagsNV = Flags
const SurfaceCounterFlagsEXT = Flags
struct SwapchainCounterCreateInfoEXT
    surface_counters::SurfaceCounterFlagsEXT
    vk::VkSwapchainCounterCreateInfoEXT
end

const ConditionalRenderingFlagsEXT = Flags
const ExternalMemoryFeatureFlagsNV = Flags
const ExternalMemoryHandleTypeFlagsNV = Flags
struct ExportMemoryAllocateInfoNV
    handle_types::ExternalMemoryHandleTypeFlagsNV
    vk::VkExportMemoryAllocateInfoNV
end

struct ExternalMemoryImageCreateInfoNV
    handle_types::ExternalMemoryHandleTypeFlagsNV
    vk::VkExternalMemoryImageCreateInfoNV
end

const PipelineRasterizationStateStreamCreateFlagsEXT = Flags
const DebugReportFlagsEXT = Flags
const AcquireProfilingLockFlagsKHR = Flags
const PerformanceCounterDescriptionFlagsKHR = Flags
const DisplaySurfaceCreateFlagsKHR = Flags
const DisplayPlaneAlphaFlagsKHR = Flags
struct DisplayPlaneCapabilitiesKHR
    supported_alpha::DisplayPlaneAlphaFlagsKHR
    min_src_position::Offset2D
    max_src_position::Offset2D
    min_src_extent::Extent2D
    max_src_extent::Extent2D
    min_dst_position::Offset2D
    max_dst_position::Offset2D
    min_dst_extent::Extent2D
    max_dst_extent::Extent2D
    vk::VkDisplayPlaneCapabilitiesKHR
end

struct DisplayPlaneCapabilities2KHR
    capabilities::DisplayPlaneCapabilitiesKHR
    vk::VkDisplayPlaneCapabilities2KHR
end

const DisplayModeCreateFlagsKHR = Flags
const DeviceGroupPresentModeFlagsKHR = Flags
struct DeviceGroupSwapchainCreateInfoKHR
    modes::DeviceGroupPresentModeFlagsKHR
    vk::VkDeviceGroupSwapchainCreateInfoKHR
end

struct DeviceGroupPresentCapabilitiesKHR
    present_mask::NTuple{32,UInt32}
    modes::DeviceGroupPresentModeFlagsKHR
    vk::VkDeviceGroupPresentCapabilitiesKHR
end

const SwapchainCreateFlagsKHR = Flags
const SurfaceTransformFlagsKHR = Flags
struct DisplayPropertiesKHR
    display::DisplayKHR
    display_name::String
    physical_dimensions::Extent2D
    physical_resolution::Extent2D
    supported_transforms::SurfaceTransformFlagsKHR
    plane_reorder_possible::Bool
    persistent_content::Bool
end

struct DisplayProperties2KHR
    display_properties::DisplayPropertiesKHR
end

const CompositeAlphaFlagsKHR = Flags
const SemaphoreWaitFlags = Flags
const SemaphoreWaitFlagsKHR = SemaphoreWaitFlags
const DescriptorBindingFlags = Flags
struct DescriptorSetLayoutBindingFlagsCreateInfo
    binding_flags::DescriptorBindingFlags
    vk::VkDescriptorSetLayoutBindingFlagsCreateInfo
end

const DescriptorSetLayoutBindingFlagsCreateInfoEXT = DescriptorSetLayoutBindingFlagsCreateInfo
const DescriptorBindingFlagsEXT = DescriptorBindingFlags
const ResolveModeFlags = Flags
struct PhysicalDeviceDepthStencilResolveProperties
    supported_depth_resolve_modes::ResolveModeFlags
    supported_stencil_resolve_modes::ResolveModeFlags
    independent_resolve_none::Bool
    independent_resolve::Bool
end

const PhysicalDeviceDepthStencilResolvePropertiesKHR = PhysicalDeviceDepthStencilResolveProperties
const ResolveModeFlagsKHR = ResolveModeFlags
const ExternalSemaphoreFeatureFlags = Flags
const ExternalSemaphoreFeatureFlagsKHR = ExternalSemaphoreFeatureFlags
const ExternalSemaphoreHandleTypeFlags = Flags
struct ExternalSemaphoreProperties
    export_from_imported_handle_types::ExternalSemaphoreHandleTypeFlags
    compatible_handle_types::ExternalSemaphoreHandleTypeFlags
    external_semaphore_features::ExternalSemaphoreFeatureFlags
end

const ExternalSemaphorePropertiesKHR = ExternalSemaphoreProperties
struct ExportSemaphoreCreateInfo
    handle_types::ExternalSemaphoreHandleTypeFlags
    vk::VkExportSemaphoreCreateInfo
end

const ExportSemaphoreCreateInfoKHR = ExportSemaphoreCreateInfo
const ExternalSemaphoreHandleTypeFlagsKHR = ExternalSemaphoreHandleTypeFlags
const SemaphoreImportFlags = Flags
const SemaphoreImportFlagsKHR = SemaphoreImportFlags
const FenceImportFlags = Flags
const FenceImportFlagsKHR = FenceImportFlags
const ExternalFenceFeatureFlags = Flags
const ExternalFenceFeatureFlagsKHR = ExternalFenceFeatureFlags
const ExternalFenceHandleTypeFlags = Flags
struct ExternalFenceProperties
    export_from_imported_handle_types::ExternalFenceHandleTypeFlags
    compatible_handle_types::ExternalFenceHandleTypeFlags
    external_fence_features::ExternalFenceFeatureFlags
end

const ExternalFencePropertiesKHR = ExternalFenceProperties
struct ExportFenceCreateInfo
    handle_types::ExternalFenceHandleTypeFlags
    vk::VkExportFenceCreateInfo
end

const ExportFenceCreateInfoKHR = ExportFenceCreateInfo
const ExternalFenceHandleTypeFlagsKHR = ExternalFenceHandleTypeFlags
const ExternalMemoryFeatureFlags = Flags
const ExternalMemoryFeatureFlagsKHR = ExternalMemoryFeatureFlags
const ExternalMemoryHandleTypeFlags = Flags
struct ExternalMemoryProperties
    external_memory_features::ExternalMemoryFeatureFlags
    export_from_imported_handle_types::ExternalMemoryHandleTypeFlags
    compatible_handle_types::ExternalMemoryHandleTypeFlags
end

struct ExternalBufferProperties
    external_memory_properties::ExternalMemoryProperties
end

const ExternalBufferPropertiesKHR = ExternalBufferProperties
struct ExternalImageFormatProperties
    external_memory_properties::ExternalMemoryProperties
end

const ExternalImageFormatPropertiesKHR = ExternalImageFormatProperties
const ExternalMemoryPropertiesKHR = ExternalMemoryProperties
struct ExportMemoryAllocateInfo
    handle_types::ExternalMemoryHandleTypeFlags
    vk::VkExportMemoryAllocateInfo
end

const ExportMemoryAllocateInfoKHR = ExportMemoryAllocateInfo
struct ExternalMemoryBufferCreateInfo
    handle_types::ExternalMemoryHandleTypeFlags
    vk::VkExternalMemoryBufferCreateInfo
end

const ExternalMemoryBufferCreateInfoKHR = ExternalMemoryBufferCreateInfo
struct ExternalMemoryImageCreateInfo
    handle_types::ExternalMemoryHandleTypeFlags
    vk::VkExternalMemoryImageCreateInfo
end

const ExternalMemoryImageCreateInfoKHR = ExternalMemoryImageCreateInfo
const ExternalMemoryHandleTypeFlagsKHR = ExternalMemoryHandleTypeFlags
const DescriptorUpdateTemplateCreateFlags = Flags
const DescriptorUpdateTemplateCreateFlagsKHR = DescriptorUpdateTemplateCreateFlags
const CommandPoolTrimFlags = Flags
const CommandPoolTrimFlagsKHR = CommandPoolTrimFlags
const MemoryAllocateFlags = Flags
const MemoryAllocateFlagsKHR = MemoryAllocateFlags
const PeerMemoryFeatureFlags = Flags
const PeerMemoryFeatureFlagsKHR = PeerMemoryFeatureFlags
const SubgroupFeatureFlags = Flags
const StencilFaceFlags = Flags
const CommandBufferResetFlags = Flags
const QueryControlFlags = Flags
const CommandBufferUsageFlags = Flags
const CommandPoolResetFlags = Flags
const CommandPoolCreateFlags = Flags
const SubpassDescriptionFlags = Flags
const RenderPassCreateFlags = Flags
const FramebufferCreateFlags = Flags
const DependencyFlags = Flags
const AttachmentDescriptionFlags = Flags
const DescriptorSetLayoutCreateFlags = Flags
const DescriptorPoolResetFlags = Flags
const DescriptorPoolCreateFlags = Flags
const SamplerCreateFlags = Flags
const ShaderStageFlags = Flags
struct PhysicalDeviceCooperativeMatrixPropertiesNV
    cooperative_matrix_supported_stages::ShaderStageFlags
end

struct PhysicalDeviceSubgroupSizeControlPropertiesEXT
    min_subgroup_size::UInt32
    max_subgroup_size::UInt32
    max_compute_workgroup_subgroups::UInt32
    required_subgroup_size_stages::ShaderStageFlags
end

struct PipelineExecutablePropertiesKHR
    stages::ShaderStageFlags
    name::String
    description::String
    subgroup_size::UInt32
end

struct PhysicalDeviceSubgroupProperties
    subgroup_size::UInt32
    supported_stages::ShaderStageFlags
    supported_operations::SubgroupFeatureFlags
    quad_operations_in_all_stages::Bool
end

struct ShaderStatisticsInfoAMD
    shader_stage_mask::ShaderStageFlags
    resource_usage::ShaderResourceUsageAMD
    num_physical_vgprs::UInt32
    num_physical_sgprs::UInt32
    num_available_vgprs::UInt32
    num_available_sgprs::UInt32
    compute_work_group_size::NTuple{3,UInt32}
    vk::VkShaderStatisticsInfoAMD
end

struct DescriptorSetLayoutBinding
    binding::UInt32
    descriptor_type::DescriptorType
    stage_flags::ShaderStageFlags
    immutable_samplers::Sampler
    vk::VkDescriptorSetLayoutBinding
end

struct DescriptorSetLayoutCreateInfo
    bindings::DescriptorSetLayoutBinding
    vk::VkDescriptorSetLayoutCreateInfo
end

struct DescriptorSetLayout
    handle::VkDescriptorSetLayout
    info::DescriptorSetLayoutCreateInfo
end

struct DescriptorSetAllocateInfo
    descriptor_pool::DescriptorPool
    set_layouts::DescriptorSetLayout
    vk::VkDescriptorSetAllocateInfo
end

struct PushConstantRange
    stage_flags::ShaderStageFlags
    offset::UInt32
    size::UInt32
    vk::VkPushConstantRange
end

struct PipelineLayoutCreateInfo
    set_layouts::DescriptorSetLayout
    push_constant_ranges::PushConstantRange
    vk::VkPipelineLayoutCreateInfo
end

struct PipelineLayout
    handle::VkPipelineLayout
    info::PipelineLayoutCreateInfo
end

struct IndirectCommandsLayoutTokenNV
    token_type::IndirectCommandsTokenTypeNV
    stream::UInt32
    offset::UInt32
    vertex_binding_unit::UInt32
    vertex_dynamic_stride::Bool
    pushconstant_pipeline_layout::PipelineLayout
    pushconstant_shader_stage_flags::ShaderStageFlags
    pushconstant_offset::UInt32
    pushconstant_size::UInt32
    indirect_state_flags::IndirectStateFlagsNV
    index_types::IndexType
    index_type_values::Ptr{UInt32}
    vk::VkIndirectCommandsLayoutTokenNV
end

struct IndirectCommandsLayoutCreateInfoNV
    pipeline_bind_point::PipelineBindPoint
    tokens::IndirectCommandsLayoutTokenNV
    stream_strides::Ptr{UInt32}
    vk::VkIndirectCommandsLayoutCreateInfoNV
end

struct IndirectCommandsLayoutNV
    handle::VkIndirectCommandsLayoutNV
    info::IndirectCommandsLayoutCreateInfoNV
end

struct GeneratedCommandsMemoryRequirementsInfoNV
    pipeline_bind_point::PipelineBindPoint
    pipeline::Pipeline
    indirect_commands_layout::IndirectCommandsLayoutNV
    max_sequences_count::UInt32
    vk::VkGeneratedCommandsMemoryRequirementsInfoNV
end

struct RayTracingPipelineCreateInfoNV
    stages::PipelineShaderStageCreateInfo
    groups::RayTracingShaderGroupCreateInfoNV
    max_recursion_depth::UInt32
    layout::PipelineLayout
    base_pipeline_handle::Pipeline
    base_pipeline_index::Int32
    vk::VkRayTracingPipelineCreateInfoNV
end

struct DescriptorUpdateTemplateCreateInfo
    descriptor_update_entries::DescriptorUpdateTemplateEntry
    template_type::DescriptorUpdateTemplateType
    descriptor_set_layout::DescriptorSetLayout
    pipeline_bind_point::PipelineBindPoint
    pipeline_layout::PipelineLayout
    set::UInt32
    vk::VkDescriptorUpdateTemplateCreateInfo
end

const DescriptorUpdateTemplateCreateInfoKHR = DescriptorUpdateTemplateCreateInfo
struct DescriptorUpdateTemplate
    handle::VkDescriptorUpdateTemplate
    info::DescriptorUpdateTemplateCreateInfo
end

struct ComputePipelineCreateInfo
    stage::PipelineShaderStageCreateInfo
    layout::PipelineLayout
    base_pipeline_handle::Pipeline
    base_pipeline_index::Int32
    vk::VkComputePipelineCreateInfo
end

const PipelineLayoutCreateFlags = Flags
const PipelineDynamicStateCreateFlags = Flags
const PipelineColorBlendStateCreateFlags = Flags
const PipelineDepthStencilStateCreateFlags = Flags
const PipelineMultisampleStateCreateFlags = Flags
const PipelineRasterizationStateCreateFlags = Flags
const PipelineViewportStateCreateFlags = Flags
const PipelineTessellationStateCreateFlags = Flags
const PipelineInputAssemblyStateCreateFlags = Flags
const PipelineVertexInputStateCreateFlags = Flags
const CullModeFlags = Flags
struct PipelineRasterizationStateCreateInfo
    depth_clamp_enable::Bool
    rasterizer_discard_enable::Bool
    polygon_mode::PolygonMode
    cull_mode::CullModeFlags
    front_face::FrontFace
    depth_bias_enable::Bool
    depth_bias_constant_factor::Float32
    depth_bias_clamp::Float32
    depth_bias_slope_factor::Float32
    line_width::Float32
    vk::VkPipelineRasterizationStateCreateInfo
end

const PipelineShaderStageCreateFlags = Flags
const PipelineCreateFlags = Flags
const ColorComponentFlags = Flags
struct PipelineColorBlendAttachmentState
    blend_enable::Bool
    src_color_blend_factor::BlendFactor
    dst_color_blend_factor::BlendFactor
    color_blend_op::BlendOp
    src_alpha_blend_factor::BlendFactor
    dst_alpha_blend_factor::BlendFactor
    alpha_blend_op::BlendOp
    color_write_mask::ColorComponentFlags
    vk::VkPipelineColorBlendAttachmentState
end

struct PipelineColorBlendStateCreateInfo
    logic_op_enable::Bool
    logic_op::LogicOp
    attachments::PipelineColorBlendAttachmentState
    blend_constants::NTuple{4,Float32}
    vk::VkPipelineColorBlendStateCreateInfo
end

const PipelineCacheCreateFlags = Flags
const ShaderModuleCreateFlags = Flags
const ImageViewCreateFlags = Flags
const BufferViewCreateFlags = Flags
const BufferUsageFlags = Flags
struct PhysicalDeviceExternalBufferInfo
    usage::BufferUsageFlags
    handle_type::ExternalMemoryHandleTypeFlagBits
    vk::VkPhysicalDeviceExternalBufferInfo
end

const PhysicalDeviceExternalBufferInfoKHR = PhysicalDeviceExternalBufferInfo
const BufferCreateFlags = Flags
const QueryResultFlags = Flags
const QueryPoolCreateFlags = Flags
const QueryPipelineStatisticFlags = Flags
struct QueryPoolCreateInfo
    query_type::QueryType
    query_count::UInt32
    pipeline_statistics::QueryPipelineStatisticFlags
    vk::VkQueryPoolCreateInfo
end

struct QueryPool
    handle::VkQueryPool
    info::QueryPoolCreateInfo
end

const EventCreateFlags = Flags
const SemaphoreCreateFlags = Flags
const FenceCreateFlags = Flags
const SparseImageFormatFlags = Flags
const SparseMemoryBindFlags = Flags
const MemoryMapFlags = Flags
const PipelineStageFlags = Flags
struct QueueFamilyCheckpointPropertiesNV
    checkpoint_execution_stage_mask::PipelineStageFlags
end

struct SubmitInfo
    wait_semaphores::Semaphore
    wait_dst_stage_mask::PipelineStageFlags
    command_buffers::CommandBuffer
    signal_semaphores::Semaphore
    vk::VkSubmitInfo
end

const DeviceQueueCreateFlags = Flags
const DeviceCreateFlags = Flags
const QueueFlags = Flags
struct QueueFamilyProperties
    queue_flags::QueueFlags
    queue_count::UInt32
    timestamp_valid_bits::UInt32
    min_image_transfer_granularity::Extent3D
end

struct QueueFamilyProperties2
    queue_family_properties::QueueFamilyProperties
end

const QueueFamilyProperties2KHR = QueueFamilyProperties2
const MemoryPropertyFlags = Flags
struct MemoryType
    property_flags::MemoryPropertyFlags
    heap_index::UInt32
    vk::VkMemoryType
end

const MemoryHeapFlags = Flags
const InstanceCreateFlags = Flags
const ImageUsageFlags = Flags
struct SurfaceCapabilities2EXT
    min_image_count::UInt32
    max_image_count::UInt32
    current_extent::Extent2D
    min_image_extent::Extent2D
    max_image_extent::Extent2D
    max_image_array_layers::UInt32
    supported_transforms::SurfaceTransformFlagsKHR
    current_transform::SurfaceTransformFlagBitsKHR
    supported_composite_alpha::CompositeAlphaFlagsKHR
    supported_usage_flags::ImageUsageFlags
    supported_surface_counters::SurfaceCounterFlagsEXT
    vk::VkSurfaceCapabilities2EXT
end

struct SharedPresentSurfaceCapabilitiesKHR
    shared_present_supported_usage_flags::ImageUsageFlags
    vk::VkSharedPresentSurfaceCapabilitiesKHR
end

struct SurfaceCapabilitiesKHR
    min_image_count::UInt32
    max_image_count::UInt32
    current_extent::Extent2D
    min_image_extent::Extent2D
    max_image_extent::Extent2D
    max_image_array_layers::UInt32
    supported_transforms::SurfaceTransformFlagsKHR
    current_transform::SurfaceTransformFlagBitsKHR
    supported_composite_alpha::CompositeAlphaFlagsKHR
    supported_usage_flags::ImageUsageFlags
    vk::VkSurfaceCapabilitiesKHR
end

struct SurfaceCapabilities2KHR
    surface_capabilities::SurfaceCapabilitiesKHR
    vk::VkSurfaceCapabilities2KHR
end

struct FramebufferAttachmentImageInfo
    usage::ImageUsageFlags
    width::UInt32
    height::UInt32
    layer_count::UInt32
    view_formats::Format
    vk::VkFramebufferAttachmentImageInfo
end

struct FramebufferAttachmentsCreateInfo
    attachment_image_infos::FramebufferAttachmentImageInfo
    vk::VkFramebufferAttachmentsCreateInfo
end

const FramebufferAttachmentsCreateInfoKHR = FramebufferAttachmentsCreateInfo
const FramebufferAttachmentImageInfoKHR = FramebufferAttachmentImageInfo
struct ImageStencilUsageCreateInfo
    stencil_usage::ImageUsageFlags
    vk::VkImageStencilUsageCreateInfo
end

const ImageStencilUsageCreateInfoEXT = ImageStencilUsageCreateInfo
struct ImageViewUsageCreateInfo
    usage::ImageUsageFlags
    vk::VkImageViewUsageCreateInfo
end

const ImageViewUsageCreateInfoKHR = ImageViewUsageCreateInfo
struct PhysicalDeviceSparseImageFormatInfo2
    format::Format
    type::ImageType
    samples::SampleCountFlagBits
    usage::ImageUsageFlags
    tiling::ImageTiling
    vk::VkPhysicalDeviceSparseImageFormatInfo2
end

const PhysicalDeviceSparseImageFormatInfo2KHR = PhysicalDeviceSparseImageFormatInfo2
struct PhysicalDeviceImageFormatInfo2
    format::Format
    type::ImageType
    tiling::ImageTiling
    usage::ImageUsageFlags
    vk::VkPhysicalDeviceImageFormatInfo2
end

const PhysicalDeviceImageFormatInfo2KHR = PhysicalDeviceImageFormatInfo2
struct ImageCreateInfo
    image_type::ImageType
    format::Format
    extent::Extent3D
    mip_levels::UInt32
    array_layers::UInt32
    samples::SampleCountFlagBits
    tiling::ImageTiling
    usage::ImageUsageFlags
    sharing_mode::SharingMode
    queue_family_indices::Ptr{UInt32}
    initial_layout::ImageLayout
    vk::VkImageCreateInfo
end

struct Image
    handle::VkImage
    info::ImageCreateInfo
end

struct ImageSparseMemoryRequirementsInfo2
    image::Image
    vk::VkImageSparseMemoryRequirementsInfo2
end

const ImageSparseMemoryRequirementsInfo2KHR = ImageSparseMemoryRequirementsInfo2
struct ImageMemoryRequirementsInfo2
    image::Image
    vk::VkImageMemoryRequirementsInfo2
end

const ImageMemoryRequirementsInfo2KHR = ImageMemoryRequirementsInfo2
const SampleCountFlags = Flags
struct FramebufferMixedSamplesCombinationNV
    coverage_reduction_mode::CoverageReductionModeNV
    rasterization_samples::SampleCountFlagBits
    depth_stencil_samples::SampleCountFlags
    color_samples::SampleCountFlags
end

struct PhysicalDeviceSampleLocationsPropertiesEXT
    sample_location_sample_counts::SampleCountFlags
    max_sample_location_grid_size::Extent2D
    sample_location_coordinate_range::NTuple{2,Float32}
    sample_location_sub_pixel_bits::UInt32
    variable_sample_locations::Bool
end

struct PhysicalDeviceVulkan12Properties
    driver_id::DriverId
    driver_name::String
    driver_info::String
    conformance_version::ConformanceVersion
    denorm_behavior_independence::ShaderFloatControlsIndependence
    rounding_mode_independence::ShaderFloatControlsIndependence
    shader_signed_zero_inf_nan_preserve_float_16::Bool
    shader_signed_zero_inf_nan_preserve_float_32::Bool
    shader_signed_zero_inf_nan_preserve_float_64::Bool
    shader_denorm_preserve_float_16::Bool
    shader_denorm_preserve_float_32::Bool
    shader_denorm_preserve_float_64::Bool
    shader_denorm_flush_to_zero_float_16::Bool
    shader_denorm_flush_to_zero_float_32::Bool
    shader_denorm_flush_to_zero_float_64::Bool
    shader_rounding_mode_rte_float_16::Bool
    shader_rounding_mode_rte_float_32::Bool
    shader_rounding_mode_rte_float_64::Bool
    shader_rounding_mode_rtz_float_16::Bool
    shader_rounding_mode_rtz_float_32::Bool
    shader_rounding_mode_rtz_float_64::Bool
    max_update_after_bind_descriptors_in_all_pools::UInt32
    shader_uniform_buffer_array_non_uniform_indexing_native::Bool
    shader_sampled_image_array_non_uniform_indexing_native::Bool
    shader_storage_buffer_array_non_uniform_indexing_native::Bool
    shader_storage_image_array_non_uniform_indexing_native::Bool
    shader_input_attachment_array_non_uniform_indexing_native::Bool
    robust_buffer_access_update_after_bind::Bool
    quad_divergent_implicit_lod::Bool
    max_per_stage_descriptor_update_after_bind_samplers::UInt32
    max_per_stage_descriptor_update_after_bind_uniform_buffers::UInt32
    max_per_stage_descriptor_update_after_bind_storage_buffers::UInt32
    max_per_stage_descriptor_update_after_bind_sampled_images::UInt32
    max_per_stage_descriptor_update_after_bind_storage_images::UInt32
    max_per_stage_descriptor_update_after_bind_input_attachments::UInt32
    max_per_stage_update_after_bind_resources::UInt32
    max_descriptor_set_update_after_bind_samplers::UInt32
    max_descriptor_set_update_after_bind_uniform_buffers::UInt32
    max_descriptor_set_update_after_bind_uniform_buffers_dynamic::UInt32
    max_descriptor_set_update_after_bind_storage_buffers::UInt32
    max_descriptor_set_update_after_bind_storage_buffers_dynamic::UInt32
    max_descriptor_set_update_after_bind_sampled_images::UInt32
    max_descriptor_set_update_after_bind_storage_images::UInt32
    max_descriptor_set_update_after_bind_input_attachments::UInt32
    supported_depth_resolve_modes::ResolveModeFlags
    supported_stencil_resolve_modes::ResolveModeFlags
    independent_resolve_none::Bool
    independent_resolve::Bool
    filter_minmax_single_component_formats::Bool
    filter_minmax_image_component_mapping::Bool
    max_timeline_semaphore_value_difference::UInt64
    framebuffer_integer_color_sample_counts::SampleCountFlags
end

const ImageCreateFlags = Flags
const FormatFeatureFlags = Flags
struct DrmFormatModifierPropertiesEXT
    drm_format_modifier::UInt64
    drm_format_modifier_plane_count::UInt32
    drm_format_modifier_tiling_features::FormatFeatureFlags
end

struct DrmFormatModifierPropertiesListEXT
    drm_format_modifier_properties::DrmFormatModifierPropertiesEXT
end

struct FormatProperties
    linear_tiling_features::FormatFeatureFlags
    optimal_tiling_features::FormatFeatureFlags
    buffer_features::FormatFeatureFlags
end

struct FormatProperties2
    format_properties::FormatProperties
end

const FormatProperties2KHR = FormatProperties2
const ImageAspectFlags = Flags
struct SparseImageFormatProperties
    aspect_mask::ImageAspectFlags
    image_granularity::Extent3D
end

struct SparseImageFormatProperties2
    properties::SparseImageFormatProperties
end

const SparseImageFormatProperties2KHR = SparseImageFormatProperties2
struct AttachmentReference2
    attachment::UInt32
    layout::ImageLayout
    aspect_mask::ImageAspectFlags
    vk::VkAttachmentReference2
end

struct SubpassDescriptionDepthStencilResolve
    depth_resolve_mode::ResolveModeFlagBits
    stencil_resolve_mode::ResolveModeFlagBits
    depth_stencil_resolve_attachment::AttachmentReference2
    vk::VkSubpassDescriptionDepthStencilResolve
end

const SubpassDescriptionDepthStencilResolveKHR = SubpassDescriptionDepthStencilResolve
struct SubpassDescription2
    pipeline_bind_point::PipelineBindPoint
    view_mask::UInt32
    input_attachments::AttachmentReference2
    color_attachments::AttachmentReference2
    resolve_attachments::AttachmentReference2
    depth_stencil_attachment::AttachmentReference2
    preserve_attachments::Ptr{UInt32}
    vk::VkSubpassDescription2
end

const SubpassDescription2KHR = SubpassDescription2
const AttachmentReference2KHR = AttachmentReference2
struct InputAttachmentAspectReference
    subpass::UInt32
    input_attachment_index::UInt32
    aspect_mask::ImageAspectFlags
    vk::VkInputAttachmentAspectReference
end

struct RenderPassInputAttachmentAspectCreateInfo
    aspect_references::InputAttachmentAspectReference
    vk::VkRenderPassInputAttachmentAspectCreateInfo
end

const RenderPassInputAttachmentAspectCreateInfoKHR = RenderPassInputAttachmentAspectCreateInfo
const InputAttachmentAspectReferenceKHR = InputAttachmentAspectReference
struct ClearAttachment
    aspect_mask::ImageAspectFlags
    color_attachment::UInt32
    clear_value::ClearValue
    vk::VkClearAttachment
end

struct ImageSubresourceLayers
    aspect_mask::ImageAspectFlags
    mip_level::UInt32
    base_array_layer::UInt32
    layer_count::UInt32
    vk::VkImageSubresourceLayers
end

struct ImageResolve
    src_subresource::ImageSubresourceLayers
    src_offset::Offset3D
    dst_subresource::ImageSubresourceLayers
    dst_offset::Offset3D
    extent::Extent3D
    vk::VkImageResolve
end

struct ImageCopy
    src_subresource::ImageSubresourceLayers
    src_offset::Offset3D
    dst_subresource::ImageSubresourceLayers
    dst_offset::Offset3D
    extent::Extent3D
    vk::VkImageCopy
end

struct ImageBlit
    src_subresource::ImageSubresourceLayers
    src_offsets::NTuple{2,Offset3D}
    dst_subresource::ImageSubresourceLayers
    dst_offsets::NTuple{2,Offset3D}
    vk::VkImageBlit
end

struct ImageSubresource
    aspect_mask::ImageAspectFlags
    mip_level::UInt32
    array_layer::UInt32
    vk::VkImageSubresource
end

struct ImageSubresourceRange
    aspect_mask::ImageAspectFlags
    base_mip_level::UInt32
    level_count::UInt32
    base_array_layer::UInt32
    layer_count::UInt32
    vk::VkImageSubresourceRange
end

struct ImageViewCreateInfo
    image::Image
    view_type::ImageViewType
    format::Format
    components::ComponentMapping
    subresource_range::ImageSubresourceRange
    vk::VkImageViewCreateInfo
end

struct ImageView
    handle::VkImageView
    info::ImageViewCreateInfo
end

struct ImageViewHandleInfoNVX
    image_view::ImageView
    descriptor_type::DescriptorType
    sampler::Sampler
    vk::VkImageViewHandleInfoNVX
end

struct RenderPassAttachmentBeginInfo
    attachments::ImageView
    vk::VkRenderPassAttachmentBeginInfo
end

const RenderPassAttachmentBeginInfoKHR = RenderPassAttachmentBeginInfo
struct DescriptorImageInfo
    sampler::Sampler
    image_view::ImageView
    image_layout::ImageLayout
    vk::VkDescriptorImageInfo
end

const AccessFlags = Flags
struct SubpassDependency2
    src_subpass::UInt32
    dst_subpass::UInt32
    src_stage_mask::PipelineStageFlags
    dst_stage_mask::PipelineStageFlags
    src_access_mask::AccessFlags
    dst_access_mask::AccessFlags
    dependency_flags::DependencyFlags
    view_offset::Int32
    vk::VkSubpassDependency2
end

struct RenderPassCreateInfo2
    attachments::AttachmentDescription2
    subpasses::SubpassDescription2
    dependencies::SubpassDependency2
    correlated_view_masks::Ptr{UInt32}
    vk::VkRenderPassCreateInfo2
end

const RenderPassCreateInfo2KHR = RenderPassCreateInfo2
struct RenderPass
    handle::VkRenderPass
    info::RenderPassCreateInfo2
end

struct FramebufferCreateInfo
    render_pass::RenderPass
    attachments::ImageView
    width::UInt32
    height::UInt32
    layers::UInt32
    vk::VkFramebufferCreateInfo
end

struct Framebuffer
    handle::VkFramebuffer
    info::FramebufferCreateInfo
end

struct RenderPassBeginInfo
    render_pass::RenderPass
    framebuffer::Framebuffer
    render_area::Rect2D
    clear_values::ClearValue
    vk::VkRenderPassBeginInfo
end

struct CommandBufferInheritanceInfo
    render_pass::RenderPass
    subpass::UInt32
    framebuffer::Framebuffer
    occlusion_query_enable::Bool
    query_flags::QueryControlFlags
    pipeline_statistics::QueryPipelineStatisticFlags
    vk::VkCommandBufferInheritanceInfo
end

struct CommandBufferBeginInfo
    inheritance_info::CommandBufferInheritanceInfo
    vk::VkCommandBufferBeginInfo
end

struct GraphicsPipelineCreateInfo
    stages::PipelineShaderStageCreateInfo
    vertex_input_state::PipelineVertexInputStateCreateInfo
    input_assembly_state::PipelineInputAssemblyStateCreateInfo
    tessellation_state::PipelineTessellationStateCreateInfo
    viewport_state::PipelineViewportStateCreateInfo
    rasterization_state::PipelineRasterizationStateCreateInfo
    multisample_state::PipelineMultisampleStateCreateInfo
    depth_stencil_state::PipelineDepthStencilStateCreateInfo
    color_blend_state::PipelineColorBlendStateCreateInfo
    dynamic_state::PipelineDynamicStateCreateInfo
    layout::PipelineLayout
    render_pass::RenderPass
    subpass::UInt32
    base_pipeline_handle::Pipeline
    base_pipeline_index::Int32
    vk::VkGraphicsPipelineCreateInfo
end

const SubpassDependency2KHR = SubpassDependency2
struct SubpassDependency
    src_subpass::UInt32
    dst_subpass::UInt32
    src_stage_mask::PipelineStageFlags
    dst_stage_mask::PipelineStageFlags
    src_access_mask::AccessFlags
    dst_access_mask::AccessFlags
    dependency_flags::DependencyFlags
    vk::VkSubpassDependency
end

struct RenderPassCreateInfo
    attachments::AttachmentDescription
    subpasses::SubpassDescription
    dependencies::SubpassDependency
    vk::VkRenderPassCreateInfo
end

struct MemoryBarrier
    src_access_mask::AccessFlags
    dst_access_mask::AccessFlags
    vk::VkMemoryBarrier
end

struct ImageMemoryBarrier
    src_access_mask::AccessFlags
    dst_access_mask::AccessFlags
    old_layout::ImageLayout
    new_layout::ImageLayout
    src_queue_family_index::UInt32
    dst_queue_family_index::UInt32
    image::Image
    subresource_range::ImageSubresourceRange
    vk::VkImageMemoryBarrier
end

const DeviceSize = UInt64
struct PhysicalDeviceRobustness2PropertiesEXT
    robust_storage_buffer_access_size_alignment::DeviceSize
    robust_uniform_buffer_access_size_alignment::DeviceSize
end

struct PhysicalDeviceTexelBufferAlignmentPropertiesEXT
    storage_texel_buffer_offset_alignment_bytes::DeviceSize
    storage_texel_buffer_offset_single_texel_alignment::Bool
    uniform_texel_buffer_offset_alignment_bytes::DeviceSize
    uniform_texel_buffer_offset_single_texel_alignment::Bool
end

struct PhysicalDeviceMemoryBudgetPropertiesEXT
    heap_budget::NTuple{16,DeviceSize}
    heap_usage::NTuple{16,DeviceSize}
end

struct PhysicalDeviceExternalMemoryHostPropertiesEXT
    min_imported_host_pointer_alignment::DeviceSize
end

struct PhysicalDeviceTransformFeedbackPropertiesEXT
    max_transform_feedback_streams::UInt32
    max_transform_feedback_buffers::UInt32
    max_transform_feedback_buffer_size::DeviceSize
    max_transform_feedback_stream_data_size::UInt32
    max_transform_feedback_buffer_data_size::UInt32
    max_transform_feedback_buffer_data_stride::UInt32
    transform_feedback_queries::Bool
    transform_feedback_streams_lines_triangles::Bool
    transform_feedback_rasterization_stream_select::Bool
    transform_feedback_draw::Bool
end

struct PhysicalDeviceVulkan11Properties
    device_uuid::String
    driver_uuid::String
    device_luid::String
    device_node_mask::UInt32
    device_luid_valid::Bool
    subgroup_size::UInt32
    subgroup_supported_stages::ShaderStageFlags
    subgroup_supported_operations::SubgroupFeatureFlags
    subgroup_quad_operations_in_all_stages::Bool
    point_clipping_behavior::PointClippingBehavior
    max_multiview_view_count::UInt32
    max_multiview_instance_index::UInt32
    protected_no_fault::Bool
    max_per_set_descriptors::UInt32
    max_memory_allocation_size::DeviceSize
end

struct PhysicalDeviceMaintenance3Properties
    max_per_set_descriptors::UInt32
    max_memory_allocation_size::DeviceSize
end

const PhysicalDeviceMaintenance3PropertiesKHR = PhysicalDeviceMaintenance3Properties
struct SparseImageMemoryRequirements
    format_properties::SparseImageFormatProperties
    image_mip_tail_first_lod::UInt32
    image_mip_tail_size::DeviceSize
    image_mip_tail_offset::DeviceSize
    image_mip_tail_stride::DeviceSize
end

struct SparseImageMemoryRequirements2
    memory_requirements::SparseImageMemoryRequirements
end

const SparseImageMemoryRequirements2KHR = SparseImageMemoryRequirements2
struct PhysicalDeviceLimits
    max_image_dimension_1_d::UInt32
    max_image_dimension_2_d::UInt32
    max_image_dimension_3_d::UInt32
    max_image_dimension_cube::UInt32
    max_image_array_layers::UInt32
    max_texel_buffer_elements::UInt32
    max_uniform_buffer_range::UInt32
    max_storage_buffer_range::UInt32
    max_push_constants_size::UInt32
    max_memory_allocation_count::UInt32
    max_sampler_allocation_count::UInt32
    buffer_image_granularity::DeviceSize
    sparse_address_space_size::DeviceSize
    max_bound_descriptor_sets::UInt32
    max_per_stage_descriptor_samplers::UInt32
    max_per_stage_descriptor_uniform_buffers::UInt32
    max_per_stage_descriptor_storage_buffers::UInt32
    max_per_stage_descriptor_sampled_images::UInt32
    max_per_stage_descriptor_storage_images::UInt32
    max_per_stage_descriptor_input_attachments::UInt32
    max_per_stage_resources::UInt32
    max_descriptor_set_samplers::UInt32
    max_descriptor_set_uniform_buffers::UInt32
    max_descriptor_set_uniform_buffers_dynamic::UInt32
    max_descriptor_set_storage_buffers::UInt32
    max_descriptor_set_storage_buffers_dynamic::UInt32
    max_descriptor_set_sampled_images::UInt32
    max_descriptor_set_storage_images::UInt32
    max_descriptor_set_input_attachments::UInt32
    max_vertex_input_attributes::UInt32
    max_vertex_input_bindings::UInt32
    max_vertex_input_attribute_offset::UInt32
    max_vertex_input_binding_stride::UInt32
    max_vertex_output_components::UInt32
    max_tessellation_generation_level::UInt32
    max_tessellation_patch_size::UInt32
    max_tessellation_control_per_vertex_input_components::UInt32
    max_tessellation_control_per_vertex_output_components::UInt32
    max_tessellation_control_per_patch_output_components::UInt32
    max_tessellation_control_total_output_components::UInt32
    max_tessellation_evaluation_input_components::UInt32
    max_tessellation_evaluation_output_components::UInt32
    max_geometry_shader_invocations::UInt32
    max_geometry_input_components::UInt32
    max_geometry_output_components::UInt32
    max_geometry_output_vertices::UInt32
    max_geometry_total_output_components::UInt32
    max_fragment_input_components::UInt32
    max_fragment_output_attachments::UInt32
    max_fragment_dual_src_attachments::UInt32
    max_fragment_combined_output_resources::UInt32
    max_compute_shared_memory_size::UInt32
    max_compute_work_group_count::NTuple{3,UInt32}
    max_compute_work_group_invocations::UInt32
    max_compute_work_group_size::NTuple{3,UInt32}
    sub_pixel_precision_bits::UInt32
    sub_texel_precision_bits::UInt32
    mipmap_precision_bits::UInt32
    max_draw_indexed_index_value::UInt32
    max_draw_indirect_count::UInt32
    max_sampler_lod_bias::Float32
    max_sampler_anisotropy::Float32
    max_viewports::UInt32
    max_viewport_dimensions::NTuple{2,UInt32}
    viewport_bounds_range::NTuple{2,Float32}
    viewport_sub_pixel_bits::UInt32
    min_memory_map_alignment::UInt
    min_texel_buffer_offset_alignment::DeviceSize
    min_uniform_buffer_offset_alignment::DeviceSize
    min_storage_buffer_offset_alignment::DeviceSize
    min_texel_offset::Int32
    max_texel_offset::UInt32
    min_texel_gather_offset::Int32
    max_texel_gather_offset::UInt32
    min_interpolation_offset::Float32
    max_interpolation_offset::Float32
    sub_pixel_interpolation_offset_bits::UInt32
    max_framebuffer_width::UInt32
    max_framebuffer_height::UInt32
    max_framebuffer_layers::UInt32
    framebuffer_color_sample_counts::SampleCountFlags
    framebuffer_depth_sample_counts::SampleCountFlags
    framebuffer_stencil_sample_counts::SampleCountFlags
    framebuffer_no_attachments_sample_counts::SampleCountFlags
    max_color_attachments::UInt32
    sampled_image_color_sample_counts::SampleCountFlags
    sampled_image_integer_sample_counts::SampleCountFlags
    sampled_image_depth_sample_counts::SampleCountFlags
    sampled_image_stencil_sample_counts::SampleCountFlags
    storage_image_sample_counts::SampleCountFlags
    max_sample_mask_words::UInt32
    timestamp_compute_and_graphics::Bool
    timestamp_period::Float32
    max_clip_distances::UInt32
    max_cull_distances::UInt32
    max_combined_clip_and_cull_distances::UInt32
    discrete_queue_priorities::UInt32
    point_size_range::NTuple{2,Float32}
    line_width_range::NTuple{2,Float32}
    point_size_granularity::Float32
    line_width_granularity::Float32
    strict_lines::Bool
    standard_sample_locations::Bool
    optimal_buffer_copy_offset_alignment::DeviceSize
    optimal_buffer_copy_row_pitch_alignment::DeviceSize
    non_coherent_atom_size::DeviceSize
end

struct PhysicalDeviceProperties
    api_version::VersionNumber
    driver_version::VersionNumber
    vendor_id::UInt32
    device_id::UInt32
    device_type::PhysicalDeviceType
    device_name::String
    pipeline_cache_uuid::String
    limits::PhysicalDeviceLimits
    sparse_properties::PhysicalDeviceSparseProperties
end

struct PhysicalDeviceProperties2
    properties::PhysicalDeviceProperties
end

const PhysicalDeviceProperties2KHR = PhysicalDeviceProperties2
struct ImageFormatProperties
    max_extent::Extent3D
    max_mip_levels::UInt32
    max_array_layers::UInt32
    sample_counts::SampleCountFlags
    max_resource_size::DeviceSize
end

struct ExternalImageFormatPropertiesNV
    image_format_properties::ImageFormatProperties
    external_memory_features::ExternalMemoryFeatureFlagsNV
    export_from_imported_handle_types::ExternalMemoryHandleTypeFlagsNV
    compatible_handle_types::ExternalMemoryHandleTypeFlagsNV
end

struct ImageFormatProperties2
    image_format_properties::ImageFormatProperties
end

const ImageFormatProperties2KHR = ImageFormatProperties2
struct BindAccelerationStructureMemoryInfoKHR
    acceleration_structure::AccelerationStructureKHR
    memory::DeviceMemory
    memory_offset::DeviceSize
    device_indices::Ptr{UInt32}
    vk::VkBindAccelerationStructureMemoryInfoKHR
end

const BindAccelerationStructureMemoryInfoNV = BindAccelerationStructureMemoryInfoKHR
struct BindImageMemoryInfo
    image::Image
    memory::DeviceMemory
    memory_offset::DeviceSize
    vk::VkBindImageMemoryInfo
end

const BindImageMemoryInfoKHR = BindImageMemoryInfo
struct BufferImageCopy
    buffer_offset::DeviceSize
    buffer_row_length::UInt32
    buffer_image_height::UInt32
    image_subresource::ImageSubresourceLayers
    image_offset::Offset3D
    image_extent::Extent3D
    vk::VkBufferImageCopy
end

struct BufferCopy
    src_offset::DeviceSize
    dst_offset::DeviceSize
    size::DeviceSize
    vk::VkBufferCopy
end

struct SubresourceLayout
    offset::DeviceSize
    size::DeviceSize
    row_pitch::DeviceSize
    array_pitch::DeviceSize
    depth_pitch::DeviceSize
    vk::VkSubresourceLayout
end

struct ImageDrmFormatModifierExplicitCreateInfoEXT
    plane_layouts::SubresourceLayout
    vk::VkImageDrmFormatModifierExplicitCreateInfoEXT
end

struct BufferCreateInfo
    size::DeviceSize
    usage::BufferUsageFlags
    sharing_mode::SharingMode
    queue_family_indices::Ptr{UInt32}
    vk::VkBufferCreateInfo
end

struct Buffer
    handle::VkBuffer
    info::BufferCreateInfo
end

struct IndirectCommandsStreamNV
    buffer::Buffer
    offset::DeviceSize
    vk::VkIndirectCommandsStreamNV
end

struct GeneratedCommandsInfoNV
    pipeline_bind_point::PipelineBindPoint
    pipeline::Pipeline
    indirect_commands_layout::IndirectCommandsLayoutNV
    streams::IndirectCommandsStreamNV
    sequences_count::UInt32
    preprocess_buffer::Buffer
    preprocess_offset::DeviceSize
    preprocess_size::DeviceSize
    sequences_count_buffer::Buffer
    sequences_count_offset::DeviceSize
    sequences_index_buffer::Buffer
    sequences_index_offset::DeviceSize
    vk::VkGeneratedCommandsInfoNV
end

struct GeometryAABBNV
    aabb_data::Buffer
    num_aab_bs::UInt32
    stride::UInt32
    offset::DeviceSize
    vk::VkGeometryAABBNV
end

struct GeometryTrianglesNV
    vertex_data::Buffer
    vertex_offset::DeviceSize
    vertex_count::UInt32
    vertex_stride::DeviceSize
    vertex_format::Format
    index_data::Buffer
    index_offset::DeviceSize
    index_count::UInt32
    index_type::IndexType
    transform_data::Buffer
    transform_offset::DeviceSize
    vk::VkGeometryTrianglesNV
end

struct GeometryDataNV
    triangles::GeometryTrianglesNV
    aabbs::GeometryAABBNV
    vk::VkGeometryDataNV
end

struct GeometryNV
    geometry_type::GeometryTypeKHR
    geometry::GeometryDataNV
    vk::VkGeometryNV
end

struct AccelerationStructureInfoNV
    type::AccelerationStructureTypeNV
    instance_count::UInt32
    geometries::GeometryNV
    vk::VkAccelerationStructureInfoNV
end

struct AccelerationStructureCreateInfoNV
    compacted_size::DeviceSize
    info::AccelerationStructureInfoNV
    vk::VkAccelerationStructureCreateInfoNV
end

struct AccelerationStructureNV
    handle::VkAccelerationStructureNV
    info::AccelerationStructureCreateInfoNV
end

struct AccelerationStructureMemoryRequirementsInfoNV
    type::AccelerationStructureMemoryRequirementsTypeNV
    acceleration_structure::AccelerationStructureNV
    vk::VkAccelerationStructureMemoryRequirementsInfoNV
end

struct ConditionalRenderingBeginInfoEXT
    buffer::Buffer
    offset::DeviceSize
    vk::VkConditionalRenderingBeginInfoEXT
end

struct DedicatedAllocationMemoryAllocateInfoNV
    image::Image
    buffer::Buffer
    vk::VkDedicatedAllocationMemoryAllocateInfoNV
end

struct BufferDeviceAddressInfo
    buffer::Buffer
    vk::VkBufferDeviceAddressInfo
end

const BufferDeviceAddressInfoEXT = BufferDeviceAddressInfo
const BufferDeviceAddressInfoKHR = BufferDeviceAddressInfo
struct BufferMemoryRequirementsInfo2
    buffer::Buffer
    vk::VkBufferMemoryRequirementsInfo2
end

const BufferMemoryRequirementsInfo2KHR = BufferMemoryRequirementsInfo2
struct MemoryDedicatedAllocateInfo
    image::Image
    buffer::Buffer
    vk::VkMemoryDedicatedAllocateInfo
end

const MemoryDedicatedAllocateInfoKHR = MemoryDedicatedAllocateInfo
struct BindBufferMemoryInfo
    buffer::Buffer
    memory::DeviceMemory
    memory_offset::DeviceSize
    vk::VkBindBufferMemoryInfo
end

const BindBufferMemoryInfoKHR = BindBufferMemoryInfo
struct DescriptorBufferInfo
    buffer::Buffer
    offset::DeviceSize
    range::DeviceSize
    vk::VkDescriptorBufferInfo
end

struct BufferViewCreateInfo
    buffer::Buffer
    format::Format
    offset::DeviceSize
    range::DeviceSize
    vk::VkBufferViewCreateInfo
end

struct BufferView
    handle::VkBufferView
    info::BufferViewCreateInfo
end

struct WriteDescriptorSet
    dst_set::DescriptorSet
    dst_binding::UInt32
    dst_array_element::UInt32
    descriptor_type::DescriptorType
    image_info::DescriptorImageInfo
    buffer_info::DescriptorBufferInfo
    texel_buffer_view::BufferView
    vk::VkWriteDescriptorSet
end

struct SparseImageMemoryBind
    subresource::ImageSubresource
    offset::Offset3D
    extent::Extent3D
    memory::DeviceMemory
    memory_offset::DeviceSize
    vk::VkSparseImageMemoryBind
end

struct SparseImageMemoryBindInfo
    image::Image
    binds::SparseImageMemoryBind
    vk::VkSparseImageMemoryBindInfo
end

struct SparseMemoryBind
    resource_offset::DeviceSize
    size::DeviceSize
    memory::DeviceMemory
    memory_offset::DeviceSize
    vk::VkSparseMemoryBind
end

struct SparseImageOpaqueMemoryBindInfo
    image::Image
    binds::SparseMemoryBind
    vk::VkSparseImageOpaqueMemoryBindInfo
end

struct SparseBufferMemoryBindInfo
    buffer::Buffer
    binds::SparseMemoryBind
    vk::VkSparseBufferMemoryBindInfo
end

struct BindSparseInfo
    wait_semaphores::Semaphore
    buffer_binds::SparseBufferMemoryBindInfo
    image_opaque_binds::SparseImageOpaqueMemoryBindInfo
    image_binds::SparseImageMemoryBindInfo
    signal_semaphores::Semaphore
    vk::VkBindSparseInfo
end

struct MemoryRequirements
    size::DeviceSize
    alignment::DeviceSize
    memory_type_bits::UInt32
    vk::VkMemoryRequirements
end

struct MemoryRequirements2
    memory_requirements::MemoryRequirements
    vk::VkMemoryRequirements2
end

const MemoryRequirements2KHR = MemoryRequirements2
struct MemoryAllocateInfo
    allocation_size::DeviceSize
    memory_type_index::UInt32
    vk::VkMemoryAllocateInfo
end

struct MappedMemoryRange
    memory::DeviceMemory
    offset::DeviceSize
    size::DeviceSize
    vk::VkMappedMemoryRange
end

struct MemoryHeap
    size::DeviceSize
    vk::VkMemoryHeap
end

struct PhysicalDeviceMemoryProperties
    memory_type_count::UInt32
    memory_types::NTuple{32,MemoryType}
    memory_heap_count::UInt32
    memory_heaps::NTuple{16,MemoryHeap}
end

struct PhysicalDeviceMemoryProperties2
    memory_properties::PhysicalDeviceMemoryProperties
end

const PhysicalDeviceMemoryProperties2KHR = PhysicalDeviceMemoryProperties2
struct BufferMemoryBarrier
    src_access_mask::AccessFlags
    dst_access_mask::AccessFlags
    src_queue_family_index::UInt32
    dst_queue_family_index::UInt32
    buffer::Buffer
    offset::DeviceSize
    size::DeviceSize
    vk::VkBufferMemoryBarrier
end

const DeviceAddress = UInt64
struct ImageViewAddressPropertiesNVX
    device_address::DeviceAddress
    size::DeviceSize
end

struct BindVertexBufferIndirectCommandNV
    buffer_address::DeviceAddress
    size::UInt32
    stride::UInt32
    vk::VkBindVertexBufferIndirectCommandNV
end

struct BindIndexBufferIndirectCommandNV
    buffer_address::DeviceAddress
    size::UInt32
    index_type::IndexType
    vk::VkBindIndexBufferIndirectCommandNV
end

struct BufferDeviceAddressCreateInfoEXT
    device_address::DeviceAddress
    vk::VkBufferDeviceAddressCreateInfoEXT
end

const Bool32 = UInt32
const EXT_4444_FORMATS_EXTENSION_NAME = "VK_EXT_4444_formats"
const EXT_4444_FORMATS_SPEC_VERSION = 1
const EXT_4444_formats = 1
const EXT_IMAGE_ROBUSTNESS_EXTENSION_NAME = "VK_EXT_image_robustness"
const EXT_IMAGE_ROBUSTNESS_SPEC_VERSION = 1
const EXT_image_robustness = 1
const EXT_FRAGMENT_DENSITY_MAP_2_EXTENSION_NAME = "VK_EXT_fragment_density_map2"
const EXT_FRAGMENT_DENSITY_MAP_2_SPEC_VERSION = 1
const EXT_fragment_density_map2 = 1
const QCOM_render_pass_store_ops_EXTENSION_NAME = "VK_QCOM_render_pass_store_ops"
const QCOM_render_pass_store_ops_SPEC_VERSION = 2
const QCOM_render_pass_store_ops = 1
const NV_DEVICE_DIAGNOSTICS_CONFIG_EXTENSION_NAME = "VK_NV_device_diagnostics_config"
const NV_DEVICE_DIAGNOSTICS_CONFIG_SPEC_VERSION = 1
const NV_device_diagnostics_config = 1
const EXT_PIPELINE_CREATION_CACHE_CONTROL_EXTENSION_NAME = "VK_EXT_pipeline_creation_cache_control"
const EXT_PIPELINE_CREATION_CACHE_CONTROL_SPEC_VERSION = 3
const EXT_pipeline_creation_cache_control = 1
const EXT_PRIVATE_DATA_EXTENSION_NAME = "VK_EXT_private_data"
const EXT_PRIVATE_DATA_SPEC_VERSION = 1
const EXT_private_data = 1
const GOOGLE_USER_TYPE_EXTENSION_NAME = "VK_GOOGLE_user_type"
const GOOGLE_USER_TYPE_SPEC_VERSION = 1
const GOOGLE_user_type = 1
const EXT_CUSTOM_BORDER_COLOR_EXTENSION_NAME = "VK_EXT_custom_border_color"
const EXT_CUSTOM_BORDER_COLOR_SPEC_VERSION = 12
const EXT_custom_border_color = 1
const EXT_ROBUSTNESS_2_EXTENSION_NAME = "VK_EXT_robustness2"
const EXT_ROBUSTNESS_2_SPEC_VERSION = 1
const EXT_robustness2 = 1
const QCOM_RENDER_PASS_TRANSFORM_EXTENSION_NAME = "VK_QCOM_render_pass_transform"
const QCOM_RENDER_PASS_TRANSFORM_SPEC_VERSION = 1
const QCOM_render_pass_transform = 1
const EXT_TEXEL_BUFFER_ALIGNMENT_EXTENSION_NAME = "VK_EXT_texel_buffer_alignment"
const EXT_TEXEL_BUFFER_ALIGNMENT_SPEC_VERSION = 1
const EXT_texel_buffer_alignment = 1
const NV_DEVICE_GENERATED_COMMANDS_EXTENSION_NAME = "VK_NV_device_generated_commands"
const NV_DEVICE_GENERATED_COMMANDS_SPEC_VERSION = 3
const NV_device_generated_commands = 1
const EXT_SHADER_DEMOTE_TO_HELPER_INVOCATION_EXTENSION_NAME = "VK_EXT_shader_demote_to_helper_invocation"
const EXT_SHADER_DEMOTE_TO_HELPER_INVOCATION_SPEC_VERSION = 1
const EXT_shader_demote_to_helper_invocation = 1
const EXT_EXTENDED_DYNAMIC_STATE_EXTENSION_NAME = "VK_EXT_extended_dynamic_state"
const EXT_EXTENDED_DYNAMIC_STATE_SPEC_VERSION = 1
const EXT_extended_dynamic_state = 1
const EXT_INDEX_TYPE_UINT8_EXTENSION_NAME = "VK_EXT_index_type_uint8"
const EXT_INDEX_TYPE_UINT8_SPEC_VERSION = 1
const EXT_index_type_uint8 = 1
const EXT_HOST_QUERY_RESET_EXTENSION_NAME = "VK_EXT_host_query_reset"
const EXT_HOST_QUERY_RESET_SPEC_VERSION = 1
const EXT_host_query_reset = 1
const EXT_SHADER_ATOMIC_FLOAT_EXTENSION_NAME = "VK_EXT_shader_atomic_float"
const EXT_SHADER_ATOMIC_FLOAT_SPEC_VERSION = 1
const EXT_shader_atomic_float = 1
const EXT_LINE_RASTERIZATION_EXTENSION_NAME = "VK_EXT_line_rasterization"
const EXT_LINE_RASTERIZATION_SPEC_VERSION = 1
const EXT_line_rasterization = 1
const EXT_HEADLESS_SURFACE_EXTENSION_NAME = "VK_EXT_headless_surface"
const EXT_HEADLESS_SURFACE_SPEC_VERSION = 1
const EXT_headless_surface = 1
const EXT_YCBCR_IMAGE_ARRAYS_EXTENSION_NAME = "VK_EXT_ycbcr_image_arrays"
const EXT_YCBCR_IMAGE_ARRAYS_SPEC_VERSION = 1
const EXT_ycbcr_image_arrays = 1
const EXT_FRAGMENT_SHADER_INTERLOCK_EXTENSION_NAME = "VK_EXT_fragment_shader_interlock"
const EXT_FRAGMENT_SHADER_INTERLOCK_SPEC_VERSION = 1
const EXT_fragment_shader_interlock = 1
const NV_COVERAGE_REDUCTION_MODE_EXTENSION_NAME = "VK_NV_coverage_reduction_mode"
const NV_COVERAGE_REDUCTION_MODE_SPEC_VERSION = 1
const NV_coverage_reduction_mode = 1
const NV_COOPERATIVE_MATRIX_EXTENSION_NAME = "VK_NV_cooperative_matrix"
const NV_COOPERATIVE_MATRIX_SPEC_VERSION = 1
const NV_cooperative_matrix = 1
const EXT_VALIDATION_FEATURES_EXTENSION_NAME = "VK_EXT_validation_features"
const EXT_VALIDATION_FEATURES_SPEC_VERSION = 4
const EXT_validation_features = 1
const EXT_SEPARATE_STENCIL_USAGE_EXTENSION_NAME = "VK_EXT_separate_stencil_usage"
const EXT_SEPARATE_STENCIL_USAGE_SPEC_VERSION = 1
const EXT_separate_stencil_usage = 1
const EXT_TOOLING_INFO_EXTENSION_NAME = "VK_EXT_tooling_info"
const EXT_TOOLING_INFO_SPEC_VERSION = 1
const EXT_tooling_info = 1
const EXT_BUFFER_DEVICE_ADDRESS_EXTENSION_NAME = "VK_EXT_buffer_device_address"
const EXT_BUFFER_DEVICE_ADDRESS_SPEC_VERSION = 2
const EXT_buffer_device_address = 1
const NV_DEDICATED_ALLOCATION_IMAGE_ALIASING_EXTENSION_NAME = "VK_NV_dedicated_allocation_image_aliasing"
const NV_DEDICATED_ALLOCATION_IMAGE_ALIASING_SPEC_VERSION = 1
const NV_dedicated_allocation_image_aliasing = 1
const EXT_MEMORY_PRIORITY_EXTENSION_NAME = "VK_EXT_memory_priority"
const EXT_MEMORY_PRIORITY_SPEC_VERSION = 1
const EXT_memory_priority = 1
const EXT_MEMORY_BUDGET_EXTENSION_NAME = "VK_EXT_memory_budget"
const EXT_MEMORY_BUDGET_SPEC_VERSION = 1
const EXT_memory_budget = 1
const AMD_DEVICE_COHERENT_MEMORY_EXTENSION_NAME = "VK_AMD_device_coherent_memory"
const AMD_DEVICE_COHERENT_MEMORY_SPEC_VERSION = 1
const AMD_device_coherent_memory = 1
const AMD_SHADER_CORE_PROPERTIES_2_EXTENSION_NAME = "VK_AMD_shader_core_properties2"
const AMD_SHADER_CORE_PROPERTIES_2_SPEC_VERSION = 1
const AMD_shader_core_properties2 = 1
const EXT_SUBGROUP_SIZE_CONTROL_EXTENSION_NAME = "VK_EXT_subgroup_size_control"
const EXT_SUBGROUP_SIZE_CONTROL_SPEC_VERSION = 2
const EXT_subgroup_size_control = 1
const GOOGLE_DECORATE_STRING_EXTENSION_NAME = "VK_GOOGLE_decorate_string"
const GOOGLE_DECORATE_STRING_SPEC_VERSION = 1
const GOOGLE_decorate_string = 1
const GOOGLE_HLSL_FUNCTIONALITY1_EXTENSION_NAME = "VK_GOOGLE_hlsl_functionality1"
const GOOGLE_HLSL_FUNCTIONALITY1_SPEC_VERSION = 1
const GOOGLE_hlsl_functionality1 = 1
const EXT_SCALAR_BLOCK_LAYOUT_EXTENSION_NAME = "VK_EXT_scalar_block_layout"
const EXT_SCALAR_BLOCK_LAYOUT_SPEC_VERSION = 1
const EXT_scalar_block_layout = 1
const EXT_FRAGMENT_DENSITY_MAP_EXTENSION_NAME = "VK_EXT_fragment_density_map"
const EXT_FRAGMENT_DENSITY_MAP_SPEC_VERSION = 1
const EXT_fragment_density_map = 1
const AMD_DISPLAY_NATIVE_HDR_EXTENSION_NAME = "VK_AMD_display_native_hdr"
const AMD_DISPLAY_NATIVE_HDR_SPEC_VERSION = 1
const AMD_display_native_hdr = 1
const EXT_PCI_BUS_INFO_EXTENSION_NAME = "VK_EXT_pci_bus_info"
const EXT_PCI_BUS_INFO_SPEC_VERSION = 2
const EXT_pci_bus_info = 1
const INTEL_PERFORMANCE_QUERY_EXTENSION_NAME = "VK_INTEL_performance_query"
const INTEL_PERFORMANCE_QUERY_SPEC_VERSION = 2
const INTEL_performance_query = 1
const INTEL_SHADER_INTEGER_FUNCTIONS_2_EXTENSION_NAME = "VK_INTEL_shader_integer_functions2"
const INTEL_SHADER_INTEGER_FUNCTIONS_2_SPEC_VERSION = 1
const INTEL_shader_integer_functions2 = 1
const NV_DEVICE_DIAGNOSTIC_CHECKPOINTS_EXTENSION_NAME = "VK_NV_device_diagnostic_checkpoints"
const NV_DEVICE_DIAGNOSTIC_CHECKPOINTS_SPEC_VERSION = 2
const NV_device_diagnostic_checkpoints = 1
const NV_SCISSOR_EXCLUSIVE_EXTENSION_NAME = "VK_NV_scissor_exclusive"
const NV_SCISSOR_EXCLUSIVE_SPEC_VERSION = 1
const NV_scissor_exclusive = 1
const NV_SHADER_IMAGE_FOOTPRINT_EXTENSION_NAME = "VK_NV_shader_image_footprint"
const NV_SHADER_IMAGE_FOOTPRINT_SPEC_VERSION = 2
const NV_shader_image_footprint = 1
const NV_FRAGMENT_SHADER_BARYCENTRIC_EXTENSION_NAME = "VK_NV_fragment_shader_barycentric"
const NV_FRAGMENT_SHADER_BARYCENTRIC_SPEC_VERSION = 1
const NV_fragment_shader_barycentric = 1
const NV_MESH_SHADER_EXTENSION_NAME = "VK_NV_mesh_shader"
const NV_MESH_SHADER_SPEC_VERSION = 1
const NV_mesh_shader = 1
const NV_COMPUTE_SHADER_DERIVATIVES_EXTENSION_NAME = "VK_NV_compute_shader_derivatives"
const NV_COMPUTE_SHADER_DERIVATIVES_SPEC_VERSION = 1
const NV_compute_shader_derivatives = 1
const NV_SHADER_SUBGROUP_PARTITIONED_EXTENSION_NAME = "VK_NV_shader_subgroup_partitioned"
const NV_SHADER_SUBGROUP_PARTITIONED_SPEC_VERSION = 1
const NV_shader_subgroup_partitioned = 1
const EXT_PIPELINE_CREATION_FEEDBACK_EXTENSION_NAME = "VK_EXT_pipeline_creation_feedback"
const EXT_PIPELINE_CREATION_FEEDBACK_SPEC_VERSION = 1
const EXT_pipeline_creation_feedback = 1
const EXT_VERTEX_ATTRIBUTE_DIVISOR_EXTENSION_NAME = "VK_EXT_vertex_attribute_divisor"
const EXT_VERTEX_ATTRIBUTE_DIVISOR_SPEC_VERSION = 3
const EXT_vertex_attribute_divisor = 1
const AMD_MEMORY_OVERALLOCATION_BEHAVIOR_EXTENSION_NAME = "VK_AMD_memory_overallocation_behavior"
const AMD_MEMORY_OVERALLOCATION_BEHAVIOR_SPEC_VERSION = 1
const AMD_memory_overallocation_behavior = 1
const AMD_SHADER_CORE_PROPERTIES_EXTENSION_NAME = "VK_AMD_shader_core_properties"
const AMD_SHADER_CORE_PROPERTIES_SPEC_VERSION = 2
const AMD_shader_core_properties = 1
const EXT_CALIBRATED_TIMESTAMPS_EXTENSION_NAME = "VK_EXT_calibrated_timestamps"
const EXT_CALIBRATED_TIMESTAMPS_SPEC_VERSION = 1
const EXT_calibrated_timestamps = 1
const AMD_PIPELINE_COMPILER_CONTROL_EXTENSION_NAME = "VK_AMD_pipeline_compiler_control"
const AMD_PIPELINE_COMPILER_CONTROL_SPEC_VERSION = 1
const AMD_pipeline_compiler_control = 1
const AMD_BUFFER_MARKER_EXTENSION_NAME = "VK_AMD_buffer_marker"
const AMD_BUFFER_MARKER_SPEC_VERSION = 1
const AMD_buffer_marker = 1
const EXT_EXTERNAL_MEMORY_HOST_EXTENSION_NAME = "VK_EXT_external_memory_host"
const EXT_EXTERNAL_MEMORY_HOST_SPEC_VERSION = 1
const EXT_external_memory_host = 1
const EXT_GLOBAL_PRIORITY_EXTENSION_NAME = "VK_EXT_global_priority"
const EXT_GLOBAL_PRIORITY_SPEC_VERSION = 2
const EXT_global_priority = 1
const QCOM_RENDER_PASS_SHADER_RESOLVE_EXTENSION_NAME = "VK_QCOM_render_pass_shader_resolve"
const QCOM_RENDER_PASS_SHADER_RESOLVE_SPEC_VERSION = 4
const QCOM_render_pass_shader_resolve = 1
const EXT_FILTER_CUBIC_EXTENSION_NAME = "VK_EXT_filter_cubic"
const EXT_FILTER_CUBIC_SPEC_VERSION = 3
const EXT_filter_cubic = 1
const NV_REPRESENTATIVE_FRAGMENT_TEST_EXTENSION_NAME = "VK_NV_representative_fragment_test"
const NV_REPRESENTATIVE_FRAGMENT_TEST_SPEC_VERSION = 2
const NV_representative_fragment_test = 1
const SHADER_UNUSED_KHR = ~(UInt32(0))
const SHADER_UNUSED_NV = SHADER_UNUSED_KHR
const NV_RAY_TRACING_EXTENSION_NAME = "VK_NV_ray_tracing"
const NV_RAY_TRACING_SPEC_VERSION = 3
const NV_ray_tracing = 1
const NV_SHADING_RATE_IMAGE_EXTENSION_NAME = "VK_NV_shading_rate_image"
const NV_SHADING_RATE_IMAGE_SPEC_VERSION = 3
const NV_shading_rate_image = 1
const EXT_SHADER_VIEWPORT_INDEX_LAYER_EXTENSION_NAME = "VK_EXT_shader_viewport_index_layer"
const EXT_SHADER_VIEWPORT_INDEX_LAYER_SPEC_VERSION = 1
const EXT_shader_viewport_index_layer = 1
const EXT_DESCRIPTOR_INDEXING_EXTENSION_NAME = "VK_EXT_descriptor_indexing"
const EXT_DESCRIPTOR_INDEXING_SPEC_VERSION = 2
const EXT_descriptor_indexing = 1
const EXT_VALIDATION_CACHE_EXTENSION_NAME = "VK_EXT_validation_cache"
const EXT_VALIDATION_CACHE_SPEC_VERSION = 1
const EXT_validation_cache = 1
const EXT_IMAGE_DRM_FORMAT_MODIFIER_EXTENSION_NAME = "VK_EXT_image_drm_format_modifier"
const EXT_IMAGE_DRM_FORMAT_MODIFIER_SPEC_VERSION = 1
const EXT_image_drm_format_modifier = 1
const EXT_POST_DEPTH_COVERAGE_EXTENSION_NAME = "VK_EXT_post_depth_coverage"
const EXT_POST_DEPTH_COVERAGE_SPEC_VERSION = 1
const EXT_post_depth_coverage = 1
const NV_SHADER_SM_BUILTINS_EXTENSION_NAME = "VK_NV_shader_sm_builtins"
const NV_SHADER_SM_BUILTINS_SPEC_VERSION = 1
const NV_shader_sm_builtins = 1
const NV_FILL_RECTANGLE_EXTENSION_NAME = "VK_NV_fill_rectangle"
const NV_FILL_RECTANGLE_SPEC_VERSION = 1
const NV_fill_rectangle = 1
const NV_FRAMEBUFFER_MIXED_SAMPLES_EXTENSION_NAME = "VK_NV_framebuffer_mixed_samples"
const NV_FRAMEBUFFER_MIXED_SAMPLES_SPEC_VERSION = 1
const NV_framebuffer_mixed_samples = 1
const NV_FRAGMENT_COVERAGE_TO_COLOR_EXTENSION_NAME = "VK_NV_fragment_coverage_to_color"
const NV_FRAGMENT_COVERAGE_TO_COLOR_SPEC_VERSION = 1
const NV_fragment_coverage_to_color = 1
const EXT_BLEND_OPERATION_ADVANCED_EXTENSION_NAME = "VK_EXT_blend_operation_advanced"
const EXT_BLEND_OPERATION_ADVANCED_SPEC_VERSION = 2
const EXT_blend_operation_advanced = 1
const EXT_SAMPLE_LOCATIONS_EXTENSION_NAME = "VK_EXT_sample_locations"
const EXT_SAMPLE_LOCATIONS_SPEC_VERSION = 1
const EXT_sample_locations = 1
const EXT_SHADER_STENCIL_EXPORT_EXTENSION_NAME = "VK_EXT_shader_stencil_export"
const EXT_SHADER_STENCIL_EXPORT_SPEC_VERSION = 1
const EXT_shader_stencil_export = 1
const EXT_INLINE_UNIFORM_BLOCK_EXTENSION_NAME = "VK_EXT_inline_uniform_block"
const EXT_INLINE_UNIFORM_BLOCK_SPEC_VERSION = 1
const EXT_inline_uniform_block = 1
const AMD_SHADER_FRAGMENT_MASK_EXTENSION_NAME = "VK_AMD_shader_fragment_mask"
const AMD_SHADER_FRAGMENT_MASK_SPEC_VERSION = 1
const AMD_shader_fragment_mask = 1
const AMD_MIXED_ATTACHMENT_SAMPLES_EXTENSION_NAME = "VK_AMD_mixed_attachment_samples"
const AMD_MIXED_ATTACHMENT_SAMPLES_SPEC_VERSION = 1
const AMD_mixed_attachment_samples = 1
const AMD_GPU_SHADER_INT16_EXTENSION_NAME = "VK_AMD_gpu_shader_int16"
const AMD_GPU_SHADER_INT16_SPEC_VERSION = 2
const AMD_gpu_shader_int16 = 1
const EXT_SAMPLER_FILTER_MINMAX_EXTENSION_NAME = "VK_EXT_sampler_filter_minmax"
const EXT_SAMPLER_FILTER_MINMAX_SPEC_VERSION = 2
const EXT_sampler_filter_minmax = 1
const EXT_DEBUG_UTILS_EXTENSION_NAME = "VK_EXT_debug_utils"
const EXT_DEBUG_UTILS_SPEC_VERSION = 2
const EXT_debug_utils = 1
const QUEUE_FAMILY_FOREIGN_EXT = ~(UInt32(0)) - 2
const EXT_QUEUE_FAMILY_FOREIGN_EXTENSION_NAME = "VK_EXT_queue_family_foreign"
const EXT_QUEUE_FAMILY_FOREIGN_SPEC_VERSION = 1
const EXT_queue_family_foreign = 1
const EXT_EXTERNAL_MEMORY_DMA_BUF_EXTENSION_NAME = "VK_EXT_external_memory_dma_buf"
const EXT_EXTERNAL_MEMORY_DMA_BUF_SPEC_VERSION = 1
const EXT_external_memory_dma_buf = 1
const EXT_HDR_METADATA_EXTENSION_NAME = "VK_EXT_hdr_metadata"
const EXT_HDR_METADATA_SPEC_VERSION = 2
const EXT_hdr_metadata = 1
const EXT_SWAPCHAIN_COLOR_SPACE_EXTENSION_NAME = "VK_EXT_swapchain_colorspace"
const EXT_SWAPCHAIN_COLOR_SPACE_SPEC_VERSION = 4
const EXT_swapchain_colorspace = 1
const EXT_DEPTH_CLIP_ENABLE_EXTENSION_NAME = "VK_EXT_depth_clip_enable"
const EXT_DEPTH_CLIP_ENABLE_SPEC_VERSION = 1
const EXT_depth_clip_enable = 1
const EXT_CONSERVATIVE_RASTERIZATION_EXTENSION_NAME = "VK_EXT_conservative_rasterization"
const EXT_CONSERVATIVE_RASTERIZATION_SPEC_VERSION = 1
const EXT_conservative_rasterization = 1
const EXT_DISCARD_RECTANGLES_EXTENSION_NAME = "VK_EXT_discard_rectangles"
const EXT_DISCARD_RECTANGLES_SPEC_VERSION = 1
const EXT_discard_rectangles = 1
const NV_VIEWPORT_SWIZZLE_EXTENSION_NAME = "VK_NV_viewport_swizzle"
const NV_VIEWPORT_SWIZZLE_SPEC_VERSION = 1
const NV_viewport_swizzle = 1
const NVX_MULTIVIEW_PER_VIEW_ATTRIBUTES_EXTENSION_NAME = "VK_NVX_multiview_per_view_attributes"
const NVX_MULTIVIEW_PER_VIEW_ATTRIBUTES_SPEC_VERSION = 1
const NVX_multiview_per_view_attributes = 1
const NV_VIEWPORT_ARRAY2_EXTENSION_NAME = "VK_NV_viewport_array2"
const NV_VIEWPORT_ARRAY2_SPEC_VERSION = 1
const NV_viewport_array2 = 1
const NV_GEOMETRY_SHADER_PASSTHROUGH_EXTENSION_NAME = "VK_NV_geometry_shader_passthrough"
const NV_GEOMETRY_SHADER_PASSTHROUGH_SPEC_VERSION = 1
const NV_geometry_shader_passthrough = 1
const NV_SAMPLE_MASK_OVERRIDE_COVERAGE_EXTENSION_NAME = "VK_NV_sample_mask_override_coverage"
const NV_SAMPLE_MASK_OVERRIDE_COVERAGE_SPEC_VERSION = 1
const NV_sample_mask_override_coverage = 1
const GOOGLE_DISPLAY_TIMING_EXTENSION_NAME = "VK_GOOGLE_display_timing"
const GOOGLE_DISPLAY_TIMING_SPEC_VERSION = 1
const GOOGLE_display_timing = 1
const EXT_DISPLAY_CONTROL_EXTENSION_NAME = "VK_EXT_display_control"
const EXT_DISPLAY_CONTROL_SPEC_VERSION = 1
const EXT_display_control = 1
const EXT_DISPLAY_SURFACE_COUNTER_EXTENSION_NAME = "VK_EXT_display_surface_counter"
const EXT_DISPLAY_SURFACE_COUNTER_SPEC_VERSION = 1
const EXT_display_surface_counter = 1
const EXT_DIRECT_MODE_DISPLAY_EXTENSION_NAME = "VK_EXT_direct_mode_display"
const EXT_DIRECT_MODE_DISPLAY_SPEC_VERSION = 1
const EXT_direct_mode_display = 1
const NV_CLIP_SPACE_W_SCALING_EXTENSION_NAME = "VK_NV_clip_space_w_scaling"
const NV_CLIP_SPACE_W_SCALING_SPEC_VERSION = 1
const NV_clip_space_w_scaling = 1
const EXT_CONDITIONAL_RENDERING_EXTENSION_NAME = "VK_EXT_conditional_rendering"
const EXT_CONDITIONAL_RENDERING_SPEC_VERSION = 2
const EXT_conditional_rendering = 1
const EXT_ASTC_DECODE_MODE_EXTENSION_NAME = "VK_EXT_astc_decode_mode"
const EXT_ASTC_DECODE_MODE_SPEC_VERSION = 1
const EXT_astc_decode_mode = 1
const EXT_TEXTURE_COMPRESSION_ASTC_HDR_EXTENSION_NAME = "VK_EXT_texture_compression_astc_hdr"
const EXT_TEXTURE_COMPRESSION_ASTC_HDR_SPEC_VERSION = 1
const EXT_texture_compression_astc_hdr = 1
const EXT_SHADER_SUBGROUP_VOTE_EXTENSION_NAME = "VK_EXT_shader_subgroup_vote"
const EXT_SHADER_SUBGROUP_VOTE_SPEC_VERSION = 1
const EXT_shader_subgroup_vote = 1
const EXT_SHADER_SUBGROUP_BALLOT_EXTENSION_NAME = "VK_EXT_shader_subgroup_ballot"
const EXT_SHADER_SUBGROUP_BALLOT_SPEC_VERSION = 1
const EXT_shader_subgroup_ballot = 1
const EXT_VALIDATION_FLAGS_EXTENSION_NAME = "VK_EXT_validation_flags"
const EXT_VALIDATION_FLAGS_SPEC_VERSION = 2
const EXT_validation_flags = 1
const NV_EXTERNAL_MEMORY_EXTENSION_NAME = "VK_NV_external_memory"
const NV_EXTERNAL_MEMORY_SPEC_VERSION = 1
const NV_external_memory = 1
const NV_EXTERNAL_MEMORY_CAPABILITIES_EXTENSION_NAME = "VK_NV_external_memory_capabilities"
const NV_EXTERNAL_MEMORY_CAPABILITIES_SPEC_VERSION = 1
const NV_external_memory_capabilities = 1
const IMG_FORMAT_PVRTC_EXTENSION_NAME = "VK_IMG_format_pvrtc"
const IMG_FORMAT_PVRTC_SPEC_VERSION = 1
const IMG_format_pvrtc = 1
const NV_CORNER_SAMPLED_IMAGE_EXTENSION_NAME = "VK_NV_corner_sampled_image"
const NV_CORNER_SAMPLED_IMAGE_SPEC_VERSION = 2
const NV_corner_sampled_image = 1
const AMD_SHADER_IMAGE_LOAD_STORE_LOD_EXTENSION_NAME = "VK_AMD_shader_image_load_store_lod"
const AMD_SHADER_IMAGE_LOAD_STORE_LOD_SPEC_VERSION = 1
const AMD_shader_image_load_store_lod = 1
const AMD_SHADER_INFO_EXTENSION_NAME = "VK_AMD_shader_info"
const AMD_SHADER_INFO_SPEC_VERSION = 1
const AMD_shader_info = 1
const AMD_TEXTURE_GATHER_BIAS_LOD_EXTENSION_NAME = "VK_AMD_texture_gather_bias_lod"
const AMD_TEXTURE_GATHER_BIAS_LOD_SPEC_VERSION = 1
const AMD_texture_gather_bias_lod = 1
const AMD_SHADER_BALLOT_EXTENSION_NAME = "VK_AMD_shader_ballot"
const AMD_SHADER_BALLOT_SPEC_VERSION = 1
const AMD_shader_ballot = 1
const AMD_GPU_SHADER_HALF_FLOAT_EXTENSION_NAME = "VK_AMD_gpu_shader_half_float"
const AMD_GPU_SHADER_HALF_FLOAT_SPEC_VERSION = 2
const AMD_gpu_shader_half_float = 1
const AMD_NEGATIVE_VIEWPORT_HEIGHT_EXTENSION_NAME = "VK_AMD_negative_viewport_height"
const AMD_NEGATIVE_VIEWPORT_HEIGHT_SPEC_VERSION = 1
const AMD_negative_viewport_height = 1
const AMD_DRAW_INDIRECT_COUNT_EXTENSION_NAME = "VK_AMD_draw_indirect_count"
const AMD_DRAW_INDIRECT_COUNT_SPEC_VERSION = 2
const AMD_draw_indirect_count = 1
const NVX_IMAGE_VIEW_HANDLE_EXTENSION_NAME = "VK_NVX_image_view_handle"
const NVX_IMAGE_VIEW_HANDLE_SPEC_VERSION = 2
const NVX_image_view_handle = 1
const EXT_TRANSFORM_FEEDBACK_EXTENSION_NAME = "VK_EXT_transform_feedback"
const EXT_TRANSFORM_FEEDBACK_SPEC_VERSION = 1
const EXT_transform_feedback = 1
const NV_DEDICATED_ALLOCATION_EXTENSION_NAME = "VK_NV_dedicated_allocation"
const NV_DEDICATED_ALLOCATION_SPEC_VERSION = 1
const NV_dedicated_allocation = 1
const AMD_GCN_SHADER_EXTENSION_NAME = "VK_AMD_gcn_shader"
const AMD_GCN_SHADER_SPEC_VERSION = 1
const AMD_gcn_shader = 1
const EXT_DEBUG_MARKER_EXTENSION_NAME = "VK_EXT_debug_marker"
const EXT_DEBUG_MARKER_SPEC_VERSION = 4
const EXT_debug_marker = 1
const AMD_SHADER_EXPLICIT_VERTEX_PARAMETER_EXTENSION_NAME = "VK_AMD_shader_explicit_vertex_parameter"
const AMD_SHADER_EXPLICIT_VERTEX_PARAMETER_SPEC_VERSION = 1
const AMD_shader_explicit_vertex_parameter = 1
const AMD_SHADER_TRINARY_MINMAX_EXTENSION_NAME = "VK_AMD_shader_trinary_minmax"
const AMD_SHADER_TRINARY_MINMAX_SPEC_VERSION = 1
const AMD_shader_trinary_minmax = 1
const AMD_RASTERIZATION_ORDER_EXTENSION_NAME = "VK_AMD_rasterization_order"
const AMD_RASTERIZATION_ORDER_SPEC_VERSION = 1
const AMD_rasterization_order = 1
const IMG_FILTER_CUBIC_EXTENSION_NAME = "VK_IMG_filter_cubic"
const IMG_FILTER_CUBIC_SPEC_VERSION = 1
const IMG_filter_cubic = 1
const EXT_DEPTH_RANGE_UNRESTRICTED_EXTENSION_NAME = "VK_EXT_depth_range_unrestricted"
const EXT_DEPTH_RANGE_UNRESTRICTED_SPEC_VERSION = 1
const EXT_depth_range_unrestricted = 1
const NV_GLSL_SHADER_EXTENSION_NAME = "VK_NV_glsl_shader"
const NV_GLSL_SHADER_SPEC_VERSION = 1
const NV_glsl_shader = 1
const EXT_DEBUG_REPORT_EXTENSION_NAME = "VK_EXT_debug_report"
const EXT_DEBUG_REPORT_SPEC_VERSION = 9
const EXT_debug_report = 1
const KHR_SHADER_NON_SEMANTIC_INFO_EXTENSION_NAME = "VK_KHR_shader_non_semantic_info"
const KHR_SHADER_NON_SEMANTIC_INFO_SPEC_VERSION = 1
const KHR_shader_non_semantic_info = 1
const KHR_PIPELINE_EXECUTABLE_PROPERTIES_EXTENSION_NAME = "VK_KHR_pipeline_executable_properties"
const KHR_PIPELINE_EXECUTABLE_PROPERTIES_SPEC_VERSION = 1
const KHR_pipeline_executable_properties = 1
const KHR_BUFFER_DEVICE_ADDRESS_EXTENSION_NAME = "VK_KHR_buffer_device_address"
const KHR_BUFFER_DEVICE_ADDRESS_SPEC_VERSION = 1
const KHR_buffer_device_address = 1
const KHR_UNIFORM_BUFFER_STANDARD_LAYOUT_EXTENSION_NAME = "VK_KHR_uniform_buffer_standard_layout"
const KHR_UNIFORM_BUFFER_STANDARD_LAYOUT_SPEC_VERSION = 1
const KHR_uniform_buffer_standard_layout = 1
const KHR_SEPARATE_DEPTH_STENCIL_LAYOUTS_EXTENSION_NAME = "VK_KHR_separate_depth_stencil_layouts"
const KHR_SEPARATE_DEPTH_STENCIL_LAYOUTS_SPEC_VERSION = 1
const KHR_separate_depth_stencil_layouts = 1
const KHR_SURFACE_PROTECTED_CAPABILITIES_EXTENSION_NAME = "VK_KHR_surface_protected_capabilities"
const KHR_SURFACE_PROTECTED_CAPABILITIES_SPEC_VERSION = 1
const KHR_surface_protected_capabilities = 1
const KHR_SPIRV_1_4_EXTENSION_NAME = "VK_KHR_spirv_1_4"
const KHR_SPIRV_1_4_SPEC_VERSION = 1
const KHR_spirv_1_4 = 1
const KHR_VULKAN_MEMORY_MODEL_EXTENSION_NAME = "VK_KHR_vulkan_memory_model"
const KHR_VULKAN_MEMORY_MODEL_SPEC_VERSION = 3
const KHR_vulkan_memory_model = 1
const KHR_TIMELINE_SEMAPHORE_EXTENSION_NAME = "VK_KHR_timeline_semaphore"
const KHR_TIMELINE_SEMAPHORE_SPEC_VERSION = 2
const KHR_timeline_semaphore = 1
const KHR_SWAPCHAIN_MUTABLE_FORMAT_EXTENSION_NAME = "VK_KHR_swapchain_mutable_format"
const KHR_SWAPCHAIN_MUTABLE_FORMAT_SPEC_VERSION = 1
const KHR_swapchain_mutable_format = 1
const KHR_DEPTH_STENCIL_RESOLVE_EXTENSION_NAME = "VK_KHR_depth_stencil_resolve"
const KHR_DEPTH_STENCIL_RESOLVE_SPEC_VERSION = 1
const KHR_depth_stencil_resolve = 1
const KHR_SHADER_FLOAT_CONTROLS_EXTENSION_NAME = "VK_KHR_shader_float_controls"
const KHR_SHADER_FLOAT_CONTROLS_SPEC_VERSION = 4
const KHR_shader_float_controls = 1
const KHR_DRIVER_PROPERTIES_EXTENSION_NAME = "VK_KHR_driver_properties"
const KHR_DRIVER_PROPERTIES_SPEC_VERSION = 1
const KHR_driver_properties = 1
const KHR_SHADER_CLOCK_EXTENSION_NAME = "VK_KHR_shader_clock"
const KHR_SHADER_CLOCK_SPEC_VERSION = 1
const KHR_shader_clock = 1
const KHR_SHADER_ATOMIC_INT64_EXTENSION_NAME = "VK_KHR_shader_atomic_int64"
const KHR_SHADER_ATOMIC_INT64_SPEC_VERSION = 1
const KHR_shader_atomic_int64 = 1
const KHR_8BIT_STORAGE_EXTENSION_NAME = "VK_KHR_8bit_storage"
const KHR_8BIT_STORAGE_SPEC_VERSION = 1
const KHR_8bit_storage = 1
const KHR_SHADER_SUBGROUP_EXTENDED_TYPES_EXTENSION_NAME = "VK_KHR_shader_subgroup_extended_types"
const KHR_SHADER_SUBGROUP_EXTENDED_TYPES_SPEC_VERSION = 1
const KHR_shader_subgroup_extended_types = 1
const KHR_DRAW_INDIRECT_COUNT_EXTENSION_NAME = "VK_KHR_draw_indirect_count"
const KHR_DRAW_INDIRECT_COUNT_SPEC_VERSION = 1
const KHR_draw_indirect_count = 1
const KHR_MAINTENANCE3_EXTENSION_NAME = "VK_KHR_maintenance3"
const KHR_MAINTENANCE3_SPEC_VERSION = 1
const KHR_maintenance3 = 1
const KHR_BIND_MEMORY_2_EXTENSION_NAME = "VK_KHR_bind_memory2"
const KHR_BIND_MEMORY_2_SPEC_VERSION = 1
const KHR_bind_memory2 = 1
const KHR_SAMPLER_YCBCR_CONVERSION_EXTENSION_NAME = "VK_KHR_sampler_ycbcr_conversion"
const KHR_SAMPLER_YCBCR_CONVERSION_SPEC_VERSION = 14
const KHR_sampler_ycbcr_conversion = 1
const KHR_IMAGE_FORMAT_LIST_EXTENSION_NAME = "VK_KHR_image_format_list"
const KHR_IMAGE_FORMAT_LIST_SPEC_VERSION = 1
const KHR_image_format_list = 1
const KHR_GET_MEMORY_REQUIREMENTS_2_EXTENSION_NAME = "VK_KHR_get_memory_requirements2"
const KHR_GET_MEMORY_REQUIREMENTS_2_SPEC_VERSION = 1
const KHR_get_memory_requirements2 = 1
const KHR_RELAXED_BLOCK_LAYOUT_EXTENSION_NAME = "VK_KHR_relaxed_block_layout"
const KHR_RELAXED_BLOCK_LAYOUT_SPEC_VERSION = 1
const KHR_relaxed_block_layout = 1
const KHR_STORAGE_BUFFER_STORAGE_CLASS_EXTENSION_NAME = "VK_KHR_storage_buffer_storage_class"
const KHR_STORAGE_BUFFER_STORAGE_CLASS_SPEC_VERSION = 1
const KHR_storage_buffer_storage_class = 1
const KHR_DEDICATED_ALLOCATION_EXTENSION_NAME = "VK_KHR_dedicated_allocation"
const KHR_DEDICATED_ALLOCATION_SPEC_VERSION = 3
const KHR_dedicated_allocation = 1
const KHR_GET_DISPLAY_PROPERTIES_2_EXTENSION_NAME = "VK_KHR_get_display_properties2"
const KHR_GET_DISPLAY_PROPERTIES_2_SPEC_VERSION = 1
const KHR_get_display_properties2 = 1
const KHR_VARIABLE_POINTERS_EXTENSION_NAME = "VK_KHR_variable_pointers"
const KHR_VARIABLE_POINTERS_SPEC_VERSION = 1
const KHR_variable_pointers = 1
const KHR_GET_SURFACE_CAPABILITIES_2_EXTENSION_NAME = "VK_KHR_get_surface_capabilities2"
const KHR_GET_SURFACE_CAPABILITIES_2_SPEC_VERSION = 1
const KHR_get_surface_capabilities2 = 1
const KHR_MAINTENANCE2_EXTENSION_NAME = "VK_KHR_maintenance2"
const KHR_MAINTENANCE2_SPEC_VERSION = 1
const KHR_maintenance2 = 1
const KHR_PERFORMANCE_QUERY_EXTENSION_NAME = "VK_KHR_performance_query"
const KHR_PERFORMANCE_QUERY_SPEC_VERSION = 1
const KHR_performance_query = 1
const KHR_EXTERNAL_FENCE_FD_EXTENSION_NAME = "VK_KHR_external_fence_fd"
const KHR_EXTERNAL_FENCE_FD_SPEC_VERSION = 1
const KHR_external_fence_fd = 1
const KHR_EXTERNAL_FENCE_EXTENSION_NAME = "VK_KHR_external_fence"
const KHR_EXTERNAL_FENCE_SPEC_VERSION = 1
const KHR_external_fence = 1
const KHR_EXTERNAL_FENCE_CAPABILITIES_EXTENSION_NAME = "VK_KHR_external_fence_capabilities"
const KHR_EXTERNAL_FENCE_CAPABILITIES_SPEC_VERSION = 1
const KHR_external_fence_capabilities = 1
const KHR_SHARED_PRESENTABLE_IMAGE_EXTENSION_NAME = "VK_KHR_shared_presentable_image"
const KHR_SHARED_PRESENTABLE_IMAGE_SPEC_VERSION = 1
const KHR_shared_presentable_image = 1
const KHR_CREATE_RENDERPASS_2_EXTENSION_NAME = "VK_KHR_create_renderpass2"
const KHR_CREATE_RENDERPASS_2_SPEC_VERSION = 1
const KHR_create_renderpass2 = 1
const KHR_IMAGELESS_FRAMEBUFFER_EXTENSION_NAME = "VK_KHR_imageless_framebuffer"
const KHR_IMAGELESS_FRAMEBUFFER_SPEC_VERSION = 1
const KHR_imageless_framebuffer = 1
const KHR_DESCRIPTOR_UPDATE_TEMPLATE_EXTENSION_NAME = "VK_KHR_descriptor_update_template"
const KHR_DESCRIPTOR_UPDATE_TEMPLATE_SPEC_VERSION = 1
const KHR_descriptor_update_template = 1
const KHR_INCREMENTAL_PRESENT_EXTENSION_NAME = "VK_KHR_incremental_present"
const KHR_INCREMENTAL_PRESENT_SPEC_VERSION = 1
const KHR_incremental_present = 1
const KHR_16BIT_STORAGE_EXTENSION_NAME = "VK_KHR_16bit_storage"
const KHR_16BIT_STORAGE_SPEC_VERSION = 1
const KHR_16bit_storage = 1
const KHR_SHADER_FLOAT16_INT8_EXTENSION_NAME = "VK_KHR_shader_float16_int8"
const KHR_SHADER_FLOAT16_INT8_SPEC_VERSION = 1
const KHR_shader_float16_int8 = 1
const KHR_PUSH_DESCRIPTOR_EXTENSION_NAME = "VK_KHR_push_descriptor"
const KHR_PUSH_DESCRIPTOR_SPEC_VERSION = 2
const KHR_push_descriptor = 1
const KHR_EXTERNAL_SEMAPHORE_FD_EXTENSION_NAME = "VK_KHR_external_semaphore_fd"
const KHR_EXTERNAL_SEMAPHORE_FD_SPEC_VERSION = 1
const KHR_external_semaphore_fd = 1
const KHR_EXTERNAL_SEMAPHORE_EXTENSION_NAME = "VK_KHR_external_semaphore"
const KHR_EXTERNAL_SEMAPHORE_SPEC_VERSION = 1
const KHR_external_semaphore = 1
const KHR_EXTERNAL_SEMAPHORE_CAPABILITIES_EXTENSION_NAME = "VK_KHR_external_semaphore_capabilities"
const KHR_EXTERNAL_SEMAPHORE_CAPABILITIES_SPEC_VERSION = 1
const KHR_external_semaphore_capabilities = 1
const KHR_EXTERNAL_MEMORY_FD_EXTENSION_NAME = "VK_KHR_external_memory_fd"
const KHR_EXTERNAL_MEMORY_FD_SPEC_VERSION = 1
const KHR_external_memory_fd = 1
const KHR_EXTERNAL_MEMORY_EXTENSION_NAME = "VK_KHR_external_memory"
const KHR_EXTERNAL_MEMORY_SPEC_VERSION = 1
const KHR_external_memory = 1
const KHR_EXTERNAL_MEMORY_CAPABILITIES_EXTENSION_NAME = "VK_KHR_external_memory_capabilities"
const KHR_EXTERNAL_MEMORY_CAPABILITIES_SPEC_VERSION = 1
const KHR_external_memory_capabilities = 1
const KHR_DEVICE_GROUP_CREATION_EXTENSION_NAME = "VK_KHR_device_group_creation"
const KHR_DEVICE_GROUP_CREATION_SPEC_VERSION = 1
const KHR_device_group_creation = 1
const KHR_MAINTENANCE1_EXTENSION_NAME = "VK_KHR_maintenance1"
const KHR_MAINTENANCE1_SPEC_VERSION = 2
const KHR_maintenance1 = 1
const KHR_SHADER_DRAW_PARAMETERS_EXTENSION_NAME = "VK_KHR_shader_draw_parameters"
const KHR_SHADER_DRAW_PARAMETERS_SPEC_VERSION = 1
const KHR_shader_draw_parameters = 1
const KHR_DEVICE_GROUP_EXTENSION_NAME = "VK_KHR_device_group"
const KHR_DEVICE_GROUP_SPEC_VERSION = 4
const KHR_device_group = 1
const KHR_GET_PHYSICAL_DEVICE_PROPERTIES_2_EXTENSION_NAME = "VK_KHR_get_physical_device_properties2"
const KHR_GET_PHYSICAL_DEVICE_PROPERTIES_2_SPEC_VERSION = 2
const KHR_get_physical_device_properties2 = 1
const KHR_MULTIVIEW_EXTENSION_NAME = "VK_KHR_multiview"
const KHR_MULTIVIEW_SPEC_VERSION = 1
const KHR_multiview = 1
const KHR_SAMPLER_MIRROR_CLAMP_TO_EDGE_EXTENSION_NAME = "VK_KHR_sampler_mirror_clamp_to_edge"
const KHR_SAMPLER_MIRROR_CLAMP_TO_EDGE_SPEC_VERSION = 3
const KHR_sampler_mirror_clamp_to_edge = 1
const KHR_DISPLAY_SWAPCHAIN_EXTENSION_NAME = "VK_KHR_display_swapchain"
const KHR_DISPLAY_SWAPCHAIN_SPEC_VERSION = 10
const KHR_display_swapchain = 1
const KHR_DISPLAY_EXTENSION_NAME = "VK_KHR_display"
const KHR_DISPLAY_SPEC_VERSION = 23
const KHR_display = 1
const KHR_SWAPCHAIN_EXTENSION_NAME = "VK_KHR_swapchain"
const KHR_SWAPCHAIN_SPEC_VERSION = 70
const KHR_swapchain = 1
const KHR_SURFACE_EXTENSION_NAME = "VK_KHR_surface"
const KHR_SURFACE_SPEC_VERSION = 25
const KHR_surface = 1
const MAX_DRIVER_INFO_SIZE = 256
const MAX_DRIVER_INFO_SIZE_KHR = MAX_DRIVER_INFO_SIZE
const MAX_DRIVER_NAME_SIZE = 256
const MAX_DRIVER_NAME_SIZE_KHR = MAX_DRIVER_NAME_SIZE
const VERSION_1_2 = 1
const QUEUE_FAMILY_EXTERNAL = ~(UInt32(0)) - 1
const QUEUE_FAMILY_EXTERNAL_KHR = QUEUE_FAMILY_EXTERNAL
const LUID_SIZE = 8
const LUID_SIZE_KHR = LUID_SIZE
const MAX_DEVICE_GROUP_SIZE = 32
const MAX_DEVICE_GROUP_SIZE_KHR = MAX_DEVICE_GROUP_SIZE
const VERSION_1_1 = 1
const MAX_DESCRIPTION_SIZE = 256
const MAX_EXTENSION_NAME_SIZE = 256
const UUID_SIZE = 16
const MAX_PHYSICAL_DEVICE_NAME_SIZE = 256
const MAX_MEMORY_HEAPS = 16
const MAX_MEMORY_TYPES = 32
const WHOLE_SIZE = ~(UInt64(0))
const TRUE = 1
const SUBPASS_EXTERNAL = ~(UInt32(0))
const REMAINING_MIP_LEVELS = ~(UInt32(0))
const REMAINING_ARRAY_LAYERS = ~(UInt32(0))
const QUEUE_FAMILY_IGNORED = ~(UInt32(0))
const LOD_CLAMP_NONE = Float32(1000.0)
const FALSE = 0
const ATTACHMENT_UNUSED = ~(UInt32(0))
const NULL_HANDLE = 0
const HEADER_VERSION = 151
const VERSION_1_0 = 1
const VULKAN_CORE_H_ = 1
const VULKAN_H_ = 1
function Extent2D(width, height)
    vk = VkExtent2D(width, height)

    Extent2D(width, height, vk)
end

function Extent3D(width, height, depth)
    vk = VkExtent3D(width, height, depth)

    Extent3D(width, height, depth, vk)
end

function Offset2D(x, y)
    vk = VkOffset2D(x, y)

    Offset2D(x, y, vk)
end

function Offset3D(x, y, z)
    vk = VkOffset3D(x, y, z)

    Offset3D(x, y, z, vk)
end

function BufferMemoryBarrier(src_access_mask, dst_access_mask, src_queue_family_index, dst_queue_family_index, buffer, offset, size; next = C_NULL)
    sType = VK_STRUCTURE_TYPE_BUFFER_MEMORY_BARRIER    # VulkanGen.ReplaceStructureType

    pNext = next == C_NULL ? C_NULL : (next_ref = Ref(next.vk); preserve(next_ref, next); unsafe_pointer(next_ref))    # VulkanGen.GeneratePointers
    vk = VkBufferMemoryBarrier(sType, pNext, src_access_mask, dst_access_mask, src_queue_family_index, dst_queue_family_index, buffer, offset, size)

    BufferMemoryBarrier(src_access_mask, dst_access_mask, src_queue_family_index, dst_queue_family_index, buffer, offset, size, vk)
end

function DispatchIndirectCommand(x, y, z)
    vk = VkDispatchIndirectCommand(x, y, z)

    DispatchIndirectCommand(x, y, z, vk)
end

function DrawIndexedIndirectCommand(index_count, instance_count, first_index, vertex_offset, first_instance)
    vk = VkDrawIndexedIndirectCommand(index_count, instance_count, first_index, vertex_offset, first_instance)

    DrawIndexedIndirectCommand(index_count, instance_count, first_index, vertex_offset, first_instance, vk)
end

function DrawIndirectCommand(vertex_count, instance_count, first_vertex, first_instance)
    vk = VkDrawIndirectCommand(vertex_count, instance_count, first_vertex, first_instance)

    DrawIndirectCommand(vertex_count, instance_count, first_vertex, first_instance, vk)
end

function ImageSubresourceRange(aspect_mask, base_mip_level, level_count, base_array_layer, layer_count)
    vk = VkImageSubresourceRange(aspect_mask, base_mip_level, level_count, base_array_layer, layer_count)

    ImageSubresourceRange(aspect_mask, base_mip_level, level_count, base_array_layer, layer_count, vk)
end

function ImageMemoryBarrier(src_access_mask, dst_access_mask, old_layout, new_layout, src_queue_family_index, dst_queue_family_index, image, subresource_range; next = C_NULL)
    sType = VK_STRUCTURE_TYPE_IMAGE_MEMORY_BARRIER    # VulkanGen.ReplaceStructureType

    pNext = next == C_NULL ? C_NULL : (next_ref = Ref(next.vk); preserve(next_ref, next); unsafe_pointer(next_ref))    # VulkanGen.GeneratePointers
    vk = VkImageMemoryBarrier(sType, pNext, src_access_mask, dst_access_mask, old_layout, new_layout, src_queue_family_index, dst_queue_family_index, image, subresource_range)

    ImageMemoryBarrier(src_access_mask, dst_access_mask, old_layout, new_layout, src_queue_family_index, dst_queue_family_index, image, subresource_range, vk)
end

function MemoryBarrier(; src_access_mask = nothing, dst_access_mask = nothing, next = C_NULL)
    sType = VK_STRUCTURE_TYPE_MEMORY_BARRIER    # VulkanGen.ReplaceStructureType

    pNext = next == C_NULL ? C_NULL : (next_ref = Ref(next.vk); preserve(next_ref, next); unsafe_pointer(next_ref))    # VulkanGen.GeneratePointers
    srcAccessMask = isnothing(src_access_mask) ? 0 : src_access_mask    # VulkanGen.AddDefaults
    dstAccessMask = isnothing(dst_access_mask) ? 0 : dst_access_mask    # VulkanGen.AddDefaults

    vk = VkMemoryBarrier(sType, pNext, srcAccessMask, dstAccessMask)

    MemoryBarrier(src_access_mask, dst_access_mask, vk)
end

function AllocationCallbacks(allocation, reallocation, free; internal_free = nothing, user_data = nothing, internal_allocation = nothing)
    pUserData = isnothing(user_data) ? C_NULL : user_data    # VulkanGen.AddDefaults
    pUserData = pUserData == C_NULL ? C_NULL : (pUserData_ref = Ref(pUserData.vk);
                                                preserve(pUserData_ref, user_data);
                                                unsafe_pointer(pUserData_ref))    # VulkanGen.GeneratePointers
    pfnAllocation = allocation == C_NULL ? C_NULL : (allocation_ref = Ref(allocation.vk);
                                                     preserve(allocation_ref, allocation);
                                                     unsafe_pointer(allocation_ref))    # VulkanGen.GeneratePointers
    pfnReallocation = reallocation == C_NULL ? C_NULL : (reallocation_ref = Ref(reallocation.vk);
                                                         preserve(reallocation_ref, reallocation);
                                                         unsafe_pointer(reallocation_ref))    # VulkanGen.GeneratePointers
    pfnFree = free == C_NULL ? C_NULL : (free_ref = Ref(free.vk); preserve(free_ref, free); unsafe_pointer(free_ref))    # VulkanGen.GeneratePointers
    pfnInternalAllocation = isnothing(internal_allocation) ? C_NULL : internal_allocation    # VulkanGen.AddDefaults

    pfnInternalAllocation = pfnInternalAllocation == C_NULL ? C_NULL : (pfnInternalAllocation_ref = Ref(pfnInternalAllocation.vk);
                                                                        preserve(pfnInternalAllocation_ref, internal_allocation);
                                                                        unsafe_pointer(pfnInternalAllocation_ref))    # VulkanGen.GeneratePointers
    pfnInternalFree = isnothing(internal_free) ? C_NULL : internal_free    # VulkanGen.AddDefaults
    pfnInternalFree = pfnInternalFree == C_NULL ? C_NULL : (pfnInternalFree_ref = Ref(pfnInternalFree.vk);
                                                            preserve(pfnInternalFree_ref, internal_free);
                                                            unsafe_pointer(pfnInternalFree_ref))    # VulkanGen.GeneratePointers
    vk = VkAllocationCallbacks(pUserData, pfnAllocation, pfnReallocation, pfnFree, pfnInternalAllocation, pfnInternalFree)

    AllocationCallbacks(user_data, allocation, reallocation, free, internal_allocation, internal_free, vk)
end

function ApplicationInfo(application_version, engine_version, api_version; application_name = nothing, engine_name = nothing, next = C_NULL)
    sType = VK_STRUCTURE_TYPE_APPLICATION_INFO    # VulkanGen.ReplaceStructureType

    pNext = next == C_NULL ? C_NULL : (next_ref = Ref(next.vk); preserve(next_ref, next); unsafe_pointer(next_ref))    # VulkanGen.GeneratePointers
    pApplicationName = isnothing(application_name) ? C_NULL : application_name    # VulkanGen.AddDefaults
    pApplicationName = pApplicationName == C_NULL ? C_NULL : pointer(pApplicationName)    # VulkanGen.GeneratePointers
    applicationVersion = convert_vk_back(UInt32, application_version)    # VulkanGen.TranslateVkTypesBack
    pEngineName = isnothing(engine_name) ? C_NULL : engine_name    # VulkanGen.AddDefaults

    pEngineName = pEngineName == C_NULL ? C_NULL : pointer(pEngineName)    # VulkanGen.GeneratePointers
    engineVersion = convert_vk_back(UInt32, engine_version)    # VulkanGen.TranslateVkTypesBack
    apiVersion = convert_vk_back(UInt32, api_version)    # VulkanGen.TranslateVkTypesBack
    vk = VkApplicationInfo(sType, pNext, pApplicationName, applicationVersion, pEngineName, engineVersion, apiVersion)

    ApplicationInfo(application_name, application_version, engine_name, engine_version, api_version, vk)
end

function InstanceCreateInfo(enabled_layer_names, enabled_extension_names; application_info = nothing, next = C_NULL, flags = 0)
    sType = VK_STRUCTURE_TYPE_INSTANCE_CREATE_INFO    # VulkanGen.ReplaceStructureType

    pNext = next == C_NULL ? C_NULL : (next_ref = Ref(next.vk); preserve(next_ref, next); unsafe_pointer(next_ref))    # VulkanGen.GeneratePointers
    pApplicationInfo = isnothing(application_info) ? C_NULL : application_info    # VulkanGen.AddDefaults

    pApplicationInfo = pApplicationInfo == C_NULL ? C_NULL : (pApplicationInfo_ref = Ref(pApplicationInfo.vk);
                                                              preserve(pApplicationInfo_ref, application_info);
                                                              unsafe_pointer(pApplicationInfo_ref))    # VulkanGen.GeneratePointers
    enabledLayerCount = pointer_length(enabled_layer_names)    # VulkanGen.ComputeLengthArgument
    ppEnabledLayerNames = isempty(enabled_layer_names) ? C_NULL : pointer(pointer.(enabled_layer_names))    # VulkanGen.GeneratePointers
    enabledExtensionCount = pointer_length(enabled_extension_names)    # VulkanGen.ComputeLengthArgument
    ppEnabledExtensionNames = isempty(enabled_extension_names) ? C_NULL : pointer(pointer.(enabled_extension_names))    # VulkanGen.GeneratePointers
    vk = VkInstanceCreateInfo(sType, pNext, flags, pApplicationInfo, enabledLayerCount, ppEnabledLayerNames, enabledExtensionCount, ppEnabledExtensionNames)

    InstanceCreateInfo(application_info, enabled_layer_names, enabled_extension_names, vk)
end

function MemoryHeap(size; flags = 0)
    vk = VkMemoryHeap(size, flags)

    MemoryHeap(size, vk)
end

function MemoryType(heap_index; property_flags = nothing)
    propertyFlags = isnothing(property_flags) ? 0 : property_flags    # VulkanGen.AddDefaults

    propertyFlags = propertyFlags == C_NULL ? C_NULL : (propertyFlags_ref = Ref(propertyFlags.vk);
                                                        preserve(propertyFlags_ref, property_flags);
                                                        unsafe_pointer(propertyFlags_ref))    # VulkanGen.GeneratePointers
    vk = VkMemoryType(propertyFlags, heap_index)

    MemoryType(property_flags, heap_index, vk)
end

function PhysicalDeviceFeatures(robust_buffer_access, full_draw_index_uint_32, image_cube_array, independent_blend, geometry_shader, tessellation_shader, sample_rate_shading, dual_src_blend, logic_op,
                                multi_draw_indirect, draw_indirect_first_instance, depth_clamp, depth_bias_clamp, fill_mode_non_solid, depth_bounds, wide_lines, large_points, alpha_to_one,
                                multi_viewport, sampler_anisotropy, texture_compression_etc_2, texture_compression_astc_ldr, texture_compression_bc, occlusion_query_precise, pipeline_statistics_query,
                                vertex_pipeline_stores_and_atomics, fragment_stores_and_atomics, shader_tessellation_and_geometry_point_size, shader_image_gather_extended,
                                shader_storage_image_extended_formats, shader_storage_image_multisample, shader_storage_image_read_without_format, shader_storage_image_write_without_format,
                                shader_uniform_buffer_array_dynamic_indexing, shader_sampled_image_array_dynamic_indexing, shader_storage_buffer_array_dynamic_indexing,
                                shader_storage_image_array_dynamic_indexing, shader_clip_distance, shader_cull_distance, shader_float_64, shader_int_64, shader_int_16, shader_resource_residency,
                                shader_resource_min_lod, sparse_binding, sparse_residency_buffer, sparse_residency_image_2_d, sparse_residency_image_3_d, sparse_residency_2_samples,
                                sparse_residency_4_samples, sparse_residency_8_samples, sparse_residency_16_samples, sparse_residency_aliased, variable_multisample_rate, inherited_queries)
    pipelineStatisticsQuery = pipeline_statistics_query == C_NULL ? C_NULL : (pipeline_statistics_query_ref = Ref(pipeline_statistics_query.vk);
                                                                              preserve(pipeline_statistics_query_ref, pipeline_statistics_query);
                                                                              unsafe_pointer(pipeline_statistics_query_ref))    # VulkanGen.GeneratePointers
    vk = VkPhysicalDeviceFeatures(robust_buffer_access, full_draw_index_uint_32, image_cube_array, independent_blend, geometry_shader, tessellation_shader, sample_rate_shading, dual_src_blend,
                                  logic_op, multi_draw_indirect, draw_indirect_first_instance, depth_clamp, depth_bias_clamp, fill_mode_non_solid, depth_bounds, wide_lines, large_points, alpha_to_one,
                                  multi_viewport, sampler_anisotropy, texture_compression_etc_2, texture_compression_astc_ldr, texture_compression_bc, occlusion_query_precise, pipelineStatisticsQuery,
                                  vertex_pipeline_stores_and_atomics, fragment_stores_and_atomics, shader_tessellation_and_geometry_point_size, shader_image_gather_extended,
                                  shader_storage_image_extended_formats, shader_storage_image_multisample, shader_storage_image_read_without_format, shader_storage_image_write_without_format,
                                  shader_uniform_buffer_array_dynamic_indexing, shader_sampled_image_array_dynamic_indexing, shader_storage_buffer_array_dynamic_indexing,
                                  shader_storage_image_array_dynamic_indexing, shader_clip_distance, shader_cull_distance, shader_float_64, shader_int_64, shader_int_16, shader_resource_residency,
                                  shader_resource_min_lod, sparse_binding, sparse_residency_buffer, sparse_residency_image_2_d, sparse_residency_image_3_d, sparse_residency_2_samples,
                                  sparse_residency_4_samples, sparse_residency_8_samples, sparse_residency_16_samples, sparse_residency_aliased, variable_multisample_rate, inherited_queries)

    PhysicalDeviceFeatures(robust_buffer_access, full_draw_index_uint_32, image_cube_array, independent_blend, geometry_shader, tessellation_shader, sample_rate_shading, dual_src_blend, logic_op,
                           multi_draw_indirect, draw_indirect_first_instance, depth_clamp, depth_bias_clamp, fill_mode_non_solid, depth_bounds, wide_lines, large_points, alpha_to_one, multi_viewport,
                           sampler_anisotropy, texture_compression_etc_2, texture_compression_astc_ldr, texture_compression_bc, occlusion_query_precise, pipeline_statistics_query,
                           vertex_pipeline_stores_and_atomics, fragment_stores_and_atomics, shader_tessellation_and_geometry_point_size, shader_image_gather_extended,
                           shader_storage_image_extended_formats, shader_storage_image_multisample, shader_storage_image_read_without_format, shader_storage_image_write_without_format,
                           shader_uniform_buffer_array_dynamic_indexing, shader_sampled_image_array_dynamic_indexing, shader_storage_buffer_array_dynamic_indexing,
                           shader_storage_image_array_dynamic_indexing, shader_clip_distance, shader_cull_distance, shader_float_64, shader_int_64, shader_int_16, shader_resource_residency,
                           shader_resource_min_lod, sparse_binding, sparse_residency_buffer, sparse_residency_image_2_d, sparse_residency_image_3_d, sparse_residency_2_samples,
                           sparse_residency_4_samples, sparse_residency_8_samples, sparse_residency_16_samples, sparse_residency_aliased, variable_multisample_rate, inherited_queries, vk)
end

function DeviceQueueCreateInfo(queue_family_index, queue_priorities; next = C_NULL, flags = 0)
    sType = VK_STRUCTURE_TYPE_DEVICE_QUEUE_CREATE_INFO    # VulkanGen.ReplaceStructureType

    pNext = next == C_NULL ? C_NULL : (next_ref = Ref(next.vk); preserve(next_ref, next); unsafe_pointer(next_ref))    # VulkanGen.GeneratePointers
    queueCount = pointer_length(queue_priorities)    # VulkanGen.ComputeLengthArgument
    pQueuePriorities = queue_priorities == C_NULL ? C_NULL : (queue_priorities_ref = Ref(queue_priorities.vk);
                                                              preserve(queue_priorities_ref, queue_priorities);
                                                              unsafe_pointer(queue_priorities_ref))    # VulkanGen.GeneratePointers
    vk = VkDeviceQueueCreateInfo(sType, pNext, flags, queue_family_index, queueCount, pQueuePriorities)

    DeviceQueueCreateInfo(queue_family_index, queue_priorities, vk)
end

function DeviceCreateInfo(queue_create_infos, enabled_layer_names, enabled_extension_names; enabled_features = nothing, next = C_NULL, flags = 0)
    sType = VK_STRUCTURE_TYPE_DEVICE_CREATE_INFO    # VulkanGen.ReplaceStructureType

    pNext = next == C_NULL ? C_NULL : (next_ref = Ref(next.vk); preserve(next_ref, next); unsafe_pointer(next_ref))    # VulkanGen.GeneratePointers
    queueCreateInfoCount = pointer_length(queue_create_infos)    # VulkanGen.ComputeLengthArgument
    pQueueCreateInfos = queue_create_infos == C_NULL ? C_NULL : (queue_create_infos_ref = Ref(queue_create_infos.vk);
                                                                 preserve(queue_create_infos_ref, queue_create_infos);
                                                                 unsafe_pointer(queue_create_infos_ref))    # VulkanGen.GeneratePointers
    enabledLayerCount = pointer_length(enabled_layer_names)    # VulkanGen.ComputeLengthArgument
    ppEnabledLayerNames = isempty(enabled_layer_names) ? C_NULL : pointer(pointer.(enabled_layer_names))    # VulkanGen.GeneratePointers
    enabledExtensionCount = pointer_length(enabled_extension_names)    # VulkanGen.ComputeLengthArgument
    ppEnabledExtensionNames = isempty(enabled_extension_names) ? C_NULL : pointer(pointer.(enabled_extension_names))    # VulkanGen.GeneratePointers
    pEnabledFeatures = isnothing(enabled_features) ? C_NULL : enabled_features    # VulkanGen.AddDefaults

    pEnabledFeatures = pEnabledFeatures == C_NULL ? C_NULL : (pEnabledFeatures_ref = Ref(pEnabledFeatures.vk);
                                                              preserve(pEnabledFeatures_ref, enabled_features);
                                                              unsafe_pointer(pEnabledFeatures_ref))    # VulkanGen.GeneratePointers
    vk = VkDeviceCreateInfo(sType, pNext, flags, queueCreateInfoCount, pQueueCreateInfos, enabledLayerCount, ppEnabledLayerNames, enabledExtensionCount, ppEnabledExtensionNames, pEnabledFeatures)

    DeviceCreateInfo(queue_create_infos, enabled_layer_names, enabled_extension_names, enabled_features, vk)
end

function SubmitInfo(wait_semaphores, wait_dst_stage_mask, command_buffers, signal_semaphores; next = C_NULL)
    sType = VK_STRUCTURE_TYPE_SUBMIT_INFO    # VulkanGen.ReplaceStructureType

    pNext = next == C_NULL ? C_NULL : (next_ref = Ref(next.vk); preserve(next_ref, next); unsafe_pointer(next_ref))    # VulkanGen.GeneratePointers
    waitSemaphoreCount = pointer_length(wait_semaphores)    # VulkanGen.ComputeLengthArgument
    pWaitSemaphores = wait_semaphores == C_NULL ? C_NULL : (wait_semaphores_ref = Ref(wait_semaphores.vk);
                                                            preserve(wait_semaphores_ref, wait_semaphores);
                                                            unsafe_pointer(wait_semaphores_ref))    # VulkanGen.GeneratePointers
    pWaitDstStageMask = wait_dst_stage_mask == C_NULL ? C_NULL : (wait_dst_stage_mask_ref = Ref(wait_dst_stage_mask.vk);
                                                                  preserve(wait_dst_stage_mask_ref, wait_dst_stage_mask);
                                                                  unsafe_pointer(wait_dst_stage_mask_ref))    # VulkanGen.GeneratePointers
    commandBufferCount = pointer_length(command_buffers)    # VulkanGen.ComputeLengthArgument
    pCommandBuffers = command_buffers == C_NULL ? C_NULL : (command_buffers_ref = Ref(command_buffers.vk);
                                                            preserve(command_buffers_ref, command_buffers);
                                                            unsafe_pointer(command_buffers_ref))    # VulkanGen.GeneratePointers
    signalSemaphoreCount = pointer_length(signal_semaphores)    # VulkanGen.ComputeLengthArgument
    pSignalSemaphores = signal_semaphores == C_NULL ? C_NULL : (signal_semaphores_ref = Ref(signal_semaphores.vk);
                                                                preserve(signal_semaphores_ref, signal_semaphores);
                                                                unsafe_pointer(signal_semaphores_ref))    # VulkanGen.GeneratePointers
    vk = VkSubmitInfo(sType, pNext, waitSemaphoreCount, pWaitSemaphores, pWaitDstStageMask, commandBufferCount, pCommandBuffers, signalSemaphoreCount, pSignalSemaphores)

    SubmitInfo(wait_semaphores, wait_dst_stage_mask, command_buffers, signal_semaphores, vk)
end

function MappedMemoryRange(memory, offset, size; next = C_NULL)
    sType = VK_STRUCTURE_TYPE_MAPPED_MEMORY_RANGE    # VulkanGen.ReplaceStructureType

    pNext = next == C_NULL ? C_NULL : (next_ref = Ref(next.vk); preserve(next_ref, next); unsafe_pointer(next_ref))    # VulkanGen.GeneratePointers
    vk = VkMappedMemoryRange(sType, pNext, memory, offset, size)

    MappedMemoryRange(memory, offset, size, vk)
end

function MemoryAllocateInfo(allocation_size, memory_type_index; next = C_NULL)
    sType = VK_STRUCTURE_TYPE_MEMORY_ALLOCATE_INFO    # VulkanGen.ReplaceStructureType

    pNext = next == C_NULL ? C_NULL : (next_ref = Ref(next.vk); preserve(next_ref, next); unsafe_pointer(next_ref))    # VulkanGen.GeneratePointers
    vk = VkMemoryAllocateInfo(sType, pNext, allocation_size, memory_type_index)

    MemoryAllocateInfo(allocation_size, memory_type_index, vk)
end

function MemoryRequirements(size, alignment, memory_type_bits)
    vk = VkMemoryRequirements(size, alignment, memory_type_bits)

    MemoryRequirements(size, alignment, memory_type_bits, vk)
end

function SparseMemoryBind(resource_offset, size, memory_offset; memory = nothing, flags = 0)
    memory = isnothing(memory) ? VK_NULL_HANDLE : memory    # VulkanGen.AddDefaults

    vk = VkSparseMemoryBind(resource_offset, size, memory, memory_offset, flags)

    SparseMemoryBind(resource_offset, size, memory, memory_offset, vk)
end

function SparseBufferMemoryBindInfo(buffer, binds)
    bindCount = pointer_length(binds)    # VulkanGen.ComputeLengthArgument
    pBinds = binds == C_NULL ? C_NULL : (binds_ref = Ref(binds.vk); preserve(binds_ref, binds); unsafe_pointer(binds_ref))    # VulkanGen.GeneratePointers
    vk = VkSparseBufferMemoryBindInfo(buffer, bindCount, pBinds)

    SparseBufferMemoryBindInfo(buffer, binds, vk)
end

function SparseImageOpaqueMemoryBindInfo(image, binds)
    bindCount = pointer_length(binds)    # VulkanGen.ComputeLengthArgument
    pBinds = binds == C_NULL ? C_NULL : (binds_ref = Ref(binds.vk); preserve(binds_ref, binds); unsafe_pointer(binds_ref))    # VulkanGen.GeneratePointers
    vk = VkSparseImageOpaqueMemoryBindInfo(image, bindCount, pBinds)

    SparseImageOpaqueMemoryBindInfo(image, binds, vk)
end

function ImageSubresource(aspect_mask, mip_level, array_layer)
    vk = VkImageSubresource(aspect_mask, mip_level, array_layer)

    ImageSubresource(aspect_mask, mip_level, array_layer, vk)
end

function SparseImageMemoryBind(subresource, offset, extent, memory_offset; memory = nothing, flags = 0)
    memory = isnothing(memory) ? VK_NULL_HANDLE : memory    # VulkanGen.AddDefaults

    vk = VkSparseImageMemoryBind(subresource, offset, extent, memory, memory_offset, flags)

    SparseImageMemoryBind(subresource, offset, extent, memory, memory_offset, vk)
end

function SparseImageMemoryBindInfo(image, binds)
    bindCount = pointer_length(binds)    # VulkanGen.ComputeLengthArgument
    pBinds = binds == C_NULL ? C_NULL : (binds_ref = Ref(binds.vk); preserve(binds_ref, binds); unsafe_pointer(binds_ref))    # VulkanGen.GeneratePointers
    vk = VkSparseImageMemoryBindInfo(image, bindCount, pBinds)

    SparseImageMemoryBindInfo(image, binds, vk)
end

function BindSparseInfo(wait_semaphores, buffer_binds, image_opaque_binds, image_binds, signal_semaphores; next = C_NULL)
    sType = VK_STRUCTURE_TYPE_BIND_SPARSE_INFO    # VulkanGen.ReplaceStructureType

    pNext = next == C_NULL ? C_NULL : (next_ref = Ref(next.vk); preserve(next_ref, next); unsafe_pointer(next_ref))    # VulkanGen.GeneratePointers
    waitSemaphoreCount = pointer_length(wait_semaphores)    # VulkanGen.ComputeLengthArgument
    pWaitSemaphores = wait_semaphores == C_NULL ? C_NULL : (wait_semaphores_ref = Ref(wait_semaphores.vk);
                                                            preserve(wait_semaphores_ref, wait_semaphores);
                                                            unsafe_pointer(wait_semaphores_ref))    # VulkanGen.GeneratePointers
    bufferBindCount = pointer_length(buffer_binds)    # VulkanGen.ComputeLengthArgument
    pBufferBinds = buffer_binds == C_NULL ? C_NULL : (buffer_binds_ref = Ref(buffer_binds.vk);
                                                      preserve(buffer_binds_ref, buffer_binds);
                                                      unsafe_pointer(buffer_binds_ref))    # VulkanGen.GeneratePointers
    imageOpaqueBindCount = pointer_length(image_opaque_binds)    # VulkanGen.ComputeLengthArgument
    pImageOpaqueBinds = image_opaque_binds == C_NULL ? C_NULL : (image_opaque_binds_ref = Ref(image_opaque_binds.vk);
                                                                 preserve(image_opaque_binds_ref, image_opaque_binds);
                                                                 unsafe_pointer(image_opaque_binds_ref))    # VulkanGen.GeneratePointers
    imageBindCount = pointer_length(image_binds)    # VulkanGen.ComputeLengthArgument
    pImageBinds = image_binds == C_NULL ? C_NULL : (image_binds_ref = Ref(image_binds.vk);
                                                    preserve(image_binds_ref, image_binds);
                                                    unsafe_pointer(image_binds_ref))    # VulkanGen.GeneratePointers
    signalSemaphoreCount = pointer_length(signal_semaphores)    # VulkanGen.ComputeLengthArgument
    pSignalSemaphores = signal_semaphores == C_NULL ? C_NULL : (signal_semaphores_ref = Ref(signal_semaphores.vk);
                                                                preserve(signal_semaphores_ref, signal_semaphores);
                                                                unsafe_pointer(signal_semaphores_ref))    # VulkanGen.GeneratePointers
    vk = VkBindSparseInfo(sType, pNext, waitSemaphoreCount, pWaitSemaphores, bufferBindCount, pBufferBinds, imageOpaqueBindCount, pImageOpaqueBinds, imageBindCount, pImageBinds, signalSemaphoreCount,
                          pSignalSemaphores)

    BindSparseInfo(wait_semaphores, buffer_binds, image_opaque_binds, image_binds, signal_semaphores, vk)
end

function FenceCreateInfo(; next = C_NULL, flags = 0)
    sType = VK_STRUCTURE_TYPE_FENCE_CREATE_INFO    # VulkanGen.ReplaceStructureType

    pNext = next == C_NULL ? C_NULL : (next_ref = Ref(next.vk); preserve(next_ref, next); unsafe_pointer(next_ref))    # VulkanGen.GeneratePointers
    vk = VkFenceCreateInfo(sType, pNext, flags)

    FenceCreateInfo(vk)
end

function SemaphoreCreateInfo(; next = C_NULL, flags = 0)
    sType = VK_STRUCTURE_TYPE_SEMAPHORE_CREATE_INFO    # VulkanGen.ReplaceStructureType

    pNext = next == C_NULL ? C_NULL : (next_ref = Ref(next.vk); preserve(next_ref, next); unsafe_pointer(next_ref))    # VulkanGen.GeneratePointers
    vk = VkSemaphoreCreateInfo(sType, pNext, flags)

    SemaphoreCreateInfo(vk)
end

function EventCreateInfo(; next = C_NULL, flags = 0)
    sType = VK_STRUCTURE_TYPE_EVENT_CREATE_INFO    # VulkanGen.ReplaceStructureType

    pNext = next == C_NULL ? C_NULL : (next_ref = Ref(next.vk); preserve(next_ref, next); unsafe_pointer(next_ref))    # VulkanGen.GeneratePointers
    vk = VkEventCreateInfo(sType, pNext, flags)

    EventCreateInfo(vk)
end

function QueryPoolCreateInfo(query_type, query_count; pipeline_statistics = nothing, next = C_NULL, flags = 0)
    sType = VK_STRUCTURE_TYPE_QUERY_POOL_CREATE_INFO    # VulkanGen.ReplaceStructureType

    pNext = next == C_NULL ? C_NULL : (next_ref = Ref(next.vk); preserve(next_ref, next); unsafe_pointer(next_ref))    # VulkanGen.GeneratePointers
    pipelineStatistics = isnothing(pipeline_statistics) ? 0 : pipeline_statistics    # VulkanGen.AddDefaults

    pipelineStatistics = pipelineStatistics == C_NULL ? C_NULL : (pipelineStatistics_ref = Ref(pipelineStatistics.vk);
                                                                  preserve(pipelineStatistics_ref, pipeline_statistics);
                                                                  unsafe_pointer(pipelineStatistics_ref))    # VulkanGen.GeneratePointers
    vk = VkQueryPoolCreateInfo(sType, pNext, flags, query_type, query_count, pipelineStatistics)

    QueryPoolCreateInfo(query_type, query_count, pipeline_statistics, vk)
end

function BufferCreateInfo(size, usage, sharing_mode, queue_family_indices; next = C_NULL, flags = 0)
    sType = VK_STRUCTURE_TYPE_BUFFER_CREATE_INFO    # VulkanGen.ReplaceStructureType

    pNext = next == C_NULL ? C_NULL : (next_ref = Ref(next.vk); preserve(next_ref, next); unsafe_pointer(next_ref))    # VulkanGen.GeneratePointers
    queueFamilyIndexCount = pointer_length(queue_family_indices)    # VulkanGen.ComputeLengthArgument
    pQueueFamilyIndices = queue_family_indices == C_NULL ? C_NULL : (queue_family_indices_ref = Ref(queue_family_indices.vk);
                                                                     preserve(queue_family_indices_ref, queue_family_indices);
                                                                     unsafe_pointer(queue_family_indices_ref))    # VulkanGen.GeneratePointers
    vk = VkBufferCreateInfo(sType, pNext, flags, size, usage, sharing_mode, queueFamilyIndexCount, pQueueFamilyIndices)

    BufferCreateInfo(size, usage, sharing_mode, queue_family_indices, vk)
end

function BufferViewCreateInfo(buffer, format, offset, range; next = C_NULL, flags = 0)
    sType = VK_STRUCTURE_TYPE_BUFFER_VIEW_CREATE_INFO    # VulkanGen.ReplaceStructureType

    pNext = next == C_NULL ? C_NULL : (next_ref = Ref(next.vk); preserve(next_ref, next); unsafe_pointer(next_ref))    # VulkanGen.GeneratePointers
    vk = VkBufferViewCreateInfo(sType, pNext, flags, buffer, format, offset, range)

    BufferViewCreateInfo(buffer, format, offset, range, vk)
end

function ImageCreateInfo(image_type, format, extent, mip_levels, array_layers, samples, tiling, usage, sharing_mode, queue_family_indices, initial_layout; next = C_NULL, flags = 0)
    sType = VK_STRUCTURE_TYPE_IMAGE_CREATE_INFO    # VulkanGen.ReplaceStructureType

    pNext = next == C_NULL ? C_NULL : (next_ref = Ref(next.vk); preserve(next_ref, next); unsafe_pointer(next_ref))    # VulkanGen.GeneratePointers
    queueFamilyIndexCount = pointer_length(queue_family_indices)    # VulkanGen.ComputeLengthArgument
    pQueueFamilyIndices = queue_family_indices == C_NULL ? C_NULL : (queue_family_indices_ref = Ref(queue_family_indices.vk);
                                                                     preserve(queue_family_indices_ref, queue_family_indices);
                                                                     unsafe_pointer(queue_family_indices_ref))    # VulkanGen.GeneratePointers
    vk = VkImageCreateInfo(sType, pNext, flags, image_type, format, extent, mip_levels, array_layers, samples, tiling, usage, sharing_mode, queueFamilyIndexCount, pQueueFamilyIndices, initial_layout)

    ImageCreateInfo(image_type, format, extent, mip_levels, array_layers, samples, tiling, usage, sharing_mode, queue_family_indices, initial_layout, vk)
end

function SubresourceLayout(offset, size, row_pitch, array_pitch, depth_pitch)
    vk = VkSubresourceLayout(offset, size, row_pitch, array_pitch, depth_pitch)

    SubresourceLayout(offset, size, row_pitch, array_pitch, depth_pitch, vk)
end

function ComponentMapping(r, g, b, a)
    vk = VkComponentMapping(r, g, b, a)

    ComponentMapping(r, g, b, a, vk)
end

function ImageViewCreateInfo(image, view_type, format, components, subresource_range; next = C_NULL, flags = 0)
    sType = VK_STRUCTURE_TYPE_IMAGE_VIEW_CREATE_INFO    # VulkanGen.ReplaceStructureType

    pNext = next == C_NULL ? C_NULL : (next_ref = Ref(next.vk); preserve(next_ref, next); unsafe_pointer(next_ref))    # VulkanGen.GeneratePointers
    vk = VkImageViewCreateInfo(sType, pNext, flags, image, view_type, format, components, subresource_range)

    ImageViewCreateInfo(image, view_type, format, components, subresource_range, vk)
end

function ShaderModuleCreateInfo(code; next = C_NULL, flags = 0)
    sType = VK_STRUCTURE_TYPE_SHADER_MODULE_CREATE_INFO    # VulkanGen.ReplaceStructureType

    pNext = next == C_NULL ? C_NULL : (next_ref = Ref(next.vk); preserve(next_ref, next); unsafe_pointer(next_ref))    # VulkanGen.GeneratePointers
    codeSize = pointer_length(code)    # VulkanGen.ComputeLengthArgument
    pCode = code == C_NULL ? C_NULL : (code_ref = Ref(code.vk); preserve(code_ref, code); unsafe_pointer(code_ref))    # VulkanGen.GeneratePointers
    vk = VkShaderModuleCreateInfo(sType, pNext, flags, codeSize, pCode)

    ShaderModuleCreateInfo(code, vk)
end

function PipelineCacheCreateInfo(initial_data; next = C_NULL, flags = 0)
    sType = VK_STRUCTURE_TYPE_PIPELINE_CACHE_CREATE_INFO    # VulkanGen.ReplaceStructureType

    pNext = next == C_NULL ? C_NULL : (next_ref = Ref(next.vk); preserve(next_ref, next); unsafe_pointer(next_ref))    # VulkanGen.GeneratePointers
    initialDataSize = pointer_length(initial_data)    # VulkanGen.ComputeLengthArgument
    pInitialData = initial_data == C_NULL ? C_NULL : (initial_data_ref = Ref(initial_data.vk);
                                                      preserve(initial_data_ref, initial_data);
                                                      unsafe_pointer(initial_data_ref))    # VulkanGen.GeneratePointers
    vk = VkPipelineCacheCreateInfo(sType, pNext, flags, initialDataSize, pInitialData)

    PipelineCacheCreateInfo(initial_data, vk)
end

function SpecializationMapEntry(constant_id, offset, size)
    vk = VkSpecializationMapEntry(constant_id, offset, size)

    SpecializationMapEntry(constant_id, offset, size, vk)
end

function SpecializationInfo(map_entries, data)
    mapEntryCount = pointer_length(map_entries)    # VulkanGen.ComputeLengthArgument
    pMapEntries = map_entries == C_NULL ? C_NULL : (map_entries_ref = Ref(map_entries.vk);
                                                    preserve(map_entries_ref, map_entries);
                                                    unsafe_pointer(map_entries_ref))    # VulkanGen.GeneratePointers
    dataSize = pointer_length(data)    # VulkanGen.ComputeLengthArgument
    pData = data == C_NULL ? C_NULL : (data_ref = Ref(data.vk); preserve(data_ref, data); unsafe_pointer(data_ref))    # VulkanGen.GeneratePointers
    vk = VkSpecializationInfo(mapEntryCount, pMapEntries, dataSize, pData)

    SpecializationInfo(map_entries, data, vk)
end

function PipelineShaderStageCreateInfo(stage, _module, name; specialization_info = nothing, next = C_NULL, flags = 0)
    sType = VK_STRUCTURE_TYPE_PIPELINE_SHADER_STAGE_CREATE_INFO    # VulkanGen.ReplaceStructureType

    pNext = next == C_NULL ? C_NULL : (next_ref = Ref(next.vk); preserve(next_ref, next); unsafe_pointer(next_ref))    # VulkanGen.GeneratePointers
    pName = name == C_NULL ? C_NULL : pointer(name)    # VulkanGen.GeneratePointers
    pSpecializationInfo = isnothing(specialization_info) ? C_NULL : specialization_info    # VulkanGen.AddDefaults

    pSpecializationInfo = pSpecializationInfo == C_NULL ? C_NULL : (pSpecializationInfo_ref = Ref(pSpecializationInfo.vk);
                                                                    preserve(pSpecializationInfo_ref, specialization_info);
                                                                    unsafe_pointer(pSpecializationInfo_ref))    # VulkanGen.GeneratePointers
    vk = VkPipelineShaderStageCreateInfo(sType, pNext, flags, stage, _module, pName, pSpecializationInfo)

    PipelineShaderStageCreateInfo(stage, _module, name, specialization_info, vk)
end

function ComputePipelineCreateInfo(stage, layout, base_pipeline_index; base_pipeline_handle = nothing, next = C_NULL, flags = 0)
    sType = VK_STRUCTURE_TYPE_COMPUTE_PIPELINE_CREATE_INFO    # VulkanGen.ReplaceStructureType

    pNext = next == C_NULL ? C_NULL : (next_ref = Ref(next.vk); preserve(next_ref, next); unsafe_pointer(next_ref))    # VulkanGen.GeneratePointers
    basePipelineHandle = isnothing(base_pipeline_handle) ? VK_NULL_HANDLE : base_pipeline_handle    # VulkanGen.AddDefaults

    vk = VkComputePipelineCreateInfo(sType, pNext, flags, stage, layout, basePipelineHandle, base_pipeline_index)

    ComputePipelineCreateInfo(stage, layout, base_pipeline_handle, base_pipeline_index, vk)
end

function VertexInputBindingDescription(binding, stride, input_rate)
    vk = VkVertexInputBindingDescription(binding, stride, input_rate)

    VertexInputBindingDescription(binding, stride, input_rate, vk)
end

function VertexInputAttributeDescription(location, binding, format, offset)
    vk = VkVertexInputAttributeDescription(location, binding, format, offset)

    VertexInputAttributeDescription(location, binding, format, offset, vk)
end

function PipelineVertexInputStateCreateInfo(vertex_binding_descriptions, vertex_attribute_descriptions; next = C_NULL, flags = 0)
    sType = VK_STRUCTURE_TYPE_PIPELINE_VERTEX_INPUT_STATE_CREATE_INFO    # VulkanGen.ReplaceStructureType

    pNext = next == C_NULL ? C_NULL : (next_ref = Ref(next.vk); preserve(next_ref, next); unsafe_pointer(next_ref))    # VulkanGen.GeneratePointers
    vertexBindingDescriptionCount = pointer_length(vertex_binding_descriptions)    # VulkanGen.ComputeLengthArgument
    pVertexBindingDescriptions = vertex_binding_descriptions == C_NULL ? C_NULL : (vertex_binding_descriptions_ref = Ref(vertex_binding_descriptions.vk);
                                                                                   preserve(vertex_binding_descriptions_ref, vertex_binding_descriptions);
                                                                                   unsafe_pointer(vertex_binding_descriptions_ref))    # VulkanGen.GeneratePointers
    vertexAttributeDescriptionCount = pointer_length(vertex_attribute_descriptions)    # VulkanGen.ComputeLengthArgument
    pVertexAttributeDescriptions = vertex_attribute_descriptions == C_NULL ? C_NULL : (vertex_attribute_descriptions_ref = Ref(vertex_attribute_descriptions.vk);
                                                                                       preserve(vertex_attribute_descriptions_ref, vertex_attribute_descriptions);
                                                                                       unsafe_pointer(vertex_attribute_descriptions_ref))    # VulkanGen.GeneratePointers
    vk = VkPipelineVertexInputStateCreateInfo(sType, pNext, flags, vertexBindingDescriptionCount, pVertexBindingDescriptions, vertexAttributeDescriptionCount, pVertexAttributeDescriptions)

    PipelineVertexInputStateCreateInfo(vertex_binding_descriptions, vertex_attribute_descriptions, vk)
end

function PipelineInputAssemblyStateCreateInfo(topology, primitive_restart_enable; next = C_NULL, flags = 0)
    sType = VK_STRUCTURE_TYPE_PIPELINE_INPUT_ASSEMBLY_STATE_CREATE_INFO    # VulkanGen.ReplaceStructureType

    pNext = next == C_NULL ? C_NULL : (next_ref = Ref(next.vk); preserve(next_ref, next); unsafe_pointer(next_ref))    # VulkanGen.GeneratePointers
    primitiveRestartEnable = primitive_restart_enable == C_NULL ? C_NULL : (primitive_restart_enable_ref = Ref(primitive_restart_enable.vk);
                                                                            preserve(primitive_restart_enable_ref, primitive_restart_enable);
                                                                            unsafe_pointer(primitive_restart_enable_ref))    # VulkanGen.GeneratePointers
    vk = VkPipelineInputAssemblyStateCreateInfo(sType, pNext, flags, topology, primitiveRestartEnable)

    PipelineInputAssemblyStateCreateInfo(topology, primitive_restart_enable, vk)
end

function PipelineTessellationStateCreateInfo(patch_control_points; next = C_NULL, flags = 0)
    sType = VK_STRUCTURE_TYPE_PIPELINE_TESSELLATION_STATE_CREATE_INFO    # VulkanGen.ReplaceStructureType

    pNext = next == C_NULL ? C_NULL : (next_ref = Ref(next.vk); preserve(next_ref, next); unsafe_pointer(next_ref))    # VulkanGen.GeneratePointers
    patchControlPoints = patch_control_points == C_NULL ? C_NULL : (patch_control_points_ref = Ref(patch_control_points.vk);
                                                                    preserve(patch_control_points_ref, patch_control_points);
                                                                    unsafe_pointer(patch_control_points_ref))    # VulkanGen.GeneratePointers
    vk = VkPipelineTessellationStateCreateInfo(sType, pNext, flags, patchControlPoints)

    PipelineTessellationStateCreateInfo(patch_control_points, vk)
end

function Viewport(x, y, width, height, min_depth, max_depth)
    vk = VkViewport(x, y, width, height, min_depth, max_depth)

    Viewport(x, y, width, height, min_depth, max_depth, vk)
end

function PipelineViewportStateCreateInfo(; viewports = nothing, scissors = nothing, next = C_NULL, flags = 0)
    sType = VK_STRUCTURE_TYPE_PIPELINE_VIEWPORT_STATE_CREATE_INFO    # VulkanGen.ReplaceStructureType

    pNext = next == C_NULL ? C_NULL : (next_ref = Ref(next.vk); preserve(next_ref, next); unsafe_pointer(next_ref))    # VulkanGen.GeneratePointers
    viewportCount = pointer_length(viewports)    # VulkanGen.ComputeLengthArgument
    pViewports = isnothing(viewports) ? C_NULL : viewports    # VulkanGen.AddDefaults
    pViewports = pViewports == C_NULL ? C_NULL : (pViewports_ref = Ref(pViewports.vk);
                                                  preserve(pViewports_ref, viewports);
                                                  unsafe_pointer(pViewports_ref))    # VulkanGen.GeneratePointers
    scissorCount = pointer_length(scissors)    # VulkanGen.ComputeLengthArgument
    pScissors = isnothing(scissors) ? C_NULL : scissors    # VulkanGen.AddDefaults

    pScissors = pScissors == C_NULL ? C_NULL : (pScissors_ref = Ref(pScissors.vk);
                                                preserve(pScissors_ref, scissors);
                                                unsafe_pointer(pScissors_ref))    # VulkanGen.GeneratePointers
    vk = VkPipelineViewportStateCreateInfo(sType, pNext, flags, viewportCount, pViewports, scissorCount, pScissors)

    PipelineViewportStateCreateInfo(viewports, scissors, vk)
end

function PipelineRasterizationStateCreateInfo(depth_clamp_enable, rasterizer_discard_enable, polygon_mode, front_face, depth_bias_enable, depth_bias_constant_factor, depth_bias_clamp,
                                              depth_bias_slope_factor, line_width; cull_mode = nothing, next = C_NULL, flags = 0)
    sType = VK_STRUCTURE_TYPE_PIPELINE_RASTERIZATION_STATE_CREATE_INFO    # VulkanGen.ReplaceStructureType

    pNext = next == C_NULL ? C_NULL : (next_ref = Ref(next.vk); preserve(next_ref, next); unsafe_pointer(next_ref))    # VulkanGen.GeneratePointers
    polygonMode = polygon_mode == C_NULL ? C_NULL : (polygon_mode_ref = Ref(polygon_mode.vk);
                                                     preserve(polygon_mode_ref, polygon_mode);
                                                     unsafe_pointer(polygon_mode_ref))    # VulkanGen.GeneratePointers
    cullMode = isnothing(cull_mode) ? 0 : cull_mode    # VulkanGen.AddDefaults

    vk = VkPipelineRasterizationStateCreateInfo(sType, pNext, flags, depth_clamp_enable, rasterizer_discard_enable, polygonMode, cullMode, front_face, depth_bias_enable, depth_bias_constant_factor,
                                                depth_bias_clamp, depth_bias_slope_factor, line_width)

    PipelineRasterizationStateCreateInfo(depth_clamp_enable, rasterizer_discard_enable, polygon_mode, cull_mode, front_face, depth_bias_enable, depth_bias_constant_factor, depth_bias_clamp,
                                         depth_bias_slope_factor, line_width, vk)
end

function PipelineMultisampleStateCreateInfo(sample_shading_enable, min_sample_shading, alpha_to_coverage_enable, alpha_to_one_enable; sample_mask = nothing, next = C_NULL, flags = 0)
    sType = VK_STRUCTURE_TYPE_PIPELINE_MULTISAMPLE_STATE_CREATE_INFO    # VulkanGen.ReplaceStructureType

    pNext = next == C_NULL ? C_NULL : (next_ref = Ref(next.vk); preserve(next_ref, next); unsafe_pointer(next_ref))    # VulkanGen.GeneratePointers
    rasterizationSamples = pointer_length(sample_mask)    # VulkanGen.ComputeLengthArgument
    pSampleMask = isnothing(sample_mask) ? 0 : sample_mask    # VulkanGen.AddDefaults

    pSampleMask = pSampleMask == C_NULL ? C_NULL : (pSampleMask_ref = Ref(pSampleMask.vk);
                                                    preserve(pSampleMask_ref, sample_mask);
                                                    unsafe_pointer(pSampleMask_ref))    # VulkanGen.GeneratePointers
    vk = VkPipelineMultisampleStateCreateInfo(sType, pNext, flags, rasterizationSamples, sample_shading_enable, min_sample_shading, pSampleMask, alpha_to_coverage_enable, alpha_to_one_enable)

    PipelineMultisampleStateCreateInfo(sample_shading_enable, min_sample_shading, sample_mask, alpha_to_coverage_enable, alpha_to_one_enable, vk)
end

function StencilOpState(fail_op, pass_op, depth_fail_op, compare_op, compare_mask, write_mask, reference)
    passOp = pass_op == C_NULL ? C_NULL : (pass_op_ref = Ref(pass_op.vk);
                                           preserve(pass_op_ref, pass_op);
                                           unsafe_pointer(pass_op_ref))    # VulkanGen.GeneratePointers
    vk = VkStencilOpState(fail_op, passOp, depth_fail_op, compare_op, compare_mask, write_mask, reference)

    StencilOpState(fail_op, pass_op, depth_fail_op, compare_op, compare_mask, write_mask, reference, vk)
end

function PipelineDepthStencilStateCreateInfo(depth_test_enable, depth_write_enable, depth_compare_op, depth_bounds_test_enable, stencil_test_enable, front, back, min_depth_bounds, max_depth_bounds;
                                             next = C_NULL, flags = 0)
    sType = VK_STRUCTURE_TYPE_PIPELINE_DEPTH_STENCIL_STATE_CREATE_INFO    # VulkanGen.ReplaceStructureType

    pNext = next == C_NULL ? C_NULL : (next_ref = Ref(next.vk); preserve(next_ref, next); unsafe_pointer(next_ref))    # VulkanGen.GeneratePointers
    vk = VkPipelineDepthStencilStateCreateInfo(sType, pNext, flags, depth_test_enable, depth_write_enable, depth_compare_op, depth_bounds_test_enable, stencil_test_enable, front, back,
                                               min_depth_bounds, max_depth_bounds)

    PipelineDepthStencilStateCreateInfo(depth_test_enable, depth_write_enable, depth_compare_op, depth_bounds_test_enable, stencil_test_enable, front, back, min_depth_bounds, max_depth_bounds, vk)
end

function PipelineColorBlendAttachmentState(blend_enable, src_color_blend_factor, dst_color_blend_factor, color_blend_op, src_alpha_blend_factor, dst_alpha_blend_factor, alpha_blend_op;
                                           color_write_mask = nothing)
    colorWriteMask = isnothing(color_write_mask) ? 0 : color_write_mask    # VulkanGen.AddDefaults

    vk = VkPipelineColorBlendAttachmentState(blend_enable, src_color_blend_factor, dst_color_blend_factor, color_blend_op, src_alpha_blend_factor, dst_alpha_blend_factor, alpha_blend_op,
                                             colorWriteMask)

    PipelineColorBlendAttachmentState(blend_enable, src_color_blend_factor, dst_color_blend_factor, color_blend_op, src_alpha_blend_factor, dst_alpha_blend_factor, alpha_blend_op, color_write_mask,
                                      vk)
end

function PipelineColorBlendStateCreateInfo(logic_op_enable, logic_op, attachments, blend_constants; next = C_NULL, flags = 0)
    sType = VK_STRUCTURE_TYPE_PIPELINE_COLOR_BLEND_STATE_CREATE_INFO    # VulkanGen.ReplaceStructureType

    pNext = next == C_NULL ? C_NULL : (next_ref = Ref(next.vk); preserve(next_ref, next); unsafe_pointer(next_ref))    # VulkanGen.GeneratePointers
    attachmentCount = pointer_length(attachments)    # VulkanGen.ComputeLengthArgument
    pAttachments = attachments == C_NULL ? C_NULL : (attachments_ref = Ref(attachments.vk);
                                                     preserve(attachments_ref, attachments);
                                                     unsafe_pointer(attachments_ref))    # VulkanGen.GeneratePointers
    vk = VkPipelineColorBlendStateCreateInfo(sType, pNext, flags, logic_op_enable, logic_op, attachmentCount, pAttachments, blend_constants)

    PipelineColorBlendStateCreateInfo(logic_op_enable, logic_op, attachments, blend_constants, vk)
end

function PipelineDynamicStateCreateInfo(dynamic_states; next = C_NULL, flags = 0)
    sType = VK_STRUCTURE_TYPE_PIPELINE_DYNAMIC_STATE_CREATE_INFO    # VulkanGen.ReplaceStructureType

    pNext = next == C_NULL ? C_NULL : (next_ref = Ref(next.vk); preserve(next_ref, next); unsafe_pointer(next_ref))    # VulkanGen.GeneratePointers
    dynamicStateCount = pointer_length(dynamic_states)    # VulkanGen.ComputeLengthArgument
    pDynamicStates = dynamic_states == C_NULL ? C_NULL : (dynamic_states_ref = Ref(dynamic_states.vk);
                                                          preserve(dynamic_states_ref, dynamic_states);
                                                          unsafe_pointer(dynamic_states_ref))    # VulkanGen.GeneratePointers
    vk = VkPipelineDynamicStateCreateInfo(sType, pNext, flags, dynamicStateCount, pDynamicStates)

    PipelineDynamicStateCreateInfo(dynamic_states, vk)
end

function GraphicsPipelineCreateInfo(stages, rasterization_state, layout, render_pass, subpass, base_pipeline_index; viewport_state = nothing, base_pipeline_handle = nothing,
                                    depth_stencil_state = nothing, tessellation_state = nothing, input_assembly_state = nothing, vertex_input_state = nothing, dynamic_state = nothing,
                                    multisample_state = nothing, color_blend_state = nothing, next = C_NULL, flags = 0)
    sType = VK_STRUCTURE_TYPE_GRAPHICS_PIPELINE_CREATE_INFO    # VulkanGen.ReplaceStructureType

    pNext = next == C_NULL ? C_NULL : (next_ref = Ref(next.vk); preserve(next_ref, next); unsafe_pointer(next_ref))    # VulkanGen.GeneratePointers
    stageCount = pointer_length(stages)    # VulkanGen.ComputeLengthArgument
    pStages = stages == C_NULL ? C_NULL : (stages_ref = Ref(stages.vk);
                                           preserve(stages_ref, stages);
                                           unsafe_pointer(stages_ref))    # VulkanGen.GeneratePointers
    pVertexInputState = isnothing(vertex_input_state) ? C_NULL : vertex_input_state    # VulkanGen.AddDefaults
    pVertexInputState = pVertexInputState == C_NULL ? C_NULL : (pVertexInputState_ref = Ref(pVertexInputState.vk);
                                                                preserve(pVertexInputState_ref, vertex_input_state);
                                                                unsafe_pointer(pVertexInputState_ref))    # VulkanGen.GeneratePointers
    pInputAssemblyState = isnothing(input_assembly_state) ? C_NULL : input_assembly_state    # VulkanGen.AddDefaults
    pInputAssemblyState = pInputAssemblyState == C_NULL ? C_NULL : (pInputAssemblyState_ref = Ref(pInputAssemblyState.vk);
                                                                    preserve(pInputAssemblyState_ref, input_assembly_state);
                                                                    unsafe_pointer(pInputAssemblyState_ref))    # VulkanGen.GeneratePointers
    pTessellationState = isnothing(tessellation_state) ? C_NULL : tessellation_state    # VulkanGen.AddDefaults
    pTessellationState = pTessellationState == C_NULL ? C_NULL : (pTessellationState_ref = Ref(pTessellationState.vk);
                                                                  preserve(pTessellationState_ref, tessellation_state);
                                                                  unsafe_pointer(pTessellationState_ref))    # VulkanGen.GeneratePointers
    pViewportState = isnothing(viewport_state) ? C_NULL : viewport_state    # VulkanGen.AddDefaults
    pViewportState = pViewportState == C_NULL ? C_NULL : (pViewportState_ref = Ref(pViewportState.vk);
                                                          preserve(pViewportState_ref, viewport_state);
                                                          unsafe_pointer(pViewportState_ref))    # VulkanGen.GeneratePointers
    pRasterizationState = rasterization_state == C_NULL ? C_NULL : (rasterization_state_ref = Ref(rasterization_state.vk);
                                                                    preserve(rasterization_state_ref, rasterization_state);
                                                                    unsafe_pointer(rasterization_state_ref))    # VulkanGen.GeneratePointers
    pMultisampleState = isnothing(multisample_state) ? C_NULL : multisample_state    # VulkanGen.AddDefaults
    pMultisampleState = pMultisampleState == C_NULL ? C_NULL : (pMultisampleState_ref = Ref(pMultisampleState.vk);
                                                                preserve(pMultisampleState_ref, multisample_state);
                                                                unsafe_pointer(pMultisampleState_ref))    # VulkanGen.GeneratePointers
    pDepthStencilState = isnothing(depth_stencil_state) ? C_NULL : depth_stencil_state    # VulkanGen.AddDefaults
    pDepthStencilState = pDepthStencilState == C_NULL ? C_NULL : (pDepthStencilState_ref = Ref(pDepthStencilState.vk);
                                                                  preserve(pDepthStencilState_ref, depth_stencil_state);
                                                                  unsafe_pointer(pDepthStencilState_ref))    # VulkanGen.GeneratePointers
    pColorBlendState = isnothing(color_blend_state) ? C_NULL : color_blend_state    # VulkanGen.AddDefaults

    pColorBlendState = pColorBlendState == C_NULL ? C_NULL : (pColorBlendState_ref = Ref(pColorBlendState.vk);
                                                              preserve(pColorBlendState_ref, color_blend_state);
                                                              unsafe_pointer(pColorBlendState_ref))    # VulkanGen.GeneratePointers
    pDynamicState = isnothing(dynamic_state) ? C_NULL : dynamic_state    # VulkanGen.AddDefaults
    pDynamicState = pDynamicState == C_NULL ? C_NULL : (pDynamicState_ref = Ref(pDynamicState.vk);
                                                        preserve(pDynamicState_ref, dynamic_state);
                                                        unsafe_pointer(pDynamicState_ref))    # VulkanGen.GeneratePointers
    basePipelineHandle = isnothing(base_pipeline_handle) ? VK_NULL_HANDLE : base_pipeline_handle    # VulkanGen.AddDefaults
    vk = VkGraphicsPipelineCreateInfo(sType, pNext, flags, stageCount, pStages, pVertexInputState, pInputAssemblyState, pTessellationState, pViewportState, pRasterizationState, pMultisampleState,
                                      pDepthStencilState, pColorBlendState, pDynamicState, layout, render_pass, subpass, basePipelineHandle, base_pipeline_index)

    GraphicsPipelineCreateInfo(stages, vertex_input_state, input_assembly_state, tessellation_state, viewport_state, rasterization_state, multisample_state, depth_stencil_state, color_blend_state,
                               dynamic_state, layout, render_pass, subpass, base_pipeline_handle, base_pipeline_index, vk)
end

function PushConstantRange(stage_flags, offset, size)
    vk = VkPushConstantRange(stage_flags, offset, size)

    PushConstantRange(stage_flags, offset, size, vk)
end

function PipelineLayoutCreateInfo(set_layouts, push_constant_ranges; next = C_NULL, flags = 0)
    sType = VK_STRUCTURE_TYPE_PIPELINE_LAYOUT_CREATE_INFO    # VulkanGen.ReplaceStructureType

    pNext = next == C_NULL ? C_NULL : (next_ref = Ref(next.vk); preserve(next_ref, next); unsafe_pointer(next_ref))    # VulkanGen.GeneratePointers
    setLayoutCount = pointer_length(set_layouts)    # VulkanGen.ComputeLengthArgument
    pSetLayouts = set_layouts == C_NULL ? C_NULL : (set_layouts_ref = Ref(set_layouts.vk);
                                                    preserve(set_layouts_ref, set_layouts);
                                                    unsafe_pointer(set_layouts_ref))    # VulkanGen.GeneratePointers
    pushConstantRangeCount = pointer_length(push_constant_ranges)    # VulkanGen.ComputeLengthArgument
    pushConstantRangeCount = pushConstantRangeCount == C_NULL ? C_NULL : (pushConstantRangeCount_ref = Ref(pushConstantRangeCount.vk);
                                                                          preserve(pushConstantRangeCount_ref, push_constant_range_count);
                                                                          unsafe_pointer(pushConstantRangeCount_ref))    # VulkanGen.GeneratePointers
    pPushConstantRanges = push_constant_ranges == C_NULL ? C_NULL : (push_constant_ranges_ref = Ref(push_constant_ranges.vk);
                                                                     preserve(push_constant_ranges_ref, push_constant_ranges);
                                                                     unsafe_pointer(push_constant_ranges_ref))    # VulkanGen.GeneratePointers
    vk = VkPipelineLayoutCreateInfo(sType, pNext, flags, setLayoutCount, pSetLayouts, pushConstantRangeCount, pPushConstantRanges)

    PipelineLayoutCreateInfo(set_layouts, push_constant_ranges, vk)
end

function SamplerCreateInfo(mag_filter, min_filter, mipmap_mode, address_mode_u, address_mode_v, address_mode_w, mip_lod_bias, anisotropy_enable, max_anisotropy, compare_enable, compare_op, min_lod,
                           max_lod, border_color, unnormalized_coordinates; next = C_NULL, flags = 0)
    sType = VK_STRUCTURE_TYPE_SAMPLER_CREATE_INFO    # VulkanGen.ReplaceStructureType

    pNext = next == C_NULL ? C_NULL : (next_ref = Ref(next.vk); preserve(next_ref, next); unsafe_pointer(next_ref))    # VulkanGen.GeneratePointers
    vk = VkSamplerCreateInfo(sType, pNext, flags, mag_filter, min_filter, mipmap_mode, address_mode_u, address_mode_v, address_mode_w, mip_lod_bias, anisotropy_enable, max_anisotropy, compare_enable,
                             compare_op, min_lod, max_lod, border_color, unnormalized_coordinates)

    SamplerCreateInfo(mag_filter, min_filter, mipmap_mode, address_mode_u, address_mode_v, address_mode_w, mip_lod_bias, anisotropy_enable, max_anisotropy, compare_enable, compare_op, min_lod,
                      max_lod, border_color, unnormalized_coordinates, vk)
end

function CopyDescriptorSet(src_set, src_binding, src_array_element, dst_set, dst_binding, dst_array_element, descriptor_count; next = C_NULL)
    sType = VK_STRUCTURE_TYPE_COPY_DESCRIPTOR_SET    # VulkanGen.ReplaceStructureType

    pNext = next == C_NULL ? C_NULL : (next_ref = Ref(next.vk); preserve(next_ref, next); unsafe_pointer(next_ref))    # VulkanGen.GeneratePointers
    vk = VkCopyDescriptorSet(sType, pNext, src_set, src_binding, src_array_element, dst_set, dst_binding, dst_array_element, descriptor_count)

    CopyDescriptorSet(src_set, src_binding, src_array_element, dst_set, dst_binding, dst_array_element, descriptor_count, vk)
end

function DescriptorBufferInfo(offset, range; buffer = nothing)
    buffer = isnothing(buffer) ? VK_NULL_HANDLE : buffer    # VulkanGen.AddDefaults

    vk = VkDescriptorBufferInfo(buffer, offset, range)

    DescriptorBufferInfo(buffer, offset, range, vk)
end

function DescriptorImageInfo(sampler, image_view, image_layout)
    vk = VkDescriptorImageInfo(sampler, image_view, image_layout)

    DescriptorImageInfo(sampler, image_view, image_layout, vk)
end

function DescriptorPoolSize(type, descriptor_count)
    vk = VkDescriptorPoolSize(type, descriptor_count)

    DescriptorPoolSize(type, descriptor_count, vk)
end

function DescriptorPoolCreateInfo(max_sets, pool_sizes; next = C_NULL, flags = 0)
    sType = VK_STRUCTURE_TYPE_DESCRIPTOR_POOL_CREATE_INFO    # VulkanGen.ReplaceStructureType

    pNext = next == C_NULL ? C_NULL : (next_ref = Ref(next.vk); preserve(next_ref, next); unsafe_pointer(next_ref))    # VulkanGen.GeneratePointers
    poolSizeCount = pointer_length(pool_sizes)    # VulkanGen.ComputeLengthArgument
    poolSizeCount = poolSizeCount == C_NULL ? C_NULL : (poolSizeCount_ref = Ref(poolSizeCount.vk);
                                                        preserve(poolSizeCount_ref, pool_size_count);
                                                        unsafe_pointer(poolSizeCount_ref))    # VulkanGen.GeneratePointers
    pPoolSizes = pool_sizes == C_NULL ? C_NULL : (pool_sizes_ref = Ref(pool_sizes.vk);
                                                  preserve(pool_sizes_ref, pool_sizes);
                                                  unsafe_pointer(pool_sizes_ref))    # VulkanGen.GeneratePointers
    vk = VkDescriptorPoolCreateInfo(sType, pNext, flags, max_sets, poolSizeCount, pPoolSizes)

    DescriptorPoolCreateInfo(max_sets, pool_sizes, vk)
end

function DescriptorSetAllocateInfo(descriptor_pool, set_layouts; next = C_NULL)
    sType = VK_STRUCTURE_TYPE_DESCRIPTOR_SET_ALLOCATE_INFO    # VulkanGen.ReplaceStructureType

    pNext = next == C_NULL ? C_NULL : (next_ref = Ref(next.vk); preserve(next_ref, next); unsafe_pointer(next_ref))    # VulkanGen.GeneratePointers
    descriptorSetCount = pointer_length(set_layouts)    # VulkanGen.ComputeLengthArgument
    pSetLayouts = set_layouts == C_NULL ? C_NULL : (set_layouts_ref = Ref(set_layouts.vk);
                                                    preserve(set_layouts_ref, set_layouts);
                                                    unsafe_pointer(set_layouts_ref))    # VulkanGen.GeneratePointers
    vk = VkDescriptorSetAllocateInfo(sType, pNext, descriptor_pool, descriptorSetCount, pSetLayouts)

    DescriptorSetAllocateInfo(descriptor_pool, set_layouts, vk)
end

function DescriptorSetLayoutBinding(binding, descriptor_type, stage_flags; immutable_samplers = nothing)
    descriptorCount = pointer_length(immutable_samplers)    # VulkanGen.ComputeLengthArgument
    pImmutableSamplers = isnothing(immutable_samplers) ? VK_NULL_HANDLE : immutable_samplers    # VulkanGen.AddDefaults

    pImmutableSamplers = pImmutableSamplers == C_NULL ? C_NULL : (pImmutableSamplers_ref = Ref(pImmutableSamplers.vk);
                                                                  preserve(pImmutableSamplers_ref, immutable_samplers);
                                                                  unsafe_pointer(pImmutableSamplers_ref))    # VulkanGen.GeneratePointers
    vk = VkDescriptorSetLayoutBinding(binding, descriptor_type, descriptorCount, stage_flags, pImmutableSamplers)

    DescriptorSetLayoutBinding(binding, descriptor_type, stage_flags, immutable_samplers, vk)
end

function DescriptorSetLayoutCreateInfo(bindings; next = C_NULL, flags = 0)
    sType = VK_STRUCTURE_TYPE_DESCRIPTOR_SET_LAYOUT_CREATE_INFO    # VulkanGen.ReplaceStructureType

    pNext = next == C_NULL ? C_NULL : (next_ref = Ref(next.vk); preserve(next_ref, next); unsafe_pointer(next_ref))    # VulkanGen.GeneratePointers
    bindingCount = pointer_length(bindings)    # VulkanGen.ComputeLengthArgument
    pBindings = bindings == C_NULL ? C_NULL : (bindings_ref = Ref(bindings.vk);
                                               preserve(bindings_ref, bindings);
                                               unsafe_pointer(bindings_ref))    # VulkanGen.GeneratePointers
    vk = VkDescriptorSetLayoutCreateInfo(sType, pNext, flags, bindingCount, pBindings)

    DescriptorSetLayoutCreateInfo(bindings, vk)
end

function WriteDescriptorSet(dst_set, dst_binding, dst_array_element, descriptor_type, image_info, buffer_info, texel_buffer_view; next = C_NULL)
    sType = VK_STRUCTURE_TYPE_WRITE_DESCRIPTOR_SET    # VulkanGen.ReplaceStructureType

    pNext = next == C_NULL ? C_NULL : (next_ref = Ref(next.vk); preserve(next_ref, next); unsafe_pointer(next_ref))    # VulkanGen.GeneratePointers
    descriptorCount = pointer_length(image_info)    # VulkanGen.ComputeLengthArgument
    pImageInfo = image_info == C_NULL ? C_NULL : (image_info_ref = Ref(image_info.vk);
                                                  preserve(image_info_ref, image_info);
                                                  unsafe_pointer(image_info_ref))    # VulkanGen.GeneratePointers
    pBufferInfo = buffer_info == C_NULL ? C_NULL : (buffer_info_ref = Ref(buffer_info.vk);
                                                    preserve(buffer_info_ref, buffer_info);
                                                    unsafe_pointer(buffer_info_ref))    # VulkanGen.GeneratePointers
    pTexelBufferView = texel_buffer_view == C_NULL ? C_NULL : (texel_buffer_view_ref = Ref(texel_buffer_view.vk);
                                                               preserve(texel_buffer_view_ref, texel_buffer_view);
                                                               unsafe_pointer(texel_buffer_view_ref))    # VulkanGen.GeneratePointers
    vk = VkWriteDescriptorSet(sType, pNext, dst_set, dst_binding, dst_array_element, descriptorCount, descriptor_type, pImageInfo, pBufferInfo, pTexelBufferView)

    WriteDescriptorSet(dst_set, dst_binding, dst_array_element, descriptor_type, image_info, buffer_info, texel_buffer_view, vk)
end

function AttachmentDescription(format, samples, load_op, store_op, stencil_load_op, stencil_store_op, initial_layout, final_layout; flags = 0)
    vk = VkAttachmentDescription(flags, format, samples, load_op, store_op, stencil_load_op, stencil_store_op, initial_layout, final_layout)

    AttachmentDescription(format, samples, load_op, store_op, stencil_load_op, stencil_store_op, initial_layout, final_layout, vk)
end

function AttachmentReference(attachment, layout)
    vk = VkAttachmentReference(attachment, layout)

    AttachmentReference(attachment, layout, vk)
end

function FramebufferCreateInfo(render_pass, attachments, width, height, layers; next = C_NULL, flags = 0)
    sType = VK_STRUCTURE_TYPE_FRAMEBUFFER_CREATE_INFO    # VulkanGen.ReplaceStructureType

    pNext = next == C_NULL ? C_NULL : (next_ref = Ref(next.vk); preserve(next_ref, next); unsafe_pointer(next_ref))    # VulkanGen.GeneratePointers
    attachmentCount = pointer_length(attachments)    # VulkanGen.ComputeLengthArgument
    pAttachments = attachments == C_NULL ? C_NULL : (attachments_ref = Ref(attachments.vk);
                                                     preserve(attachments_ref, attachments);
                                                     unsafe_pointer(attachments_ref))    # VulkanGen.GeneratePointers
    vk = VkFramebufferCreateInfo(sType, pNext, flags, render_pass, attachmentCount, pAttachments, width, height, layers)

    FramebufferCreateInfo(render_pass, attachments, width, height, layers, vk)
end

function SubpassDescription(pipeline_bind_point, input_attachments, color_attachments, preserve_attachments; depth_stencil_attachment = nothing, resolve_attachments = nothing, flags = 0)
    pipelineBindPoint = pipeline_bind_point == C_NULL ? C_NULL : (pipeline_bind_point_ref = Ref(pipeline_bind_point.vk);
                                                                  preserve(pipeline_bind_point_ref, pipeline_bind_point);
                                                                  unsafe_pointer(pipeline_bind_point_ref))    # VulkanGen.GeneratePointers
    inputAttachmentCount = pointer_length(input_attachments)    # VulkanGen.ComputeLengthArgument
    pInputAttachments = input_attachments == C_NULL ? C_NULL : (input_attachments_ref = Ref(input_attachments.vk);
                                                                preserve(input_attachments_ref, input_attachments);
                                                                unsafe_pointer(input_attachments_ref))    # VulkanGen.GeneratePointers
    colorAttachmentCount = pointer_length(color_attachments)    # VulkanGen.ComputeLengthArgument
    pColorAttachments = color_attachments == C_NULL ? C_NULL : (color_attachments_ref = Ref(color_attachments.vk);
                                                                preserve(color_attachments_ref, color_attachments);
                                                                unsafe_pointer(color_attachments_ref))    # VulkanGen.GeneratePointers
    pResolveAttachments = isnothing(resolve_attachments) ? C_NULL : resolve_attachments    # VulkanGen.AddDefaults

    pResolveAttachments = pResolveAttachments == C_NULL ? C_NULL : (pResolveAttachments_ref = Ref(pResolveAttachments.vk);
                                                                    preserve(pResolveAttachments_ref, resolve_attachments);
                                                                    unsafe_pointer(pResolveAttachments_ref))    # VulkanGen.GeneratePointers
    pDepthStencilAttachment = isnothing(depth_stencil_attachment) ? C_NULL : depth_stencil_attachment    # VulkanGen.AddDefaults
    pDepthStencilAttachment = pDepthStencilAttachment == C_NULL ? C_NULL : (pDepthStencilAttachment_ref = Ref(pDepthStencilAttachment.vk);
                                                                            preserve(pDepthStencilAttachment_ref, depth_stencil_attachment);
                                                                            unsafe_pointer(pDepthStencilAttachment_ref))    # VulkanGen.GeneratePointers
    preserveAttachmentCount = pointer_length(preserve_attachments)    # VulkanGen.ComputeLengthArgument
    preserveAttachmentCount = preserveAttachmentCount == C_NULL ? C_NULL : (preserveAttachmentCount_ref = Ref(preserveAttachmentCount.vk);
                                                                            preserve(preserveAttachmentCount_ref, preserve_attachment_count);
                                                                            unsafe_pointer(preserveAttachmentCount_ref))    # VulkanGen.GeneratePointers
    pPreserveAttachments = preserve_attachments == C_NULL ? C_NULL : (preserve_attachments_ref = Ref(preserve_attachments.vk);
                                                                      preserve(preserve_attachments_ref, preserve_attachments);
                                                                      unsafe_pointer(preserve_attachments_ref))    # VulkanGen.GeneratePointers
    vk = VkSubpassDescription(flags, pipelineBindPoint, inputAttachmentCount, pInputAttachments, colorAttachmentCount, pColorAttachments, pResolveAttachments, pDepthStencilAttachment,
                              preserveAttachmentCount, pPreserveAttachments)

    SubpassDescription(pipeline_bind_point, input_attachments, color_attachments, resolve_attachments, depth_stencil_attachment, preserve_attachments, vk)
end

function SubpassDependency(src_subpass, dst_subpass, src_stage_mask, dst_stage_mask; dependency_flags = nothing, src_access_mask = nothing, dst_access_mask = nothing)
    srcAccessMask = isnothing(src_access_mask) ? 0 : src_access_mask    # VulkanGen.AddDefaults
    dstAccessMask = isnothing(dst_access_mask) ? 0 : dst_access_mask    # VulkanGen.AddDefaults

    dependencyFlags = isnothing(dependency_flags) ? 0 : dependency_flags    # VulkanGen.AddDefaults
    vk = VkSubpassDependency(src_subpass, dst_subpass, src_stage_mask, dst_stage_mask, srcAccessMask, dstAccessMask, dependencyFlags)

    SubpassDependency(src_subpass, dst_subpass, src_stage_mask, dst_stage_mask, src_access_mask, dst_access_mask, dependency_flags, vk)
end

function RenderPassCreateInfo(attachments, subpasses, dependencies; next = C_NULL, flags = 0)
    sType = VK_STRUCTURE_TYPE_RENDER_PASS_CREATE_INFO    # VulkanGen.ReplaceStructureType

    pNext = next == C_NULL ? C_NULL : (next_ref = Ref(next.vk); preserve(next_ref, next); unsafe_pointer(next_ref))    # VulkanGen.GeneratePointers
    attachmentCount = pointer_length(attachments)    # VulkanGen.ComputeLengthArgument
    pAttachments = attachments == C_NULL ? C_NULL : (attachments_ref = Ref(attachments.vk);
                                                     preserve(attachments_ref, attachments);
                                                     unsafe_pointer(attachments_ref))    # VulkanGen.GeneratePointers
    subpassCount = pointer_length(subpasses)    # VulkanGen.ComputeLengthArgument
    pSubpasses = subpasses == C_NULL ? C_NULL : (subpasses_ref = Ref(subpasses.vk);
                                                 preserve(subpasses_ref, subpasses);
                                                 unsafe_pointer(subpasses_ref))    # VulkanGen.GeneratePointers
    dependencyCount = pointer_length(dependencies)    # VulkanGen.ComputeLengthArgument
    pDependencies = dependencies == C_NULL ? C_NULL : (dependencies_ref = Ref(dependencies.vk);
                                                       preserve(dependencies_ref, dependencies);
                                                       unsafe_pointer(dependencies_ref))    # VulkanGen.GeneratePointers
    vk = VkRenderPassCreateInfo(sType, pNext, flags, attachmentCount, pAttachments, subpassCount, pSubpasses, dependencyCount, pDependencies)

    RenderPassCreateInfo(attachments, subpasses, dependencies, vk)
end

function CommandPoolCreateInfo(queue_family_index; next = C_NULL, flags = 0)
    sType = VK_STRUCTURE_TYPE_COMMAND_POOL_CREATE_INFO    # VulkanGen.ReplaceStructureType

    pNext = next == C_NULL ? C_NULL : (next_ref = Ref(next.vk); preserve(next_ref, next); unsafe_pointer(next_ref))    # VulkanGen.GeneratePointers
    vk = VkCommandPoolCreateInfo(sType, pNext, flags, queue_family_index)

    CommandPoolCreateInfo(queue_family_index, vk)
end

function CommandBufferAllocateInfo(command_pool, level, command_buffer_count; next = C_NULL)
    sType = VK_STRUCTURE_TYPE_COMMAND_BUFFER_ALLOCATE_INFO    # VulkanGen.ReplaceStructureType

    pNext = next == C_NULL ? C_NULL : (next_ref = Ref(next.vk); preserve(next_ref, next); unsafe_pointer(next_ref))    # VulkanGen.GeneratePointers
    vk = VkCommandBufferAllocateInfo(sType, pNext, command_pool, level, command_buffer_count)

    CommandBufferAllocateInfo(command_pool, level, command_buffer_count, vk)
end

function CommandBufferInheritanceInfo(subpass, occlusion_query_enable; framebuffer = nothing, query_flags = nothing, pipeline_statistics = nothing, render_pass = nothing, next = C_NULL)
    sType = VK_STRUCTURE_TYPE_COMMAND_BUFFER_INHERITANCE_INFO    # VulkanGen.ReplaceStructureType

    pNext = next == C_NULL ? C_NULL : (next_ref = Ref(next.vk); preserve(next_ref, next); unsafe_pointer(next_ref))    # VulkanGen.GeneratePointers
    renderPass = isnothing(render_pass) ? VK_NULL_HANDLE : render_pass    # VulkanGen.AddDefaults

    framebuffer = isnothing(framebuffer) ? VK_NULL_HANDLE : framebuffer    # VulkanGen.AddDefaults
    queryFlags = isnothing(query_flags) ? 0 : query_flags    # VulkanGen.AddDefaults
    pipelineStatistics = isnothing(pipeline_statistics) ? 0 : pipeline_statistics    # VulkanGen.AddDefaults
    pipelineStatistics = pipelineStatistics == C_NULL ? C_NULL : (pipelineStatistics_ref = Ref(pipelineStatistics.vk);
                                                                  preserve(pipelineStatistics_ref, pipeline_statistics);
                                                                  unsafe_pointer(pipelineStatistics_ref))    # VulkanGen.GeneratePointers
    vk = VkCommandBufferInheritanceInfo(sType, pNext, renderPass, subpass, framebuffer, occlusion_query_enable, queryFlags, pipelineStatistics)

    CommandBufferInheritanceInfo(render_pass, subpass, framebuffer, occlusion_query_enable, query_flags, pipeline_statistics, vk)
end

function CommandBufferBeginInfo(; inheritance_info = nothing, next = C_NULL, flags = 0)
    sType = VK_STRUCTURE_TYPE_COMMAND_BUFFER_BEGIN_INFO    # VulkanGen.ReplaceStructureType

    pNext = next == C_NULL ? C_NULL : (next_ref = Ref(next.vk); preserve(next_ref, next); unsafe_pointer(next_ref))    # VulkanGen.GeneratePointers
    pInheritanceInfo = isnothing(inheritance_info) ? C_NULL : inheritance_info    # VulkanGen.AddDefaults

    pInheritanceInfo = pInheritanceInfo == C_NULL ? C_NULL : (pInheritanceInfo_ref = Ref(pInheritanceInfo.vk);
                                                              preserve(pInheritanceInfo_ref, inheritance_info);
                                                              unsafe_pointer(pInheritanceInfo_ref))    # VulkanGen.GeneratePointers
    vk = VkCommandBufferBeginInfo(sType, pNext, flags, pInheritanceInfo)

    CommandBufferBeginInfo(inheritance_info, vk)
end

function BufferCopy(src_offset, dst_offset, size)
    vk = VkBufferCopy(src_offset, dst_offset, size)

    BufferCopy(src_offset, dst_offset, size, vk)
end

function ImageSubresourceLayers(aspect_mask, mip_level, base_array_layer, layer_count)
    vk = VkImageSubresourceLayers(aspect_mask, mip_level, base_array_layer, layer_count)

    ImageSubresourceLayers(aspect_mask, mip_level, base_array_layer, layer_count, vk)
end

function BufferImageCopy(buffer_offset, buffer_row_length, buffer_image_height, image_subresource, image_offset, image_extent)
    vk = VkBufferImageCopy(buffer_offset, buffer_row_length, buffer_image_height, image_subresource, image_offset, image_extent)

    BufferImageCopy(buffer_offset, buffer_row_length, buffer_image_height, image_subresource, image_offset, image_extent, vk)
end

function ClearColorValue(float32)
    vk = VkClearColorValue(float32)

    ClearColorValue(float32, vk)
end

function ClearDepthStencilValue(depth, stencil)
    vk = VkClearDepthStencilValue(depth, stencil)

    ClearDepthStencilValue(depth, stencil, vk)
end

function ClearValue(color)
    vk = VkClearValue(color)

    ClearValue(color, vk)
end

function ClearAttachment(aspect_mask, color_attachment, clear_value)
    vk = VkClearAttachment(aspect_mask, color_attachment, clear_value)

    ClearAttachment(aspect_mask, color_attachment, clear_value, vk)
end

function ClearRect(rect, base_array_layer, layer_count)
    vk = VkClearRect(rect, base_array_layer, layer_count)

    ClearRect(rect, base_array_layer, layer_count, vk)
end

function ImageBlit(src_subresource, src_offsets, dst_subresource, dst_offsets)
    vk = VkImageBlit(src_subresource, src_offsets, dst_subresource, dst_offsets)

    ImageBlit(src_subresource, src_offsets, dst_subresource, dst_offsets, vk)
end

function ImageCopy(src_subresource, src_offset, dst_subresource, dst_offset, extent)
    vk = VkImageCopy(src_subresource, src_offset, dst_subresource, dst_offset, extent)

    ImageCopy(src_subresource, src_offset, dst_subresource, dst_offset, extent, vk)
end

function ImageResolve(src_subresource, src_offset, dst_subresource, dst_offset, extent)
    vk = VkImageResolve(src_subresource, src_offset, dst_subresource, dst_offset, extent)

    ImageResolve(src_subresource, src_offset, dst_subresource, dst_offset, extent, vk)
end

function RenderPassBeginInfo(render_pass, framebuffer, render_area, clear_values; next = C_NULL)
    sType = VK_STRUCTURE_TYPE_RENDER_PASS_BEGIN_INFO    # VulkanGen.ReplaceStructureType

    pNext = next == C_NULL ? C_NULL : (next_ref = Ref(next.vk); preserve(next_ref, next); unsafe_pointer(next_ref))    # VulkanGen.GeneratePointers
    clearValueCount = pointer_length(clear_values)    # VulkanGen.ComputeLengthArgument
    pClearValues = clear_values == C_NULL ? C_NULL : (clear_values_ref = Ref(clear_values.vk);
                                                      preserve(clear_values_ref, clear_values);
                                                      unsafe_pointer(clear_values_ref))    # VulkanGen.GeneratePointers
    vk = VkRenderPassBeginInfo(sType, pNext, render_pass, framebuffer, render_area, clearValueCount, pClearValues)

    RenderPassBeginInfo(render_pass, framebuffer, render_area, clear_values, vk)
end

function BindBufferMemoryInfo(buffer, memory, memory_offset; next = C_NULL)
    sType = VK_STRUCTURE_TYPE_BIND_BUFFER_MEMORY_INFO    # VulkanGen.ReplaceStructureType

    pNext = next == C_NULL ? C_NULL : (next_ref = Ref(next.vk); preserve(next_ref, next); unsafe_pointer(next_ref))    # VulkanGen.GeneratePointers
    vk = VkBindBufferMemoryInfo(sType, pNext, buffer, memory, memory_offset)

    BindBufferMemoryInfo(buffer, memory, memory_offset, vk)
end

function BindImageMemoryInfo(image, memory, memory_offset; next = C_NULL)
    sType = VK_STRUCTURE_TYPE_BIND_IMAGE_MEMORY_INFO    # VulkanGen.ReplaceStructureType

    pNext = next == C_NULL ? C_NULL : (next_ref = Ref(next.vk); preserve(next_ref, next); unsafe_pointer(next_ref))    # VulkanGen.GeneratePointers
    vk = VkBindImageMemoryInfo(sType, pNext, image, memory, memory_offset)

    BindImageMemoryInfo(image, memory, memory_offset, vk)
end

function PhysicalDevice16BitStorageFeatures(storage_buffer_16_bit_access, uniform_and_storage_buffer_16_bit_access, storage_push_constant_16, storage_input_output_16; next = C_NULL)
    sType = VK_STRUCTURE_TYPE_PHYSICAL_DEVICE_16BIT_STORAGE_FEATURES    # VulkanGen.ReplaceStructureType

    pNext = next == C_NULL ? C_NULL : (next_ref = Ref(next.vk); preserve(next_ref, next); unsafe_pointer(next_ref))    # VulkanGen.GeneratePointers
    vk = VkPhysicalDevice16BitStorageFeatures(sType, pNext, storage_buffer_16_bit_access, uniform_and_storage_buffer_16_bit_access, storage_push_constant_16, storage_input_output_16)

    PhysicalDevice16BitStorageFeatures(storage_buffer_16_bit_access, uniform_and_storage_buffer_16_bit_access, storage_push_constant_16, storage_input_output_16, vk)
end

function MemoryDedicatedRequirements(prefers_dedicated_allocation, requires_dedicated_allocation; next = C_NULL)
    sType = VK_STRUCTURE_TYPE_MEMORY_DEDICATED_REQUIREMENTS    # VulkanGen.ReplaceStructureType

    pNext = next == C_NULL ? C_NULL : (next_ref = Ref(next.vk); preserve(next_ref, next); unsafe_pointer(next_ref))    # VulkanGen.GeneratePointers
    prefersDedicatedAllocation = prefers_dedicated_allocation == C_NULL ? C_NULL : (prefers_dedicated_allocation_ref = Ref(prefers_dedicated_allocation.vk);
                                                                                    preserve(prefers_dedicated_allocation_ref, prefers_dedicated_allocation);
                                                                                    unsafe_pointer(prefers_dedicated_allocation_ref))    # VulkanGen.GeneratePointers
    vk = VkMemoryDedicatedRequirements(sType, pNext, prefersDedicatedAllocation, requires_dedicated_allocation)

    MemoryDedicatedRequirements(prefers_dedicated_allocation, requires_dedicated_allocation, vk)
end

function MemoryDedicatedAllocateInfo(; image = nothing, buffer = nothing, next = C_NULL)
    sType = VK_STRUCTURE_TYPE_MEMORY_DEDICATED_ALLOCATE_INFO    # VulkanGen.ReplaceStructureType

    pNext = next == C_NULL ? C_NULL : (next_ref = Ref(next.vk); preserve(next_ref, next); unsafe_pointer(next_ref))    # VulkanGen.GeneratePointers
    image = isnothing(image) ? VK_NULL_HANDLE : image    # VulkanGen.AddDefaults
    buffer = isnothing(buffer) ? VK_NULL_HANDLE : buffer    # VulkanGen.AddDefaults

    vk = VkMemoryDedicatedAllocateInfo(sType, pNext, image, buffer)

    MemoryDedicatedAllocateInfo(image, buffer, vk)
end

function MemoryAllocateFlagsInfo(device_mask; next = C_NULL, flags = 0)
    sType = VK_STRUCTURE_TYPE_MEMORY_ALLOCATE_FLAGS_INFO    # VulkanGen.ReplaceStructureType

    pNext = next == C_NULL ? C_NULL : (next_ref = Ref(next.vk); preserve(next_ref, next); unsafe_pointer(next_ref))    # VulkanGen.GeneratePointers
    vk = VkMemoryAllocateFlagsInfo(sType, pNext, flags, device_mask)

    MemoryAllocateFlagsInfo(device_mask, vk)
end

function DeviceGroupRenderPassBeginInfo(device_mask, device_render_areas; next = C_NULL)
    sType = VK_STRUCTURE_TYPE_DEVICE_GROUP_RENDER_PASS_BEGIN_INFO    # VulkanGen.ReplaceStructureType

    pNext = next == C_NULL ? C_NULL : (next_ref = Ref(next.vk); preserve(next_ref, next); unsafe_pointer(next_ref))    # VulkanGen.GeneratePointers
    deviceRenderAreaCount = pointer_length(device_render_areas)    # VulkanGen.ComputeLengthArgument
    pDeviceRenderAreas = device_render_areas == C_NULL ? C_NULL : (device_render_areas_ref = Ref(device_render_areas.vk);
                                                                   preserve(device_render_areas_ref, device_render_areas);
                                                                   unsafe_pointer(device_render_areas_ref))    # VulkanGen.GeneratePointers
    vk = VkDeviceGroupRenderPassBeginInfo(sType, pNext, device_mask, deviceRenderAreaCount, pDeviceRenderAreas)

    DeviceGroupRenderPassBeginInfo(device_mask, device_render_areas, vk)
end

function DeviceGroupCommandBufferBeginInfo(device_mask; next = C_NULL)
    sType = VK_STRUCTURE_TYPE_DEVICE_GROUP_COMMAND_BUFFER_BEGIN_INFO    # VulkanGen.ReplaceStructureType

    pNext = next == C_NULL ? C_NULL : (next_ref = Ref(next.vk); preserve(next_ref, next); unsafe_pointer(next_ref))    # VulkanGen.GeneratePointers
    vk = VkDeviceGroupCommandBufferBeginInfo(sType, pNext, device_mask)

    DeviceGroupCommandBufferBeginInfo(device_mask, vk)
end

function DeviceGroupSubmitInfo(wait_semaphore_device_indices, command_buffer_device_masks, signal_semaphore_device_indices; next = C_NULL)
    sType = VK_STRUCTURE_TYPE_DEVICE_GROUP_SUBMIT_INFO    # VulkanGen.ReplaceStructureType

    pNext = next == C_NULL ? C_NULL : (next_ref = Ref(next.vk); preserve(next_ref, next); unsafe_pointer(next_ref))    # VulkanGen.GeneratePointers
    waitSemaphoreCount = pointer_length(wait_semaphore_device_indices)    # VulkanGen.ComputeLengthArgument
    pWaitSemaphoreDeviceIndices = wait_semaphore_device_indices == C_NULL ? C_NULL : (wait_semaphore_device_indices_ref = Ref(wait_semaphore_device_indices.vk);
                                                                                      preserve(wait_semaphore_device_indices_ref, wait_semaphore_device_indices);
                                                                                      unsafe_pointer(wait_semaphore_device_indices_ref))    # VulkanGen.GeneratePointers
    commandBufferCount = pointer_length(command_buffer_device_masks)    # VulkanGen.ComputeLengthArgument
    pCommandBufferDeviceMasks = command_buffer_device_masks == C_NULL ? C_NULL : (command_buffer_device_masks_ref = Ref(command_buffer_device_masks.vk);
                                                                                  preserve(command_buffer_device_masks_ref, command_buffer_device_masks);
                                                                                  unsafe_pointer(command_buffer_device_masks_ref))    # VulkanGen.GeneratePointers
    signalSemaphoreCount = pointer_length(signal_semaphore_device_indices)    # VulkanGen.ComputeLengthArgument
    pSignalSemaphoreDeviceIndices = signal_semaphore_device_indices == C_NULL ? C_NULL : (signal_semaphore_device_indices_ref = Ref(signal_semaphore_device_indices.vk);
                                                                                          preserve(signal_semaphore_device_indices_ref, signal_semaphore_device_indices);
                                                                                          unsafe_pointer(signal_semaphore_device_indices_ref))    # VulkanGen.GeneratePointers
    vk = VkDeviceGroupSubmitInfo(sType, pNext, waitSemaphoreCount, pWaitSemaphoreDeviceIndices, commandBufferCount, pCommandBufferDeviceMasks, signalSemaphoreCount, pSignalSemaphoreDeviceIndices)

    DeviceGroupSubmitInfo(wait_semaphore_device_indices, command_buffer_device_masks, signal_semaphore_device_indices, vk)
end

function DeviceGroupBindSparseInfo(resource_device_index, memory_device_index; next = C_NULL)
    sType = VK_STRUCTURE_TYPE_DEVICE_GROUP_BIND_SPARSE_INFO    # VulkanGen.ReplaceStructureType

    pNext = next == C_NULL ? C_NULL : (next_ref = Ref(next.vk); preserve(next_ref, next); unsafe_pointer(next_ref))    # VulkanGen.GeneratePointers
    vk = VkDeviceGroupBindSparseInfo(sType, pNext, resource_device_index, memory_device_index)

    DeviceGroupBindSparseInfo(resource_device_index, memory_device_index, vk)
end

function BindBufferMemoryDeviceGroupInfo(device_indices; next = C_NULL)
    sType = VK_STRUCTURE_TYPE_BIND_BUFFER_MEMORY_DEVICE_GROUP_INFO    # VulkanGen.ReplaceStructureType

    pNext = next == C_NULL ? C_NULL : (next_ref = Ref(next.vk); preserve(next_ref, next); unsafe_pointer(next_ref))    # VulkanGen.GeneratePointers
    deviceIndexCount = pointer_length(device_indices)    # VulkanGen.ComputeLengthArgument
    pDeviceIndices = device_indices == C_NULL ? C_NULL : (device_indices_ref = Ref(device_indices.vk);
                                                          preserve(device_indices_ref, device_indices);
                                                          unsafe_pointer(device_indices_ref))    # VulkanGen.GeneratePointers
    vk = VkBindBufferMemoryDeviceGroupInfo(sType, pNext, deviceIndexCount, pDeviceIndices)

    BindBufferMemoryDeviceGroupInfo(device_indices, vk)
end

function BindImageMemoryDeviceGroupInfo(device_indices, split_instance_bind_regions; next = C_NULL)
    sType = VK_STRUCTURE_TYPE_BIND_IMAGE_MEMORY_DEVICE_GROUP_INFO    # VulkanGen.ReplaceStructureType

    pNext = next == C_NULL ? C_NULL : (next_ref = Ref(next.vk); preserve(next_ref, next); unsafe_pointer(next_ref))    # VulkanGen.GeneratePointers
    deviceIndexCount = pointer_length(device_indices)    # VulkanGen.ComputeLengthArgument
    pDeviceIndices = device_indices == C_NULL ? C_NULL : (device_indices_ref = Ref(device_indices.vk);
                                                          preserve(device_indices_ref, device_indices);
                                                          unsafe_pointer(device_indices_ref))    # VulkanGen.GeneratePointers
    splitInstanceBindRegionCount = pointer_length(split_instance_bind_regions)    # VulkanGen.ComputeLengthArgument
    pSplitInstanceBindRegions = split_instance_bind_regions == C_NULL ? C_NULL : (split_instance_bind_regions_ref = Ref(split_instance_bind_regions.vk);
                                                                                  preserve(split_instance_bind_regions_ref, split_instance_bind_regions);
                                                                                  unsafe_pointer(split_instance_bind_regions_ref))    # VulkanGen.GeneratePointers
    vk = VkBindImageMemoryDeviceGroupInfo(sType, pNext, deviceIndexCount, pDeviceIndices, splitInstanceBindRegionCount, pSplitInstanceBindRegions)

    BindImageMemoryDeviceGroupInfo(device_indices, split_instance_bind_regions, vk)
end

function DeviceGroupDeviceCreateInfo(physical_devices; next = C_NULL)
    sType = VK_STRUCTURE_TYPE_DEVICE_GROUP_DEVICE_CREATE_INFO    # VulkanGen.ReplaceStructureType

    pNext = next == C_NULL ? C_NULL : (next_ref = Ref(next.vk); preserve(next_ref, next); unsafe_pointer(next_ref))    # VulkanGen.GeneratePointers
    physicalDeviceCount = pointer_length(physical_devices)    # VulkanGen.ComputeLengthArgument
    physicalDeviceCount = physicalDeviceCount == C_NULL ? C_NULL : (physicalDeviceCount_ref = Ref(physicalDeviceCount.vk);
                                                                    preserve(physicalDeviceCount_ref, physical_device_count);
                                                                    unsafe_pointer(physicalDeviceCount_ref))    # VulkanGen.GeneratePointers
    pPhysicalDevices = physical_devices == C_NULL ? C_NULL : (physical_devices_ref = Ref(physical_devices.vk);
                                                              preserve(physical_devices_ref, physical_devices);
                                                              unsafe_pointer(physical_devices_ref))    # VulkanGen.GeneratePointers
    vk = VkDeviceGroupDeviceCreateInfo(sType, pNext, physicalDeviceCount, pPhysicalDevices)

    DeviceGroupDeviceCreateInfo(physical_devices, vk)
end

function BufferMemoryRequirementsInfo2(buffer; next = C_NULL)
    sType = VK_STRUCTURE_TYPE_BUFFER_MEMORY_REQUIREMENTS_INFO_2    # VulkanGen.ReplaceStructureType

    pNext = next == C_NULL ? C_NULL : (next_ref = Ref(next.vk); preserve(next_ref, next); unsafe_pointer(next_ref))    # VulkanGen.GeneratePointers
    vk = VkBufferMemoryRequirementsInfo2(sType, pNext, buffer)

    BufferMemoryRequirementsInfo2(buffer, vk)
end

function ImageMemoryRequirementsInfo2(image; next = C_NULL)
    sType = VK_STRUCTURE_TYPE_IMAGE_MEMORY_REQUIREMENTS_INFO_2    # VulkanGen.ReplaceStructureType

    pNext = next == C_NULL ? C_NULL : (next_ref = Ref(next.vk); preserve(next_ref, next); unsafe_pointer(next_ref))    # VulkanGen.GeneratePointers
    vk = VkImageMemoryRequirementsInfo2(sType, pNext, image)

    ImageMemoryRequirementsInfo2(image, vk)
end

function ImageSparseMemoryRequirementsInfo2(image; next = C_NULL)
    sType = VK_STRUCTURE_TYPE_IMAGE_SPARSE_MEMORY_REQUIREMENTS_INFO_2    # VulkanGen.ReplaceStructureType

    pNext = next == C_NULL ? C_NULL : (next_ref = Ref(next.vk); preserve(next_ref, next); unsafe_pointer(next_ref))    # VulkanGen.GeneratePointers
    vk = VkImageSparseMemoryRequirementsInfo2(sType, pNext, image)

    ImageSparseMemoryRequirementsInfo2(image, vk)
end

function MemoryRequirements2(memory_requirements; next = C_NULL)
    sType = VK_STRUCTURE_TYPE_MEMORY_REQUIREMENTS_2    # VulkanGen.ReplaceStructureType

    pNext = next == C_NULL ? C_NULL : (next_ref = Ref(next.vk); preserve(next_ref, next); unsafe_pointer(next_ref))    # VulkanGen.GeneratePointers
    vk = VkMemoryRequirements2(sType, pNext, memory_requirements)

    MemoryRequirements2(memory_requirements, vk)
end

function PhysicalDeviceFeatures2(features; next = C_NULL)
    sType = VK_STRUCTURE_TYPE_PHYSICAL_DEVICE_FEATURES_2    # VulkanGen.ReplaceStructureType

    pNext = next == C_NULL ? C_NULL : (next_ref = Ref(next.vk); preserve(next_ref, next); unsafe_pointer(next_ref))    # VulkanGen.GeneratePointers
    vk = VkPhysicalDeviceFeatures2(sType, pNext, features)

    PhysicalDeviceFeatures2(features, vk)
end

function PhysicalDeviceImageFormatInfo2(format, type, tiling, usage; next = C_NULL, flags = 0)
    sType = VK_STRUCTURE_TYPE_PHYSICAL_DEVICE_IMAGE_FORMAT_INFO_2    # VulkanGen.ReplaceStructureType

    pNext = next == C_NULL ? C_NULL : (next_ref = Ref(next.vk); preserve(next_ref, next); unsafe_pointer(next_ref))    # VulkanGen.GeneratePointers
    vk = VkPhysicalDeviceImageFormatInfo2(sType, pNext, format, type, tiling, usage, flags)

    PhysicalDeviceImageFormatInfo2(format, type, tiling, usage, vk)
end

function PhysicalDeviceSparseImageFormatInfo2(format, type, samples, usage, tiling; next = C_NULL)
    sType = VK_STRUCTURE_TYPE_PHYSICAL_DEVICE_SPARSE_IMAGE_FORMAT_INFO_2    # VulkanGen.ReplaceStructureType

    pNext = next == C_NULL ? C_NULL : (next_ref = Ref(next.vk); preserve(next_ref, next); unsafe_pointer(next_ref))    # VulkanGen.GeneratePointers
    vk = VkPhysicalDeviceSparseImageFormatInfo2(sType, pNext, format, type, samples, usage, tiling)

    PhysicalDeviceSparseImageFormatInfo2(format, type, samples, usage, tiling, vk)
end

function InputAttachmentAspectReference(subpass, input_attachment_index, aspect_mask)
    vk = VkInputAttachmentAspectReference(subpass, input_attachment_index, aspect_mask)

    InputAttachmentAspectReference(subpass, input_attachment_index, aspect_mask, vk)
end

function RenderPassInputAttachmentAspectCreateInfo(aspect_references; next = C_NULL)
    sType = VK_STRUCTURE_TYPE_RENDER_PASS_INPUT_ATTACHMENT_ASPECT_CREATE_INFO    # VulkanGen.ReplaceStructureType

    pNext = next == C_NULL ? C_NULL : (next_ref = Ref(next.vk); preserve(next_ref, next); unsafe_pointer(next_ref))    # VulkanGen.GeneratePointers
    aspectReferenceCount = pointer_length(aspect_references)    # VulkanGen.ComputeLengthArgument
    pAspectReferences = aspect_references == C_NULL ? C_NULL : (aspect_references_ref = Ref(aspect_references.vk);
                                                                preserve(aspect_references_ref, aspect_references);
                                                                unsafe_pointer(aspect_references_ref))    # VulkanGen.GeneratePointers
    vk = VkRenderPassInputAttachmentAspectCreateInfo(sType, pNext, aspectReferenceCount, pAspectReferences)

    RenderPassInputAttachmentAspectCreateInfo(aspect_references, vk)
end

function ImageViewUsageCreateInfo(usage; next = C_NULL)
    sType = VK_STRUCTURE_TYPE_IMAGE_VIEW_USAGE_CREATE_INFO    # VulkanGen.ReplaceStructureType

    pNext = next == C_NULL ? C_NULL : (next_ref = Ref(next.vk); preserve(next_ref, next); unsafe_pointer(next_ref))    # VulkanGen.GeneratePointers
    vk = VkImageViewUsageCreateInfo(sType, pNext, usage)

    ImageViewUsageCreateInfo(usage, vk)
end

function PipelineTessellationDomainOriginStateCreateInfo(domain_origin; next = C_NULL)
    sType = VK_STRUCTURE_TYPE_PIPELINE_TESSELLATION_DOMAIN_ORIGIN_STATE_CREATE_INFO    # VulkanGen.ReplaceStructureType

    pNext = next == C_NULL ? C_NULL : (next_ref = Ref(next.vk); preserve(next_ref, next); unsafe_pointer(next_ref))    # VulkanGen.GeneratePointers
    vk = VkPipelineTessellationDomainOriginStateCreateInfo(sType, pNext, domain_origin)

    PipelineTessellationDomainOriginStateCreateInfo(domain_origin, vk)
end

function RenderPassMultiviewCreateInfo(view_masks, view_offsets, correlation_masks; next = C_NULL)
    sType = VK_STRUCTURE_TYPE_RENDER_PASS_MULTIVIEW_CREATE_INFO    # VulkanGen.ReplaceStructureType

    pNext = next == C_NULL ? C_NULL : (next_ref = Ref(next.vk); preserve(next_ref, next); unsafe_pointer(next_ref))    # VulkanGen.GeneratePointers
    subpassCount = pointer_length(view_masks)    # VulkanGen.ComputeLengthArgument
    pViewMasks = view_masks == C_NULL ? C_NULL : (view_masks_ref = Ref(view_masks.vk);
                                                  preserve(view_masks_ref, view_masks);
                                                  unsafe_pointer(view_masks_ref))    # VulkanGen.GeneratePointers
    dependencyCount = pointer_length(view_offsets)    # VulkanGen.ComputeLengthArgument
    pViewOffsets = view_offsets == C_NULL ? C_NULL : (view_offsets_ref = Ref(view_offsets.vk);
                                                      preserve(view_offsets_ref, view_offsets);
                                                      unsafe_pointer(view_offsets_ref))    # VulkanGen.GeneratePointers
    correlationMaskCount = pointer_length(correlation_masks)    # VulkanGen.ComputeLengthArgument
    pCorrelationMasks = correlation_masks == C_NULL ? C_NULL : (correlation_masks_ref = Ref(correlation_masks.vk);
                                                                preserve(correlation_masks_ref, correlation_masks);
                                                                unsafe_pointer(correlation_masks_ref))    # VulkanGen.GeneratePointers
    vk = VkRenderPassMultiviewCreateInfo(sType, pNext, subpassCount, pViewMasks, dependencyCount, pViewOffsets, correlationMaskCount, pCorrelationMasks)

    RenderPassMultiviewCreateInfo(view_masks, view_offsets, correlation_masks, vk)
end

function PhysicalDeviceMultiviewFeatures(multiview, multiview_geometry_shader, multiview_tessellation_shader; next = C_NULL)
    sType = VK_STRUCTURE_TYPE_PHYSICAL_DEVICE_MULTIVIEW_FEATURES    # VulkanGen.ReplaceStructureType

    pNext = next == C_NULL ? C_NULL : (next_ref = Ref(next.vk); preserve(next_ref, next); unsafe_pointer(next_ref))    # VulkanGen.GeneratePointers
    vk = VkPhysicalDeviceMultiviewFeatures(sType, pNext, multiview, multiview_geometry_shader, multiview_tessellation_shader)

    PhysicalDeviceMultiviewFeatures(multiview, multiview_geometry_shader, multiview_tessellation_shader, vk)
end

function PhysicalDeviceVariablePointersFeatures(variable_pointers_storage_buffer, variable_pointers; next = C_NULL)
    sType = VK_STRUCTURE_TYPE_PHYSICAL_DEVICE_VARIABLE_POINTERS_FEATURES    # VulkanGen.ReplaceStructureType

    pNext = next == C_NULL ? C_NULL : (next_ref = Ref(next.vk); preserve(next_ref, next); unsafe_pointer(next_ref))    # VulkanGen.GeneratePointers
    vk = VkPhysicalDeviceVariablePointersFeatures(sType, pNext, variable_pointers_storage_buffer, variable_pointers)

    PhysicalDeviceVariablePointersFeatures(variable_pointers_storage_buffer, variable_pointers, vk)
end

function PhysicalDeviceProtectedMemoryFeatures(protected_memory; next = C_NULL)
    sType = VK_STRUCTURE_TYPE_PHYSICAL_DEVICE_PROTECTED_MEMORY_FEATURES    # VulkanGen.ReplaceStructureType

    pNext = next == C_NULL ? C_NULL : (next_ref = Ref(next.vk); preserve(next_ref, next); unsafe_pointer(next_ref))    # VulkanGen.GeneratePointers
    protectedMemory = protected_memory == C_NULL ? C_NULL : (protected_memory_ref = Ref(protected_memory.vk);
                                                             preserve(protected_memory_ref, protected_memory);
                                                             unsafe_pointer(protected_memory_ref))    # VulkanGen.GeneratePointers
    vk = VkPhysicalDeviceProtectedMemoryFeatures(sType, pNext, protectedMemory)

    PhysicalDeviceProtectedMemoryFeatures(protected_memory, vk)
end

function DeviceQueueInfo2(queue_family_index, queue_index; next = C_NULL, flags = 0)
    sType = VK_STRUCTURE_TYPE_DEVICE_QUEUE_INFO_2    # VulkanGen.ReplaceStructureType

    pNext = next == C_NULL ? C_NULL : (next_ref = Ref(next.vk); preserve(next_ref, next); unsafe_pointer(next_ref))    # VulkanGen.GeneratePointers
    vk = VkDeviceQueueInfo2(sType, pNext, flags, queue_family_index, queue_index)

    DeviceQueueInfo2(queue_family_index, queue_index, vk)
end

function ProtectedSubmitInfo(protected_submit; next = C_NULL)
    sType = VK_STRUCTURE_TYPE_PROTECTED_SUBMIT_INFO    # VulkanGen.ReplaceStructureType

    pNext = next == C_NULL ? C_NULL : (next_ref = Ref(next.vk); preserve(next_ref, next); unsafe_pointer(next_ref))    # VulkanGen.GeneratePointers
    protectedSubmit = protected_submit == C_NULL ? C_NULL : (protected_submit_ref = Ref(protected_submit.vk);
                                                             preserve(protected_submit_ref, protected_submit);
                                                             unsafe_pointer(protected_submit_ref))    # VulkanGen.GeneratePointers
    vk = VkProtectedSubmitInfo(sType, pNext, protectedSubmit)

    ProtectedSubmitInfo(protected_submit, vk)
end

function SamplerYcbcrConversionCreateInfo(format, ycbcr_model, ycbcr_range, components, x_chroma_offset, y_chroma_offset, chroma_filter, force_explicit_reconstruction; next = C_NULL)
    sType = VK_STRUCTURE_TYPE_SAMPLER_YCBCR_CONVERSION_CREATE_INFO    # VulkanGen.ReplaceStructureType

    pNext = next == C_NULL ? C_NULL : (next_ref = Ref(next.vk); preserve(next_ref, next); unsafe_pointer(next_ref))    # VulkanGen.GeneratePointers
    vk = VkSamplerYcbcrConversionCreateInfo(sType, pNext, format, ycbcr_model, ycbcr_range, components, x_chroma_offset, y_chroma_offset, chroma_filter, force_explicit_reconstruction)

    SamplerYcbcrConversionCreateInfo(format, ycbcr_model, ycbcr_range, components, x_chroma_offset, y_chroma_offset, chroma_filter, force_explicit_reconstruction, vk)
end

function SamplerYcbcrConversionInfo(conversion; next = C_NULL)
    sType = VK_STRUCTURE_TYPE_SAMPLER_YCBCR_CONVERSION_INFO    # VulkanGen.ReplaceStructureType

    pNext = next == C_NULL ? C_NULL : (next_ref = Ref(next.vk); preserve(next_ref, next); unsafe_pointer(next_ref))    # VulkanGen.GeneratePointers
    vk = VkSamplerYcbcrConversionInfo(sType, pNext, conversion)

    SamplerYcbcrConversionInfo(conversion, vk)
end

function BindImagePlaneMemoryInfo(plane_aspect; next = C_NULL)
    sType = VK_STRUCTURE_TYPE_BIND_IMAGE_PLANE_MEMORY_INFO    # VulkanGen.ReplaceStructureType

    pNext = next == C_NULL ? C_NULL : (next_ref = Ref(next.vk); preserve(next_ref, next); unsafe_pointer(next_ref))    # VulkanGen.GeneratePointers
    planeAspect = plane_aspect == C_NULL ? C_NULL : (plane_aspect_ref = Ref(plane_aspect.vk);
                                                     preserve(plane_aspect_ref, plane_aspect);
                                                     unsafe_pointer(plane_aspect_ref))    # VulkanGen.GeneratePointers
    vk = VkBindImagePlaneMemoryInfo(sType, pNext, planeAspect)

    BindImagePlaneMemoryInfo(plane_aspect, vk)
end

function ImagePlaneMemoryRequirementsInfo(plane_aspect; next = C_NULL)
    sType = VK_STRUCTURE_TYPE_IMAGE_PLANE_MEMORY_REQUIREMENTS_INFO    # VulkanGen.ReplaceStructureType

    pNext = next == C_NULL ? C_NULL : (next_ref = Ref(next.vk); preserve(next_ref, next); unsafe_pointer(next_ref))    # VulkanGen.GeneratePointers
    planeAspect = plane_aspect == C_NULL ? C_NULL : (plane_aspect_ref = Ref(plane_aspect.vk);
                                                     preserve(plane_aspect_ref, plane_aspect);
                                                     unsafe_pointer(plane_aspect_ref))    # VulkanGen.GeneratePointers
    vk = VkImagePlaneMemoryRequirementsInfo(sType, pNext, planeAspect)

    ImagePlaneMemoryRequirementsInfo(plane_aspect, vk)
end

function PhysicalDeviceSamplerYcbcrConversionFeatures(sampler_ycbcr_conversion; next = C_NULL)
    sType = VK_STRUCTURE_TYPE_PHYSICAL_DEVICE_SAMPLER_YCBCR_CONVERSION_FEATURES    # VulkanGen.ReplaceStructureType

    pNext = next == C_NULL ? C_NULL : (next_ref = Ref(next.vk); preserve(next_ref, next); unsafe_pointer(next_ref))    # VulkanGen.GeneratePointers
    vk = VkPhysicalDeviceSamplerYcbcrConversionFeatures(sType, pNext, sampler_ycbcr_conversion)

    PhysicalDeviceSamplerYcbcrConversionFeatures(sampler_ycbcr_conversion, vk)
end

function DescriptorUpdateTemplateEntry(dst_binding, dst_array_element, descriptor_count, descriptor_type, offset, stride)
    vk = VkDescriptorUpdateTemplateEntry(dst_binding, dst_array_element, descriptor_count, descriptor_type, offset, stride)

    DescriptorUpdateTemplateEntry(dst_binding, dst_array_element, descriptor_count, descriptor_type, offset, stride, vk)
end

function DescriptorUpdateTemplateCreateInfo(descriptor_update_entries, template_type, descriptor_set_layout, pipeline_bind_point, pipeline_layout, set; next = C_NULL, flags = 0)
    sType = VK_STRUCTURE_TYPE_DESCRIPTOR_UPDATE_TEMPLATE_CREATE_INFO    # VulkanGen.ReplaceStructureType

    pNext = next == C_NULL ? C_NULL : (next_ref = Ref(next.vk); preserve(next_ref, next); unsafe_pointer(next_ref))    # VulkanGen.GeneratePointers
    descriptorUpdateEntryCount = pointer_length(descriptor_update_entries)    # VulkanGen.ComputeLengthArgument
    pDescriptorUpdateEntries = descriptor_update_entries == C_NULL ? C_NULL : (descriptor_update_entries_ref = Ref(descriptor_update_entries.vk);
                                                                               preserve(descriptor_update_entries_ref, descriptor_update_entries);
                                                                               unsafe_pointer(descriptor_update_entries_ref))    # VulkanGen.GeneratePointers
    pipelineBindPoint = pipeline_bind_point == C_NULL ? C_NULL : (pipeline_bind_point_ref = Ref(pipeline_bind_point.vk);
                                                                  preserve(pipeline_bind_point_ref, pipeline_bind_point);
                                                                  unsafe_pointer(pipeline_bind_point_ref))    # VulkanGen.GeneratePointers
    pipelineLayout = pipeline_layout == C_NULL ? C_NULL : (pipeline_layout_ref = Ref(pipeline_layout.vk);
                                                           preserve(pipeline_layout_ref, pipeline_layout);
                                                           unsafe_pointer(pipeline_layout_ref))    # VulkanGen.GeneratePointers
    vk = VkDescriptorUpdateTemplateCreateInfo(sType, pNext, flags, descriptorUpdateEntryCount, pDescriptorUpdateEntries, template_type, descriptor_set_layout, pipelineBindPoint, pipelineLayout, set)

    DescriptorUpdateTemplateCreateInfo(descriptor_update_entries, template_type, descriptor_set_layout, pipeline_bind_point, pipeline_layout, set, vk)
end

function PhysicalDeviceExternalImageFormatInfo(; handle_type = nothing, next = C_NULL)
    sType = VK_STRUCTURE_TYPE_PHYSICAL_DEVICE_EXTERNAL_IMAGE_FORMAT_INFO    # VulkanGen.ReplaceStructureType

    pNext = next == C_NULL ? C_NULL : (next_ref = Ref(next.vk); preserve(next_ref, next); unsafe_pointer(next_ref))    # VulkanGen.GeneratePointers
    handleType = isnothing(handle_type) ? 0 : handle_type    # VulkanGen.AddDefaults

    vk = VkPhysicalDeviceExternalImageFormatInfo(sType, pNext, handleType)

    PhysicalDeviceExternalImageFormatInfo(handle_type, vk)
end

function PhysicalDeviceExternalBufferInfo(usage, handle_type; next = C_NULL, flags = 0)
    sType = VK_STRUCTURE_TYPE_PHYSICAL_DEVICE_EXTERNAL_BUFFER_INFO    # VulkanGen.ReplaceStructureType

    pNext = next == C_NULL ? C_NULL : (next_ref = Ref(next.vk); preserve(next_ref, next); unsafe_pointer(next_ref))    # VulkanGen.GeneratePointers
    vk = VkPhysicalDeviceExternalBufferInfo(sType, pNext, flags, usage, handle_type)

    PhysicalDeviceExternalBufferInfo(usage, handle_type, vk)
end

function ExternalMemoryImageCreateInfo(handle_types; next = C_NULL)
    sType = VK_STRUCTURE_TYPE_EXTERNAL_MEMORY_IMAGE_CREATE_INFO    # VulkanGen.ReplaceStructureType

    pNext = next == C_NULL ? C_NULL : (next_ref = Ref(next.vk); preserve(next_ref, next); unsafe_pointer(next_ref))    # VulkanGen.GeneratePointers
    vk = VkExternalMemoryImageCreateInfo(sType, pNext, handle_types)

    ExternalMemoryImageCreateInfo(handle_types, vk)
end

function ExternalMemoryBufferCreateInfo(; handle_types = nothing, next = C_NULL)
    sType = VK_STRUCTURE_TYPE_EXTERNAL_MEMORY_BUFFER_CREATE_INFO    # VulkanGen.ReplaceStructureType

    pNext = next == C_NULL ? C_NULL : (next_ref = Ref(next.vk); preserve(next_ref, next); unsafe_pointer(next_ref))    # VulkanGen.GeneratePointers
    handleTypes = isnothing(handle_types) ? 0 : handle_types    # VulkanGen.AddDefaults

    vk = VkExternalMemoryBufferCreateInfo(sType, pNext, handleTypes)

    ExternalMemoryBufferCreateInfo(handle_types, vk)
end

function ExportMemoryAllocateInfo(; handle_types = nothing, next = C_NULL)
    sType = VK_STRUCTURE_TYPE_EXPORT_MEMORY_ALLOCATE_INFO    # VulkanGen.ReplaceStructureType

    pNext = next == C_NULL ? C_NULL : (next_ref = Ref(next.vk); preserve(next_ref, next); unsafe_pointer(next_ref))    # VulkanGen.GeneratePointers
    handleTypes = isnothing(handle_types) ? 0 : handle_types    # VulkanGen.AddDefaults

    vk = VkExportMemoryAllocateInfo(sType, pNext, handleTypes)

    ExportMemoryAllocateInfo(handle_types, vk)
end

function PhysicalDeviceExternalFenceInfo(handle_type; next = C_NULL)
    sType = VK_STRUCTURE_TYPE_PHYSICAL_DEVICE_EXTERNAL_FENCE_INFO    # VulkanGen.ReplaceStructureType

    pNext = next == C_NULL ? C_NULL : (next_ref = Ref(next.vk); preserve(next_ref, next); unsafe_pointer(next_ref))    # VulkanGen.GeneratePointers
    vk = VkPhysicalDeviceExternalFenceInfo(sType, pNext, handle_type)

    PhysicalDeviceExternalFenceInfo(handle_type, vk)
end

function ExportFenceCreateInfo(; handle_types = nothing, next = C_NULL)
    sType = VK_STRUCTURE_TYPE_EXPORT_FENCE_CREATE_INFO    # VulkanGen.ReplaceStructureType

    pNext = next == C_NULL ? C_NULL : (next_ref = Ref(next.vk); preserve(next_ref, next); unsafe_pointer(next_ref))    # VulkanGen.GeneratePointers
    handleTypes = isnothing(handle_types) ? 0 : handle_types    # VulkanGen.AddDefaults

    vk = VkExportFenceCreateInfo(sType, pNext, handleTypes)

    ExportFenceCreateInfo(handle_types, vk)
end

function ExportSemaphoreCreateInfo(; handle_types = nothing, next = C_NULL)
    sType = VK_STRUCTURE_TYPE_EXPORT_SEMAPHORE_CREATE_INFO    # VulkanGen.ReplaceStructureType

    pNext = next == C_NULL ? C_NULL : (next_ref = Ref(next.vk); preserve(next_ref, next); unsafe_pointer(next_ref))    # VulkanGen.GeneratePointers
    handleTypes = isnothing(handle_types) ? 0 : handle_types    # VulkanGen.AddDefaults

    vk = VkExportSemaphoreCreateInfo(sType, pNext, handleTypes)

    ExportSemaphoreCreateInfo(handle_types, vk)
end

function PhysicalDeviceExternalSemaphoreInfo(handle_type; next = C_NULL)
    sType = VK_STRUCTURE_TYPE_PHYSICAL_DEVICE_EXTERNAL_SEMAPHORE_INFO    # VulkanGen.ReplaceStructureType

    pNext = next == C_NULL ? C_NULL : (next_ref = Ref(next.vk); preserve(next_ref, next); unsafe_pointer(next_ref))    # VulkanGen.GeneratePointers
    vk = VkPhysicalDeviceExternalSemaphoreInfo(sType, pNext, handle_type)

    PhysicalDeviceExternalSemaphoreInfo(handle_type, vk)
end

function DescriptorSetLayoutSupport(supported; next = C_NULL)
    sType = VK_STRUCTURE_TYPE_DESCRIPTOR_SET_LAYOUT_SUPPORT    # VulkanGen.ReplaceStructureType

    pNext = next == C_NULL ? C_NULL : (next_ref = Ref(next.vk); preserve(next_ref, next); unsafe_pointer(next_ref))    # VulkanGen.GeneratePointers
    vk = VkDescriptorSetLayoutSupport(sType, pNext, supported)

    DescriptorSetLayoutSupport(supported, vk)
end

function PhysicalDeviceShaderDrawParametersFeatures(shader_draw_parameters; next = C_NULL)
    sType = VK_STRUCTURE_TYPE_PHYSICAL_DEVICE_SHADER_DRAW_PARAMETERS_FEATURES    # VulkanGen.ReplaceStructureType

    pNext = next == C_NULL ? C_NULL : (next_ref = Ref(next.vk); preserve(next_ref, next); unsafe_pointer(next_ref))    # VulkanGen.GeneratePointers
    vk = VkPhysicalDeviceShaderDrawParametersFeatures(sType, pNext, shader_draw_parameters)

    PhysicalDeviceShaderDrawParametersFeatures(shader_draw_parameters, vk)
end

function PhysicalDeviceVulkan11Features(storage_buffer_16_bit_access, uniform_and_storage_buffer_16_bit_access, storage_push_constant_16, storage_input_output_16, multiview, multiview_geometry_shader,
                                        multiview_tessellation_shader, variable_pointers_storage_buffer, variable_pointers, protected_memory, sampler_ycbcr_conversion, shader_draw_parameters;
                                        next = C_NULL)
    sType = VK_STRUCTURE_TYPE_PHYSICAL_DEVICE_VULKAN_1_1_FEATURES    # VulkanGen.ReplaceStructureType

    pNext = next == C_NULL ? C_NULL : (next_ref = Ref(next.vk); preserve(next_ref, next); unsafe_pointer(next_ref))    # VulkanGen.GeneratePointers
    protectedMemory = protected_memory == C_NULL ? C_NULL : (protected_memory_ref = Ref(protected_memory.vk);
                                                             preserve(protected_memory_ref, protected_memory);
                                                             unsafe_pointer(protected_memory_ref))    # VulkanGen.GeneratePointers
    vk = VkPhysicalDeviceVulkan11Features(sType, pNext, storage_buffer_16_bit_access, uniform_and_storage_buffer_16_bit_access, storage_push_constant_16, storage_input_output_16, multiview,
                                          multiview_geometry_shader, multiview_tessellation_shader, variable_pointers_storage_buffer, variable_pointers, protectedMemory, sampler_ycbcr_conversion,
                                          shader_draw_parameters)

    PhysicalDeviceVulkan11Features(storage_buffer_16_bit_access, uniform_and_storage_buffer_16_bit_access, storage_push_constant_16, storage_input_output_16, multiview, multiview_geometry_shader,
                                   multiview_tessellation_shader, variable_pointers_storage_buffer, variable_pointers, protected_memory, sampler_ycbcr_conversion, shader_draw_parameters, vk)
end

function PhysicalDeviceVulkan12Features(sampler_mirror_clamp_to_edge, draw_indirect_count, storage_buffer_8_bit_access, uniform_and_storage_buffer_8_bit_access, storage_push_constant_8,
                                        shader_buffer_int_64_atomics, shader_shared_int_64_atomics, shader_float_16, shader_int_8, descriptor_indexing, shader_input_attachment_array_dynamic_indexing,
                                        shader_uniform_texel_buffer_array_dynamic_indexing, shader_storage_texel_buffer_array_dynamic_indexing, shader_uniform_buffer_array_non_uniform_indexing,
                                        shader_sampled_image_array_non_uniform_indexing, shader_storage_buffer_array_non_uniform_indexing, shader_storage_image_array_non_uniform_indexing,
                                        shader_input_attachment_array_non_uniform_indexing, shader_uniform_texel_buffer_array_non_uniform_indexing,
                                        shader_storage_texel_buffer_array_non_uniform_indexing, descriptor_binding_uniform_buffer_update_after_bind, descriptor_binding_sampled_image_update_after_bind,
                                        descriptor_binding_storage_image_update_after_bind, descriptor_binding_storage_buffer_update_after_bind,
                                        descriptor_binding_uniform_texel_buffer_update_after_bind, descriptor_binding_storage_texel_buffer_update_after_bind,
                                        descriptor_binding_update_unused_while_pending, descriptor_binding_partially_bound, descriptor_binding_variable_descriptor_count, runtime_descriptor_array,
                                        sampler_filter_minmax, scalar_block_layout, imageless_framebuffer, uniform_buffer_standard_layout, shader_subgroup_extended_types,
                                        separate_depth_stencil_layouts, host_query_reset, timeline_semaphore, buffer_device_address, buffer_device_address_capture_replay,
                                        buffer_device_address_multi_device, vulkan_memory_model, vulkan_memory_model_device_scope, vulkan_memory_model_availability_visibility_chains,
                                        shader_output_viewport_index, shader_output_layer, subgroup_broadcast_dynamic_id; next = C_NULL)
    sType = VK_STRUCTURE_TYPE_PHYSICAL_DEVICE_VULKAN_1_2_FEATURES    # VulkanGen.ReplaceStructureType

    pNext = next == C_NULL ? C_NULL : (next_ref = Ref(next.vk); preserve(next_ref, next); unsafe_pointer(next_ref))    # VulkanGen.GeneratePointers
    vk = VkPhysicalDeviceVulkan12Features(sType, pNext, sampler_mirror_clamp_to_edge, draw_indirect_count, storage_buffer_8_bit_access, uniform_and_storage_buffer_8_bit_access,
                                          storage_push_constant_8, shader_buffer_int_64_atomics, shader_shared_int_64_atomics, shader_float_16, shader_int_8, descriptor_indexing,
                                          shader_input_attachment_array_dynamic_indexing, shader_uniform_texel_buffer_array_dynamic_indexing, shader_storage_texel_buffer_array_dynamic_indexing,
                                          shader_uniform_buffer_array_non_uniform_indexing, shader_sampled_image_array_non_uniform_indexing, shader_storage_buffer_array_non_uniform_indexing,
                                          shader_storage_image_array_non_uniform_indexing, shader_input_attachment_array_non_uniform_indexing, shader_uniform_texel_buffer_array_non_uniform_indexing,
                                          shader_storage_texel_buffer_array_non_uniform_indexing, descriptor_binding_uniform_buffer_update_after_bind,
                                          descriptor_binding_sampled_image_update_after_bind, descriptor_binding_storage_image_update_after_bind, descriptor_binding_storage_buffer_update_after_bind,
                                          descriptor_binding_uniform_texel_buffer_update_after_bind, descriptor_binding_storage_texel_buffer_update_after_bind,
                                          descriptor_binding_update_unused_while_pending, descriptor_binding_partially_bound, descriptor_binding_variable_descriptor_count, runtime_descriptor_array,
                                          sampler_filter_minmax, scalar_block_layout, imageless_framebuffer, uniform_buffer_standard_layout, shader_subgroup_extended_types,
                                          separate_depth_stencil_layouts, host_query_reset, timeline_semaphore, buffer_device_address, buffer_device_address_capture_replay,
                                          buffer_device_address_multi_device, vulkan_memory_model, vulkan_memory_model_device_scope, vulkan_memory_model_availability_visibility_chains,
                                          shader_output_viewport_index, shader_output_layer, subgroup_broadcast_dynamic_id)

    PhysicalDeviceVulkan12Features(sampler_mirror_clamp_to_edge, draw_indirect_count, storage_buffer_8_bit_access, uniform_and_storage_buffer_8_bit_access, storage_push_constant_8,
                                   shader_buffer_int_64_atomics, shader_shared_int_64_atomics, shader_float_16, shader_int_8, descriptor_indexing, shader_input_attachment_array_dynamic_indexing,
                                   shader_uniform_texel_buffer_array_dynamic_indexing, shader_storage_texel_buffer_array_dynamic_indexing, shader_uniform_buffer_array_non_uniform_indexing,
                                   shader_sampled_image_array_non_uniform_indexing, shader_storage_buffer_array_non_uniform_indexing, shader_storage_image_array_non_uniform_indexing,
                                   shader_input_attachment_array_non_uniform_indexing, shader_uniform_texel_buffer_array_non_uniform_indexing, shader_storage_texel_buffer_array_non_uniform_indexing,
                                   descriptor_binding_uniform_buffer_update_after_bind, descriptor_binding_sampled_image_update_after_bind, descriptor_binding_storage_image_update_after_bind,
                                   descriptor_binding_storage_buffer_update_after_bind, descriptor_binding_uniform_texel_buffer_update_after_bind,
                                   descriptor_binding_storage_texel_buffer_update_after_bind, descriptor_binding_update_unused_while_pending, descriptor_binding_partially_bound,
                                   descriptor_binding_variable_descriptor_count, runtime_descriptor_array, sampler_filter_minmax, scalar_block_layout, imageless_framebuffer,
                                   uniform_buffer_standard_layout, shader_subgroup_extended_types, separate_depth_stencil_layouts, host_query_reset, timeline_semaphore, buffer_device_address,
                                   buffer_device_address_capture_replay, buffer_device_address_multi_device, vulkan_memory_model, vulkan_memory_model_device_scope,
                                   vulkan_memory_model_availability_visibility_chains, shader_output_viewport_index, shader_output_layer, subgroup_broadcast_dynamic_id, vk)
end

function ConformanceVersion(major, minor, subminor, patch)
    patch = patch == C_NULL ? C_NULL : (patch_ref = Ref(patch.vk); preserve(patch_ref, patch); unsafe_pointer(patch_ref))    # VulkanGen.GeneratePointers
    vk = VkConformanceVersion(major, minor, subminor, patch)

    ConformanceVersion(major, minor, subminor, patch, vk)
end

function ImageFormatListCreateInfo(view_formats; next = C_NULL)
    sType = VK_STRUCTURE_TYPE_IMAGE_FORMAT_LIST_CREATE_INFO    # VulkanGen.ReplaceStructureType

    pNext = next == C_NULL ? C_NULL : (next_ref = Ref(next.vk); preserve(next_ref, next); unsafe_pointer(next_ref))    # VulkanGen.GeneratePointers
    viewFormatCount = pointer_length(view_formats)    # VulkanGen.ComputeLengthArgument
    pViewFormats = view_formats == C_NULL ? C_NULL : (view_formats_ref = Ref(view_formats.vk);
                                                      preserve(view_formats_ref, view_formats);
                                                      unsafe_pointer(view_formats_ref))    # VulkanGen.GeneratePointers
    vk = VkImageFormatListCreateInfo(sType, pNext, viewFormatCount, pViewFormats)

    ImageFormatListCreateInfo(view_formats, vk)
end

function AttachmentDescription2(format, samples, load_op, store_op, stencil_load_op, stencil_store_op, initial_layout, final_layout; next = C_NULL, flags = 0)
    sType = VK_STRUCTURE_TYPE_ATTACHMENT_DESCRIPTION_2    # VulkanGen.ReplaceStructureType

    pNext = next == C_NULL ? C_NULL : (next_ref = Ref(next.vk); preserve(next_ref, next); unsafe_pointer(next_ref))    # VulkanGen.GeneratePointers
    vk = VkAttachmentDescription2(sType, pNext, flags, format, samples, load_op, store_op, stencil_load_op, stencil_store_op, initial_layout, final_layout)

    AttachmentDescription2(format, samples, load_op, store_op, stencil_load_op, stencil_store_op, initial_layout, final_layout, vk)
end

function AttachmentReference2(attachment, layout, aspect_mask; next = C_NULL)
    sType = VK_STRUCTURE_TYPE_ATTACHMENT_REFERENCE_2    # VulkanGen.ReplaceStructureType

    pNext = next == C_NULL ? C_NULL : (next_ref = Ref(next.vk); preserve(next_ref, next); unsafe_pointer(next_ref))    # VulkanGen.GeneratePointers
    vk = VkAttachmentReference2(sType, pNext, attachment, layout, aspect_mask)

    AttachmentReference2(attachment, layout, aspect_mask, vk)
end

function SubpassDescription2(pipeline_bind_point, view_mask, input_attachments, color_attachments, preserve_attachments; depth_stencil_attachment = nothing, resolve_attachments = nothing,
                             next = C_NULL, flags = 0)
    sType = VK_STRUCTURE_TYPE_SUBPASS_DESCRIPTION_2    # VulkanGen.ReplaceStructureType

    pNext = next == C_NULL ? C_NULL : (next_ref = Ref(next.vk); preserve(next_ref, next); unsafe_pointer(next_ref))    # VulkanGen.GeneratePointers
    pipelineBindPoint = pipeline_bind_point == C_NULL ? C_NULL : (pipeline_bind_point_ref = Ref(pipeline_bind_point.vk);
                                                                  preserve(pipeline_bind_point_ref, pipeline_bind_point);
                                                                  unsafe_pointer(pipeline_bind_point_ref))    # VulkanGen.GeneratePointers
    inputAttachmentCount = pointer_length(input_attachments)    # VulkanGen.ComputeLengthArgument
    pInputAttachments = input_attachments == C_NULL ? C_NULL : (input_attachments_ref = Ref(input_attachments.vk);
                                                                preserve(input_attachments_ref, input_attachments);
                                                                unsafe_pointer(input_attachments_ref))    # VulkanGen.GeneratePointers
    colorAttachmentCount = pointer_length(color_attachments)    # VulkanGen.ComputeLengthArgument
    pColorAttachments = color_attachments == C_NULL ? C_NULL : (color_attachments_ref = Ref(color_attachments.vk);
                                                                preserve(color_attachments_ref, color_attachments);
                                                                unsafe_pointer(color_attachments_ref))    # VulkanGen.GeneratePointers
    pResolveAttachments = isnothing(resolve_attachments) ? C_NULL : resolve_attachments    # VulkanGen.AddDefaults

    pResolveAttachments = pResolveAttachments == C_NULL ? C_NULL : (pResolveAttachments_ref = Ref(pResolveAttachments.vk);
                                                                    preserve(pResolveAttachments_ref, resolve_attachments);
                                                                    unsafe_pointer(pResolveAttachments_ref))    # VulkanGen.GeneratePointers
    pDepthStencilAttachment = isnothing(depth_stencil_attachment) ? C_NULL : depth_stencil_attachment    # VulkanGen.AddDefaults
    pDepthStencilAttachment = pDepthStencilAttachment == C_NULL ? C_NULL : (pDepthStencilAttachment_ref = Ref(pDepthStencilAttachment.vk);
                                                                            preserve(pDepthStencilAttachment_ref, depth_stencil_attachment);
                                                                            unsafe_pointer(pDepthStencilAttachment_ref))    # VulkanGen.GeneratePointers
    preserveAttachmentCount = pointer_length(preserve_attachments)    # VulkanGen.ComputeLengthArgument
    preserveAttachmentCount = preserveAttachmentCount == C_NULL ? C_NULL : (preserveAttachmentCount_ref = Ref(preserveAttachmentCount.vk);
                                                                            preserve(preserveAttachmentCount_ref, preserve_attachment_count);
                                                                            unsafe_pointer(preserveAttachmentCount_ref))    # VulkanGen.GeneratePointers
    pPreserveAttachments = preserve_attachments == C_NULL ? C_NULL : (preserve_attachments_ref = Ref(preserve_attachments.vk);
                                                                      preserve(preserve_attachments_ref, preserve_attachments);
                                                                      unsafe_pointer(preserve_attachments_ref))    # VulkanGen.GeneratePointers
    vk = VkSubpassDescription2(sType, pNext, flags, pipelineBindPoint, view_mask, inputAttachmentCount, pInputAttachments, colorAttachmentCount, pColorAttachments, pResolveAttachments,
                               pDepthStencilAttachment, preserveAttachmentCount, pPreserveAttachments)

    SubpassDescription2(pipeline_bind_point, view_mask, input_attachments, color_attachments, resolve_attachments, depth_stencil_attachment, preserve_attachments, vk)
end

function SubpassDependency2(src_subpass, dst_subpass, src_stage_mask, dst_stage_mask; dependency_flags = nothing, view_offset = nothing, src_access_mask = nothing, dst_access_mask = nothing,
                            next = C_NULL)
    sType = VK_STRUCTURE_TYPE_SUBPASS_DEPENDENCY_2    # VulkanGen.ReplaceStructureType

    pNext = next == C_NULL ? C_NULL : (next_ref = Ref(next.vk); preserve(next_ref, next); unsafe_pointer(next_ref))    # VulkanGen.GeneratePointers
    srcAccessMask = isnothing(src_access_mask) ? 0 : src_access_mask    # VulkanGen.AddDefaults
    dstAccessMask = isnothing(dst_access_mask) ? 0 : dst_access_mask    # VulkanGen.AddDefaults

    dependencyFlags = isnothing(dependency_flags) ? 0 : dependency_flags    # VulkanGen.AddDefaults
    viewOffset = isnothing(view_offset) ? 0 : view_offset    # VulkanGen.AddDefaults
    vk = VkSubpassDependency2(sType, pNext, src_subpass, dst_subpass, src_stage_mask, dst_stage_mask, srcAccessMask, dstAccessMask, dependencyFlags, viewOffset)

    SubpassDependency2(src_subpass, dst_subpass, src_stage_mask, dst_stage_mask, src_access_mask, dst_access_mask, dependency_flags, view_offset, vk)
end

function RenderPassCreateInfo2(attachments, subpasses, dependencies, correlated_view_masks; next = C_NULL, flags = 0)
    sType = VK_STRUCTURE_TYPE_RENDER_PASS_CREATE_INFO_2    # VulkanGen.ReplaceStructureType

    pNext = next == C_NULL ? C_NULL : (next_ref = Ref(next.vk); preserve(next_ref, next); unsafe_pointer(next_ref))    # VulkanGen.GeneratePointers
    attachmentCount = pointer_length(attachments)    # VulkanGen.ComputeLengthArgument
    pAttachments = attachments == C_NULL ? C_NULL : (attachments_ref = Ref(attachments.vk);
                                                     preserve(attachments_ref, attachments);
                                                     unsafe_pointer(attachments_ref))    # VulkanGen.GeneratePointers
    subpassCount = pointer_length(subpasses)    # VulkanGen.ComputeLengthArgument
    pSubpasses = subpasses == C_NULL ? C_NULL : (subpasses_ref = Ref(subpasses.vk);
                                                 preserve(subpasses_ref, subpasses);
                                                 unsafe_pointer(subpasses_ref))    # VulkanGen.GeneratePointers
    dependencyCount = pointer_length(dependencies)    # VulkanGen.ComputeLengthArgument
    pDependencies = dependencies == C_NULL ? C_NULL : (dependencies_ref = Ref(dependencies.vk);
                                                       preserve(dependencies_ref, dependencies);
                                                       unsafe_pointer(dependencies_ref))    # VulkanGen.GeneratePointers
    correlatedViewMaskCount = pointer_length(correlated_view_masks)    # VulkanGen.ComputeLengthArgument
    pCorrelatedViewMasks = correlated_view_masks == C_NULL ? C_NULL : (correlated_view_masks_ref = Ref(correlated_view_masks.vk);
                                                                       preserve(correlated_view_masks_ref, correlated_view_masks);
                                                                       unsafe_pointer(correlated_view_masks_ref))    # VulkanGen.GeneratePointers
    vk = VkRenderPassCreateInfo2(sType, pNext, flags, attachmentCount, pAttachments, subpassCount, pSubpasses, dependencyCount, pDependencies, correlatedViewMaskCount, pCorrelatedViewMasks)

    RenderPassCreateInfo2(attachments, subpasses, dependencies, correlated_view_masks, vk)
end

function SubpassBeginInfo(contents; next = C_NULL)
    sType = VK_STRUCTURE_TYPE_SUBPASS_BEGIN_INFO    # VulkanGen.ReplaceStructureType

    pNext = next == C_NULL ? C_NULL : (next_ref = Ref(next.vk); preserve(next_ref, next); unsafe_pointer(next_ref))    # VulkanGen.GeneratePointers
    vk = VkSubpassBeginInfo(sType, pNext, contents)

    SubpassBeginInfo(contents, vk)
end

function SubpassEndInfo(; next = C_NULL)
    sType = VK_STRUCTURE_TYPE_SUBPASS_END_INFO    # VulkanGen.ReplaceStructureType

    pNext = next == C_NULL ? C_NULL : (next_ref = Ref(next.vk); preserve(next_ref, next); unsafe_pointer(next_ref))    # VulkanGen.GeneratePointers
    vk = VkSubpassEndInfo(sType, pNext)

    SubpassEndInfo(vk)
end

function PhysicalDevice8BitStorageFeatures(storage_buffer_8_bit_access, uniform_and_storage_buffer_8_bit_access, storage_push_constant_8; next = C_NULL)
    sType = VK_STRUCTURE_TYPE_PHYSICAL_DEVICE_8BIT_STORAGE_FEATURES    # VulkanGen.ReplaceStructureType

    pNext = next == C_NULL ? C_NULL : (next_ref = Ref(next.vk); preserve(next_ref, next); unsafe_pointer(next_ref))    # VulkanGen.GeneratePointers
    vk = VkPhysicalDevice8BitStorageFeatures(sType, pNext, storage_buffer_8_bit_access, uniform_and_storage_buffer_8_bit_access, storage_push_constant_8)

    PhysicalDevice8BitStorageFeatures(storage_buffer_8_bit_access, uniform_and_storage_buffer_8_bit_access, storage_push_constant_8, vk)
end

function PhysicalDeviceShaderAtomicInt64Features(shader_buffer_int_64_atomics, shader_shared_int_64_atomics; next = C_NULL)
    sType = VK_STRUCTURE_TYPE_PHYSICAL_DEVICE_SHADER_ATOMIC_INT64_FEATURES    # VulkanGen.ReplaceStructureType

    pNext = next == C_NULL ? C_NULL : (next_ref = Ref(next.vk); preserve(next_ref, next); unsafe_pointer(next_ref))    # VulkanGen.GeneratePointers
    vk = VkPhysicalDeviceShaderAtomicInt64Features(sType, pNext, shader_buffer_int_64_atomics, shader_shared_int_64_atomics)

    PhysicalDeviceShaderAtomicInt64Features(shader_buffer_int_64_atomics, shader_shared_int_64_atomics, vk)
end

function PhysicalDeviceShaderFloat16Int8Features(shader_float_16, shader_int_8; next = C_NULL)
    sType = VK_STRUCTURE_TYPE_PHYSICAL_DEVICE_SHADER_FLOAT16_INT8_FEATURES    # VulkanGen.ReplaceStructureType

    pNext = next == C_NULL ? C_NULL : (next_ref = Ref(next.vk); preserve(next_ref, next); unsafe_pointer(next_ref))    # VulkanGen.GeneratePointers
    vk = VkPhysicalDeviceShaderFloat16Int8Features(sType, pNext, shader_float_16, shader_int_8)

    PhysicalDeviceShaderFloat16Int8Features(shader_float_16, shader_int_8, vk)
end

function DescriptorSetLayoutBindingFlagsCreateInfo(binding_flags; next = C_NULL)
    sType = VK_STRUCTURE_TYPE_DESCRIPTOR_SET_LAYOUT_BINDING_FLAGS_CREATE_INFO    # VulkanGen.ReplaceStructureType

    pNext = next == C_NULL ? C_NULL : (next_ref = Ref(next.vk); preserve(next_ref, next); unsafe_pointer(next_ref))    # VulkanGen.GeneratePointers
    bindingCount = pointer_length(binding_flags)    # VulkanGen.ComputeLengthArgument
    pBindingFlags = binding_flags == C_NULL ? C_NULL : (binding_flags_ref = Ref(binding_flags.vk);
                                                        preserve(binding_flags_ref, binding_flags);
                                                        unsafe_pointer(binding_flags_ref))    # VulkanGen.GeneratePointers
    vk = VkDescriptorSetLayoutBindingFlagsCreateInfo(sType, pNext, bindingCount, pBindingFlags)

    DescriptorSetLayoutBindingFlagsCreateInfo(binding_flags, vk)
end

function PhysicalDeviceDescriptorIndexingFeatures(shader_input_attachment_array_dynamic_indexing, shader_uniform_texel_buffer_array_dynamic_indexing,
                                                  shader_storage_texel_buffer_array_dynamic_indexing, shader_uniform_buffer_array_non_uniform_indexing, shader_sampled_image_array_non_uniform_indexing,
                                                  shader_storage_buffer_array_non_uniform_indexing, shader_storage_image_array_non_uniform_indexing, shader_input_attachment_array_non_uniform_indexing,
                                                  shader_uniform_texel_buffer_array_non_uniform_indexing, shader_storage_texel_buffer_array_non_uniform_indexing,
                                                  descriptor_binding_uniform_buffer_update_after_bind, descriptor_binding_sampled_image_update_after_bind,
                                                  descriptor_binding_storage_image_update_after_bind, descriptor_binding_storage_buffer_update_after_bind,
                                                  descriptor_binding_uniform_texel_buffer_update_after_bind, descriptor_binding_storage_texel_buffer_update_after_bind,
                                                  descriptor_binding_update_unused_while_pending, descriptor_binding_partially_bound, descriptor_binding_variable_descriptor_count,
                                                  runtime_descriptor_array; next = C_NULL)
    sType = VK_STRUCTURE_TYPE_PHYSICAL_DEVICE_DESCRIPTOR_INDEXING_FEATURES    # VulkanGen.ReplaceStructureType

    pNext = next == C_NULL ? C_NULL : (next_ref = Ref(next.vk); preserve(next_ref, next); unsafe_pointer(next_ref))    # VulkanGen.GeneratePointers
    vk = VkPhysicalDeviceDescriptorIndexingFeatures(sType, pNext, shader_input_attachment_array_dynamic_indexing, shader_uniform_texel_buffer_array_dynamic_indexing,
                                                    shader_storage_texel_buffer_array_dynamic_indexing, shader_uniform_buffer_array_non_uniform_indexing,
                                                    shader_sampled_image_array_non_uniform_indexing, shader_storage_buffer_array_non_uniform_indexing, shader_storage_image_array_non_uniform_indexing,
                                                    shader_input_attachment_array_non_uniform_indexing, shader_uniform_texel_buffer_array_non_uniform_indexing,
                                                    shader_storage_texel_buffer_array_non_uniform_indexing, descriptor_binding_uniform_buffer_update_after_bind,
                                                    descriptor_binding_sampled_image_update_after_bind, descriptor_binding_storage_image_update_after_bind,
                                                    descriptor_binding_storage_buffer_update_after_bind, descriptor_binding_uniform_texel_buffer_update_after_bind,
                                                    descriptor_binding_storage_texel_buffer_update_after_bind, descriptor_binding_update_unused_while_pending, descriptor_binding_partially_bound,
                                                    descriptor_binding_variable_descriptor_count, runtime_descriptor_array)

    PhysicalDeviceDescriptorIndexingFeatures(shader_input_attachment_array_dynamic_indexing, shader_uniform_texel_buffer_array_dynamic_indexing, shader_storage_texel_buffer_array_dynamic_indexing,
                                             shader_uniform_buffer_array_non_uniform_indexing, shader_sampled_image_array_non_uniform_indexing, shader_storage_buffer_array_non_uniform_indexing,
                                             shader_storage_image_array_non_uniform_indexing, shader_input_attachment_array_non_uniform_indexing,
                                             shader_uniform_texel_buffer_array_non_uniform_indexing, shader_storage_texel_buffer_array_non_uniform_indexing,
                                             descriptor_binding_uniform_buffer_update_after_bind, descriptor_binding_sampled_image_update_after_bind,
                                             descriptor_binding_storage_image_update_after_bind, descriptor_binding_storage_buffer_update_after_bind,
                                             descriptor_binding_uniform_texel_buffer_update_after_bind, descriptor_binding_storage_texel_buffer_update_after_bind,
                                             descriptor_binding_update_unused_while_pending, descriptor_binding_partially_bound, descriptor_binding_variable_descriptor_count, runtime_descriptor_array,
                                             vk)
end

function DescriptorSetVariableDescriptorCountAllocateInfo(descriptor_counts; next = C_NULL)
    sType = VK_STRUCTURE_TYPE_DESCRIPTOR_SET_VARIABLE_DESCRIPTOR_COUNT_ALLOCATE_INFO    # VulkanGen.ReplaceStructureType

    pNext = next == C_NULL ? C_NULL : (next_ref = Ref(next.vk); preserve(next_ref, next); unsafe_pointer(next_ref))    # VulkanGen.GeneratePointers
    descriptorSetCount = pointer_length(descriptor_counts)    # VulkanGen.ComputeLengthArgument
    pDescriptorCounts = descriptor_counts == C_NULL ? C_NULL : (descriptor_counts_ref = Ref(descriptor_counts.vk);
                                                                preserve(descriptor_counts_ref, descriptor_counts);
                                                                unsafe_pointer(descriptor_counts_ref))    # VulkanGen.GeneratePointers
    vk = VkDescriptorSetVariableDescriptorCountAllocateInfo(sType, pNext, descriptorSetCount, pDescriptorCounts)

    DescriptorSetVariableDescriptorCountAllocateInfo(descriptor_counts, vk)
end

function DescriptorSetVariableDescriptorCountLayoutSupport(max_variable_descriptor_count; next = C_NULL)
    sType = VK_STRUCTURE_TYPE_DESCRIPTOR_SET_VARIABLE_DESCRIPTOR_COUNT_LAYOUT_SUPPORT    # VulkanGen.ReplaceStructureType

    pNext = next == C_NULL ? C_NULL : (next_ref = Ref(next.vk); preserve(next_ref, next); unsafe_pointer(next_ref))    # VulkanGen.GeneratePointers
    vk = VkDescriptorSetVariableDescriptorCountLayoutSupport(sType, pNext, max_variable_descriptor_count)

    DescriptorSetVariableDescriptorCountLayoutSupport(max_variable_descriptor_count, vk)
end

function SubpassDescriptionDepthStencilResolve(depth_resolve_mode, stencil_resolve_mode; depth_stencil_resolve_attachment = nothing, next = C_NULL)
    sType = VK_STRUCTURE_TYPE_SUBPASS_DESCRIPTION_DEPTH_STENCIL_RESOLVE    # VulkanGen.ReplaceStructureType

    pNext = next == C_NULL ? C_NULL : (next_ref = Ref(next.vk); preserve(next_ref, next); unsafe_pointer(next_ref))    # VulkanGen.GeneratePointers
    pDepthStencilResolveAttachment = isnothing(depth_stencil_resolve_attachment) ? C_NULL : depth_stencil_resolve_attachment    # VulkanGen.AddDefaults

    pDepthStencilResolveAttachment = pDepthStencilResolveAttachment == C_NULL ? C_NULL : (pDepthStencilResolveAttachment_ref = Ref(pDepthStencilResolveAttachment.vk);
                                                                                          preserve(pDepthStencilResolveAttachment_ref, depth_stencil_resolve_attachment);
                                                                                          unsafe_pointer(pDepthStencilResolveAttachment_ref))    # VulkanGen.GeneratePointers
    vk = VkSubpassDescriptionDepthStencilResolve(sType, pNext, depth_resolve_mode, stencil_resolve_mode, pDepthStencilResolveAttachment)

    SubpassDescriptionDepthStencilResolve(depth_resolve_mode, stencil_resolve_mode, depth_stencil_resolve_attachment, vk)
end

function PhysicalDeviceScalarBlockLayoutFeatures(scalar_block_layout; next = C_NULL)
    sType = VK_STRUCTURE_TYPE_PHYSICAL_DEVICE_SCALAR_BLOCK_LAYOUT_FEATURES    # VulkanGen.ReplaceStructureType

    pNext = next == C_NULL ? C_NULL : (next_ref = Ref(next.vk); preserve(next_ref, next); unsafe_pointer(next_ref))    # VulkanGen.GeneratePointers
    vk = VkPhysicalDeviceScalarBlockLayoutFeatures(sType, pNext, scalar_block_layout)

    PhysicalDeviceScalarBlockLayoutFeatures(scalar_block_layout, vk)
end

function ImageStencilUsageCreateInfo(stencil_usage; next = C_NULL)
    sType = VK_STRUCTURE_TYPE_IMAGE_STENCIL_USAGE_CREATE_INFO    # VulkanGen.ReplaceStructureType

    pNext = next == C_NULL ? C_NULL : (next_ref = Ref(next.vk); preserve(next_ref, next); unsafe_pointer(next_ref))    # VulkanGen.GeneratePointers
    vk = VkImageStencilUsageCreateInfo(sType, pNext, stencil_usage)

    ImageStencilUsageCreateInfo(stencil_usage, vk)
end

function SamplerReductionModeCreateInfo(reduction_mode; next = C_NULL)
    sType = VK_STRUCTURE_TYPE_SAMPLER_REDUCTION_MODE_CREATE_INFO    # VulkanGen.ReplaceStructureType

    pNext = next == C_NULL ? C_NULL : (next_ref = Ref(next.vk); preserve(next_ref, next); unsafe_pointer(next_ref))    # VulkanGen.GeneratePointers
    vk = VkSamplerReductionModeCreateInfo(sType, pNext, reduction_mode)

    SamplerReductionModeCreateInfo(reduction_mode, vk)
end

function PhysicalDeviceVulkanMemoryModelFeatures(vulkan_memory_model, vulkan_memory_model_device_scope, vulkan_memory_model_availability_visibility_chains; next = C_NULL)
    sType = VK_STRUCTURE_TYPE_PHYSICAL_DEVICE_VULKAN_MEMORY_MODEL_FEATURES    # VulkanGen.ReplaceStructureType

    pNext = next == C_NULL ? C_NULL : (next_ref = Ref(next.vk); preserve(next_ref, next); unsafe_pointer(next_ref))    # VulkanGen.GeneratePointers
    vk = VkPhysicalDeviceVulkanMemoryModelFeatures(sType, pNext, vulkan_memory_model, vulkan_memory_model_device_scope, vulkan_memory_model_availability_visibility_chains)

    PhysicalDeviceVulkanMemoryModelFeatures(vulkan_memory_model, vulkan_memory_model_device_scope, vulkan_memory_model_availability_visibility_chains, vk)
end

function PhysicalDeviceImagelessFramebufferFeatures(imageless_framebuffer; next = C_NULL)
    sType = VK_STRUCTURE_TYPE_PHYSICAL_DEVICE_IMAGELESS_FRAMEBUFFER_FEATURES    # VulkanGen.ReplaceStructureType

    pNext = next == C_NULL ? C_NULL : (next_ref = Ref(next.vk); preserve(next_ref, next); unsafe_pointer(next_ref))    # VulkanGen.GeneratePointers
    vk = VkPhysicalDeviceImagelessFramebufferFeatures(sType, pNext, imageless_framebuffer)

    PhysicalDeviceImagelessFramebufferFeatures(imageless_framebuffer, vk)
end

function FramebufferAttachmentImageInfo(usage, width, height, layer_count, view_formats; next = C_NULL, flags = 0)
    sType = VK_STRUCTURE_TYPE_FRAMEBUFFER_ATTACHMENT_IMAGE_INFO    # VulkanGen.ReplaceStructureType

    pNext = next == C_NULL ? C_NULL : (next_ref = Ref(next.vk); preserve(next_ref, next); unsafe_pointer(next_ref))    # VulkanGen.GeneratePointers
    viewFormatCount = pointer_length(view_formats)    # VulkanGen.ComputeLengthArgument
    pViewFormats = view_formats == C_NULL ? C_NULL : (view_formats_ref = Ref(view_formats.vk);
                                                      preserve(view_formats_ref, view_formats);
                                                      unsafe_pointer(view_formats_ref))    # VulkanGen.GeneratePointers
    vk = VkFramebufferAttachmentImageInfo(sType, pNext, flags, usage, width, height, layer_count, viewFormatCount, pViewFormats)

    FramebufferAttachmentImageInfo(usage, width, height, layer_count, view_formats, vk)
end

function FramebufferAttachmentsCreateInfo(attachment_image_infos; next = C_NULL)
    sType = VK_STRUCTURE_TYPE_FRAMEBUFFER_ATTACHMENTS_CREATE_INFO    # VulkanGen.ReplaceStructureType

    pNext = next == C_NULL ? C_NULL : (next_ref = Ref(next.vk); preserve(next_ref, next); unsafe_pointer(next_ref))    # VulkanGen.GeneratePointers
    attachmentImageInfoCount = pointer_length(attachment_image_infos)    # VulkanGen.ComputeLengthArgument
    pAttachmentImageInfos = attachment_image_infos == C_NULL ? C_NULL : (attachment_image_infos_ref = Ref(attachment_image_infos.vk);
                                                                         preserve(attachment_image_infos_ref, attachment_image_infos);
                                                                         unsafe_pointer(attachment_image_infos_ref))    # VulkanGen.GeneratePointers
    vk = VkFramebufferAttachmentsCreateInfo(sType, pNext, attachmentImageInfoCount, pAttachmentImageInfos)

    FramebufferAttachmentsCreateInfo(attachment_image_infos, vk)
end

function RenderPassAttachmentBeginInfo(attachments; next = C_NULL)
    sType = VK_STRUCTURE_TYPE_RENDER_PASS_ATTACHMENT_BEGIN_INFO    # VulkanGen.ReplaceStructureType

    pNext = next == C_NULL ? C_NULL : (next_ref = Ref(next.vk); preserve(next_ref, next); unsafe_pointer(next_ref))    # VulkanGen.GeneratePointers
    attachmentCount = pointer_length(attachments)    # VulkanGen.ComputeLengthArgument
    pAttachments = attachments == C_NULL ? C_NULL : (attachments_ref = Ref(attachments.vk);
                                                     preserve(attachments_ref, attachments);
                                                     unsafe_pointer(attachments_ref))    # VulkanGen.GeneratePointers
    vk = VkRenderPassAttachmentBeginInfo(sType, pNext, attachmentCount, pAttachments)

    RenderPassAttachmentBeginInfo(attachments, vk)
end

function PhysicalDeviceUniformBufferStandardLayoutFeatures(uniform_buffer_standard_layout; next = C_NULL)
    sType = VK_STRUCTURE_TYPE_PHYSICAL_DEVICE_UNIFORM_BUFFER_STANDARD_LAYOUT_FEATURES    # VulkanGen.ReplaceStructureType

    pNext = next == C_NULL ? C_NULL : (next_ref = Ref(next.vk); preserve(next_ref, next); unsafe_pointer(next_ref))    # VulkanGen.GeneratePointers
    vk = VkPhysicalDeviceUniformBufferStandardLayoutFeatures(sType, pNext, uniform_buffer_standard_layout)

    PhysicalDeviceUniformBufferStandardLayoutFeatures(uniform_buffer_standard_layout, vk)
end

function PhysicalDeviceShaderSubgroupExtendedTypesFeatures(shader_subgroup_extended_types; next = C_NULL)
    sType = VK_STRUCTURE_TYPE_PHYSICAL_DEVICE_SHADER_SUBGROUP_EXTENDED_TYPES_FEATURES    # VulkanGen.ReplaceStructureType

    pNext = next == C_NULL ? C_NULL : (next_ref = Ref(next.vk); preserve(next_ref, next); unsafe_pointer(next_ref))    # VulkanGen.GeneratePointers
    vk = VkPhysicalDeviceShaderSubgroupExtendedTypesFeatures(sType, pNext, shader_subgroup_extended_types)

    PhysicalDeviceShaderSubgroupExtendedTypesFeatures(shader_subgroup_extended_types, vk)
end

function PhysicalDeviceSeparateDepthStencilLayoutsFeatures(separate_depth_stencil_layouts; next = C_NULL)
    sType = VK_STRUCTURE_TYPE_PHYSICAL_DEVICE_SEPARATE_DEPTH_STENCIL_LAYOUTS_FEATURES    # VulkanGen.ReplaceStructureType

    pNext = next == C_NULL ? C_NULL : (next_ref = Ref(next.vk); preserve(next_ref, next); unsafe_pointer(next_ref))    # VulkanGen.GeneratePointers
    vk = VkPhysicalDeviceSeparateDepthStencilLayoutsFeatures(sType, pNext, separate_depth_stencil_layouts)

    PhysicalDeviceSeparateDepthStencilLayoutsFeatures(separate_depth_stencil_layouts, vk)
end

function AttachmentReferenceStencilLayout(stencil_layout; next = C_NULL)
    sType = VK_STRUCTURE_TYPE_ATTACHMENT_REFERENCE_STENCIL_LAYOUT    # VulkanGen.ReplaceStructureType

    pNext = next == C_NULL ? C_NULL : (next_ref = Ref(next.vk); preserve(next_ref, next); unsafe_pointer(next_ref))    # VulkanGen.GeneratePointers
    vk = VkAttachmentReferenceStencilLayout(sType, pNext, stencil_layout)

    AttachmentReferenceStencilLayout(stencil_layout, vk)
end

function AttachmentDescriptionStencilLayout(stencil_initial_layout, stencil_final_layout; next = C_NULL)
    sType = VK_STRUCTURE_TYPE_ATTACHMENT_DESCRIPTION_STENCIL_LAYOUT    # VulkanGen.ReplaceStructureType

    pNext = next == C_NULL ? C_NULL : (next_ref = Ref(next.vk); preserve(next_ref, next); unsafe_pointer(next_ref))    # VulkanGen.GeneratePointers
    vk = VkAttachmentDescriptionStencilLayout(sType, pNext, stencil_initial_layout, stencil_final_layout)

    AttachmentDescriptionStencilLayout(stencil_initial_layout, stencil_final_layout, vk)
end

function PhysicalDeviceHostQueryResetFeatures(host_query_reset; next = C_NULL)
    sType = VK_STRUCTURE_TYPE_PHYSICAL_DEVICE_HOST_QUERY_RESET_FEATURES    # VulkanGen.ReplaceStructureType

    pNext = next == C_NULL ? C_NULL : (next_ref = Ref(next.vk); preserve(next_ref, next); unsafe_pointer(next_ref))    # VulkanGen.GeneratePointers
    vk = VkPhysicalDeviceHostQueryResetFeatures(sType, pNext, host_query_reset)

    PhysicalDeviceHostQueryResetFeatures(host_query_reset, vk)
end

function PhysicalDeviceTimelineSemaphoreFeatures(timeline_semaphore; next = C_NULL)
    sType = VK_STRUCTURE_TYPE_PHYSICAL_DEVICE_TIMELINE_SEMAPHORE_FEATURES    # VulkanGen.ReplaceStructureType

    pNext = next == C_NULL ? C_NULL : (next_ref = Ref(next.vk); preserve(next_ref, next); unsafe_pointer(next_ref))    # VulkanGen.GeneratePointers
    vk = VkPhysicalDeviceTimelineSemaphoreFeatures(sType, pNext, timeline_semaphore)

    PhysicalDeviceTimelineSemaphoreFeatures(timeline_semaphore, vk)
end

function SemaphoreTypeCreateInfo(semaphore_type, initial_value; next = C_NULL)
    sType = VK_STRUCTURE_TYPE_SEMAPHORE_TYPE_CREATE_INFO    # VulkanGen.ReplaceStructureType

    pNext = next == C_NULL ? C_NULL : (next_ref = Ref(next.vk); preserve(next_ref, next); unsafe_pointer(next_ref))    # VulkanGen.GeneratePointers
    vk = VkSemaphoreTypeCreateInfo(sType, pNext, semaphore_type, initial_value)

    SemaphoreTypeCreateInfo(semaphore_type, initial_value, vk)
end

function TimelineSemaphoreSubmitInfo(; wait_semaphore_values = nothing, signal_semaphore_values = nothing, next = C_NULL)
    sType = VK_STRUCTURE_TYPE_TIMELINE_SEMAPHORE_SUBMIT_INFO    # VulkanGen.ReplaceStructureType

    pNext = next == C_NULL ? C_NULL : (next_ref = Ref(next.vk); preserve(next_ref, next); unsafe_pointer(next_ref))    # VulkanGen.GeneratePointers
    waitSemaphoreValueCount = pointer_length(wait_semaphore_values)    # VulkanGen.ComputeLengthArgument
    pWaitSemaphoreValues = isnothing(wait_semaphore_values) ? 0 : wait_semaphore_values    # VulkanGen.AddDefaults
    pWaitSemaphoreValues = pWaitSemaphoreValues == C_NULL ? C_NULL : (pWaitSemaphoreValues_ref = Ref(pWaitSemaphoreValues.vk);
                                                                      preserve(pWaitSemaphoreValues_ref, wait_semaphore_values);
                                                                      unsafe_pointer(pWaitSemaphoreValues_ref))    # VulkanGen.GeneratePointers
    signalSemaphoreValueCount = pointer_length(signal_semaphore_values)    # VulkanGen.ComputeLengthArgument
    pSignalSemaphoreValues = isnothing(signal_semaphore_values) ? 0 : signal_semaphore_values    # VulkanGen.AddDefaults

    pSignalSemaphoreValues = pSignalSemaphoreValues == C_NULL ? C_NULL : (pSignalSemaphoreValues_ref = Ref(pSignalSemaphoreValues.vk);
                                                                          preserve(pSignalSemaphoreValues_ref, signal_semaphore_values);
                                                                          unsafe_pointer(pSignalSemaphoreValues_ref))    # VulkanGen.GeneratePointers
    vk = VkTimelineSemaphoreSubmitInfo(sType, pNext, waitSemaphoreValueCount, pWaitSemaphoreValues, signalSemaphoreValueCount, pSignalSemaphoreValues)

    TimelineSemaphoreSubmitInfo(wait_semaphore_values, signal_semaphore_values, vk)
end

function SemaphoreWaitInfo(semaphores, values; next = C_NULL, flags = 0)
    sType = VK_STRUCTURE_TYPE_SEMAPHORE_WAIT_INFO    # VulkanGen.ReplaceStructureType

    pNext = next == C_NULL ? C_NULL : (next_ref = Ref(next.vk); preserve(next_ref, next); unsafe_pointer(next_ref))    # VulkanGen.GeneratePointers
    semaphoreCount = pointer_length(semaphores)    # VulkanGen.ComputeLengthArgument
    pSemaphores = semaphores == C_NULL ? C_NULL : (semaphores_ref = Ref(semaphores.vk);
                                                   preserve(semaphores_ref, semaphores);
                                                   unsafe_pointer(semaphores_ref))    # VulkanGen.GeneratePointers
    pValues = values == C_NULL ? C_NULL : (values_ref = Ref(values.vk);
                                           preserve(values_ref, values);
                                           unsafe_pointer(values_ref))    # VulkanGen.GeneratePointers
    vk = VkSemaphoreWaitInfo(sType, pNext, flags, semaphoreCount, pSemaphores, pValues)

    SemaphoreWaitInfo(semaphores, values, vk)
end

function SemaphoreSignalInfo(semaphore, value; next = C_NULL)
    sType = VK_STRUCTURE_TYPE_SEMAPHORE_SIGNAL_INFO    # VulkanGen.ReplaceStructureType

    pNext = next == C_NULL ? C_NULL : (next_ref = Ref(next.vk); preserve(next_ref, next); unsafe_pointer(next_ref))    # VulkanGen.GeneratePointers
    vk = VkSemaphoreSignalInfo(sType, pNext, semaphore, value)

    SemaphoreSignalInfo(semaphore, value, vk)
end

function PhysicalDeviceBufferDeviceAddressFeatures(buffer_device_address, buffer_device_address_capture_replay, buffer_device_address_multi_device; next = C_NULL)
    sType = VK_STRUCTURE_TYPE_PHYSICAL_DEVICE_BUFFER_DEVICE_ADDRESS_FEATURES    # VulkanGen.ReplaceStructureType

    pNext = next == C_NULL ? C_NULL : (next_ref = Ref(next.vk); preserve(next_ref, next); unsafe_pointer(next_ref))    # VulkanGen.GeneratePointers
    vk = VkPhysicalDeviceBufferDeviceAddressFeatures(sType, pNext, buffer_device_address, buffer_device_address_capture_replay, buffer_device_address_multi_device)

    PhysicalDeviceBufferDeviceAddressFeatures(buffer_device_address, buffer_device_address_capture_replay, buffer_device_address_multi_device, vk)
end

function BufferDeviceAddressInfo(buffer; next = C_NULL)
    sType = VK_STRUCTURE_TYPE_BUFFER_DEVICE_ADDRESS_INFO    # VulkanGen.ReplaceStructureType

    pNext = next == C_NULL ? C_NULL : (next_ref = Ref(next.vk); preserve(next_ref, next); unsafe_pointer(next_ref))    # VulkanGen.GeneratePointers
    vk = VkBufferDeviceAddressInfo(sType, pNext, buffer)

    BufferDeviceAddressInfo(buffer, vk)
end

function BufferOpaqueCaptureAddressCreateInfo(opaque_capture_address; next = C_NULL)
    sType = VK_STRUCTURE_TYPE_BUFFER_OPAQUE_CAPTURE_ADDRESS_CREATE_INFO    # VulkanGen.ReplaceStructureType

    pNext = next == C_NULL ? C_NULL : (next_ref = Ref(next.vk); preserve(next_ref, next); unsafe_pointer(next_ref))    # VulkanGen.GeneratePointers
    vk = VkBufferOpaqueCaptureAddressCreateInfo(sType, pNext, opaque_capture_address)

    BufferOpaqueCaptureAddressCreateInfo(opaque_capture_address, vk)
end

function MemoryOpaqueCaptureAddressAllocateInfo(opaque_capture_address; next = C_NULL)
    sType = VK_STRUCTURE_TYPE_MEMORY_OPAQUE_CAPTURE_ADDRESS_ALLOCATE_INFO    # VulkanGen.ReplaceStructureType

    pNext = next == C_NULL ? C_NULL : (next_ref = Ref(next.vk); preserve(next_ref, next); unsafe_pointer(next_ref))    # VulkanGen.GeneratePointers
    vk = VkMemoryOpaqueCaptureAddressAllocateInfo(sType, pNext, opaque_capture_address)

    MemoryOpaqueCaptureAddressAllocateInfo(opaque_capture_address, vk)
end

function DeviceMemoryOpaqueCaptureAddressInfo(memory; next = C_NULL)
    sType = VK_STRUCTURE_TYPE_DEVICE_MEMORY_OPAQUE_CAPTURE_ADDRESS_INFO    # VulkanGen.ReplaceStructureType

    pNext = next == C_NULL ? C_NULL : (next_ref = Ref(next.vk); preserve(next_ref, next); unsafe_pointer(next_ref))    # VulkanGen.GeneratePointers
    vk = VkDeviceMemoryOpaqueCaptureAddressInfo(sType, pNext, memory)

    DeviceMemoryOpaqueCaptureAddressInfo(memory, vk)
end

function SurfaceCapabilitiesKHR(min_image_count, max_image_count, current_extent, min_image_extent, max_image_extent, max_image_array_layers, current_transform; supported_transforms = nothing,
                                supported_usage_flags = nothing, supported_composite_alpha = nothing)
    supportedTransforms = isnothing(supported_transforms) ? 0 : supported_transforms    # VulkanGen.AddDefaults
    supportedCompositeAlpha = isnothing(supported_composite_alpha) ? 0 : supported_composite_alpha    # VulkanGen.AddDefaults

    supportedUsageFlags = isnothing(supported_usage_flags) ? 0 : supported_usage_flags    # VulkanGen.AddDefaults
    vk = VkSurfaceCapabilitiesKHR(min_image_count, max_image_count, current_extent, min_image_extent, max_image_extent, max_image_array_layers, supportedTransforms, current_transform,
                                  supportedCompositeAlpha, supportedUsageFlags)

    SurfaceCapabilitiesKHR(min_image_count, max_image_count, current_extent, min_image_extent, max_image_extent, max_image_array_layers, supported_transforms, current_transform,
                           supported_composite_alpha, supported_usage_flags, vk)
end

function PresentInfoKHR(wait_semaphores, swapchains, image_indices; results = nothing, next = C_NULL)
    sType = VK_STRUCTURE_TYPE_PRESENT_INFO_KHR    # VulkanGen.ReplaceStructureType

    pNext = next == C_NULL ? C_NULL : (next_ref = Ref(next.vk); preserve(next_ref, next); unsafe_pointer(next_ref))    # VulkanGen.GeneratePointers
    waitSemaphoreCount = pointer_length(wait_semaphores)    # VulkanGen.ComputeLengthArgument
    pWaitSemaphores = wait_semaphores == C_NULL ? C_NULL : (wait_semaphores_ref = Ref(wait_semaphores.vk);
                                                            preserve(wait_semaphores_ref, wait_semaphores);
                                                            unsafe_pointer(wait_semaphores_ref))    # VulkanGen.GeneratePointers
    swapchainCount = pointer_length(swapchains)    # VulkanGen.ComputeLengthArgument
    pSwapchains = swapchains == C_NULL ? C_NULL : (swapchains_ref = Ref(swapchains.vk);
                                                   preserve(swapchains_ref, swapchains);
                                                   unsafe_pointer(swapchains_ref))    # VulkanGen.GeneratePointers
    pImageIndices = image_indices == C_NULL ? C_NULL : (image_indices_ref = Ref(image_indices.vk);
                                                        preserve(image_indices_ref, image_indices);
                                                        unsafe_pointer(image_indices_ref))    # VulkanGen.GeneratePointers
    pResults = isnothing(results) ? C_NULL : results    # VulkanGen.AddDefaults

    pResults = pResults == C_NULL ? C_NULL : (pResults_ref = Ref(pResults.vk);
                                              preserve(pResults_ref, results);
                                              unsafe_pointer(pResults_ref))    # VulkanGen.GeneratePointers
    vk = VkPresentInfoKHR(sType, pNext, waitSemaphoreCount, pWaitSemaphores, swapchainCount, pSwapchains, pImageIndices, pResults)

    PresentInfoKHR(wait_semaphores, swapchains, image_indices, results, vk)
end

function ImageSwapchainCreateInfoKHR(; swapchain = nothing, next = C_NULL)
    sType = VK_STRUCTURE_TYPE_IMAGE_SWAPCHAIN_CREATE_INFO_KHR    # VulkanGen.ReplaceStructureType

    pNext = next == C_NULL ? C_NULL : (next_ref = Ref(next.vk); preserve(next_ref, next); unsafe_pointer(next_ref))    # VulkanGen.GeneratePointers
    swapchain = isnothing(swapchain) ? VK_NULL_HANDLE : swapchain    # VulkanGen.AddDefaults

    vk = VkImageSwapchainCreateInfoKHR(sType, pNext, swapchain)

    ImageSwapchainCreateInfoKHR(swapchain, vk)
end

function BindImageMemorySwapchainInfoKHR(swapchain, image_index; next = C_NULL)
    sType = VK_STRUCTURE_TYPE_BIND_IMAGE_MEMORY_SWAPCHAIN_INFO_KHR    # VulkanGen.ReplaceStructureType

    pNext = next == C_NULL ? C_NULL : (next_ref = Ref(next.vk); preserve(next_ref, next); unsafe_pointer(next_ref))    # VulkanGen.GeneratePointers
    vk = VkBindImageMemorySwapchainInfoKHR(sType, pNext, swapchain, image_index)

    BindImageMemorySwapchainInfoKHR(swapchain, image_index, vk)
end

function AcquireNextImageInfoKHR(swapchain, timeout, device_mask; semaphore = nothing, fence = nothing, next = C_NULL)
    sType = VK_STRUCTURE_TYPE_ACQUIRE_NEXT_IMAGE_INFO_KHR    # VulkanGen.ReplaceStructureType

    pNext = next == C_NULL ? C_NULL : (next_ref = Ref(next.vk); preserve(next_ref, next); unsafe_pointer(next_ref))    # VulkanGen.GeneratePointers
    semaphore = isnothing(semaphore) ? VK_NULL_HANDLE : semaphore    # VulkanGen.AddDefaults
    fence = isnothing(fence) ? VK_NULL_HANDLE : fence    # VulkanGen.AddDefaults

    vk = VkAcquireNextImageInfoKHR(sType, pNext, swapchain, timeout, semaphore, fence, device_mask)

    AcquireNextImageInfoKHR(swapchain, timeout, semaphore, fence, device_mask, vk)
end

function DeviceGroupPresentCapabilitiesKHR(present_mask, modes; next = C_NULL)
    sType = VK_STRUCTURE_TYPE_DEVICE_GROUP_PRESENT_CAPABILITIES_KHR    # VulkanGen.ReplaceStructureType

    pNext = next == C_NULL ? C_NULL : (next_ref = Ref(next.vk); preserve(next_ref, next); unsafe_pointer(next_ref))    # VulkanGen.GeneratePointers
    presentMask = present_mask == C_NULL ? C_NULL : (present_mask_ref = Ref(present_mask.vk);
                                                     preserve(present_mask_ref, present_mask);
                                                     unsafe_pointer(present_mask_ref))    # VulkanGen.GeneratePointers
    vk = VkDeviceGroupPresentCapabilitiesKHR(sType, pNext, presentMask, modes)

    DeviceGroupPresentCapabilitiesKHR(present_mask, modes, vk)
end

function DeviceGroupPresentInfoKHR(device_masks, mode; next = C_NULL)
    sType = VK_STRUCTURE_TYPE_DEVICE_GROUP_PRESENT_INFO_KHR    # VulkanGen.ReplaceStructureType

    pNext = next == C_NULL ? C_NULL : (next_ref = Ref(next.vk); preserve(next_ref, next); unsafe_pointer(next_ref))    # VulkanGen.GeneratePointers
    swapchainCount = pointer_length(device_masks)    # VulkanGen.ComputeLengthArgument
    pDeviceMasks = device_masks == C_NULL ? C_NULL : (device_masks_ref = Ref(device_masks.vk);
                                                      preserve(device_masks_ref, device_masks);
                                                      unsafe_pointer(device_masks_ref))    # VulkanGen.GeneratePointers
    vk = VkDeviceGroupPresentInfoKHR(sType, pNext, swapchainCount, pDeviceMasks, mode)

    DeviceGroupPresentInfoKHR(device_masks, mode, vk)
end

function DeviceGroupSwapchainCreateInfoKHR(modes; next = C_NULL)
    sType = VK_STRUCTURE_TYPE_DEVICE_GROUP_SWAPCHAIN_CREATE_INFO_KHR    # VulkanGen.ReplaceStructureType

    pNext = next == C_NULL ? C_NULL : (next_ref = Ref(next.vk); preserve(next_ref, next); unsafe_pointer(next_ref))    # VulkanGen.GeneratePointers
    vk = VkDeviceGroupSwapchainCreateInfoKHR(sType, pNext, modes)

    DeviceGroupSwapchainCreateInfoKHR(modes, vk)
end

function DisplayModeParametersKHR(visible_region, refresh_rate)
    vk = VkDisplayModeParametersKHR(visible_region, refresh_rate)

    DisplayModeParametersKHR(visible_region, refresh_rate, vk)
end

function DisplayModeCreateInfoKHR(parameters; next = C_NULL, flags = 0)
    sType = VK_STRUCTURE_TYPE_DISPLAY_MODE_CREATE_INFO_KHR    # VulkanGen.ReplaceStructureType

    pNext = next == C_NULL ? C_NULL : (next_ref = Ref(next.vk); preserve(next_ref, next); unsafe_pointer(next_ref))    # VulkanGen.GeneratePointers
    parameters = parameters == C_NULL ? C_NULL : (parameters_ref = Ref(parameters.vk);
                                                  preserve(parameters_ref, parameters);
                                                  unsafe_pointer(parameters_ref))    # VulkanGen.GeneratePointers
    vk = VkDisplayModeCreateInfoKHR(sType, pNext, flags, parameters)

    DisplayModeCreateInfoKHR(parameters, vk)
end

function DisplayPlaneCapabilitiesKHR(min_src_position, max_src_position, min_src_extent, max_src_extent, min_dst_position, max_dst_position, min_dst_extent, max_dst_extent; supported_alpha = nothing)
    supportedAlpha = isnothing(supported_alpha) ? 0 : supported_alpha    # VulkanGen.AddDefaults

    vk = VkDisplayPlaneCapabilitiesKHR(supportedAlpha, min_src_position, max_src_position, min_src_extent, max_src_extent, min_dst_position, max_dst_position, min_dst_extent, max_dst_extent)

    DisplayPlaneCapabilitiesKHR(supported_alpha, min_src_position, max_src_position, min_src_extent, max_src_extent, min_dst_position, max_dst_position, min_dst_extent, max_dst_extent, vk)
end

function DisplaySurfaceCreateInfoKHR(display_mode, plane_index, plane_stack_index, transform, global_alpha, alpha_mode, image_extent; next = C_NULL, flags = 0)
    sType = VK_STRUCTURE_TYPE_DISPLAY_SURFACE_CREATE_INFO_KHR    # VulkanGen.ReplaceStructureType

    pNext = next == C_NULL ? C_NULL : (next_ref = Ref(next.vk); preserve(next_ref, next); unsafe_pointer(next_ref))    # VulkanGen.GeneratePointers
    planeIndex = plane_index == C_NULL ? C_NULL : (plane_index_ref = Ref(plane_index.vk);
                                                   preserve(plane_index_ref, plane_index);
                                                   unsafe_pointer(plane_index_ref))    # VulkanGen.GeneratePointers
    planeStackIndex = plane_stack_index == C_NULL ? C_NULL : (plane_stack_index_ref = Ref(plane_stack_index.vk);
                                                              preserve(plane_stack_index_ref, plane_stack_index);
                                                              unsafe_pointer(plane_stack_index_ref))    # VulkanGen.GeneratePointers
    vk = VkDisplaySurfaceCreateInfoKHR(sType, pNext, flags, display_mode, planeIndex, planeStackIndex, transform, global_alpha, alpha_mode, image_extent)

    DisplaySurfaceCreateInfoKHR(display_mode, plane_index, plane_stack_index, transform, global_alpha, alpha_mode, image_extent, vk)
end

function DisplayPresentInfoKHR(src_rect, dst_rect, persistent; next = C_NULL)
    sType = VK_STRUCTURE_TYPE_DISPLAY_PRESENT_INFO_KHR    # VulkanGen.ReplaceStructureType

    pNext = next == C_NULL ? C_NULL : (next_ref = Ref(next.vk); preserve(next_ref, next); unsafe_pointer(next_ref))    # VulkanGen.GeneratePointers
    persistent = persistent == C_NULL ? C_NULL : (persistent_ref = Ref(persistent.vk);
                                                  preserve(persistent_ref, persistent);
                                                  unsafe_pointer(persistent_ref))    # VulkanGen.GeneratePointers
    vk = VkDisplayPresentInfoKHR(sType, pNext, src_rect, dst_rect, persistent)

    DisplayPresentInfoKHR(src_rect, dst_rect, persistent, vk)
end

function ImportMemoryFdInfoKHR(fd; handle_type = nothing, next = C_NULL)
    sType = VK_STRUCTURE_TYPE_IMPORT_MEMORY_FD_INFO_KHR    # VulkanGen.ReplaceStructureType

    pNext = next == C_NULL ? C_NULL : (next_ref = Ref(next.vk); preserve(next_ref, next); unsafe_pointer(next_ref))    # VulkanGen.GeneratePointers
    handleType = isnothing(handle_type) ? 0 : handle_type    # VulkanGen.AddDefaults

    vk = VkImportMemoryFdInfoKHR(sType, pNext, handleType, fd)

    ImportMemoryFdInfoKHR(handle_type, fd, vk)
end

function MemoryGetFdInfoKHR(memory, handle_type; next = C_NULL)
    sType = VK_STRUCTURE_TYPE_MEMORY_GET_FD_INFO_KHR    # VulkanGen.ReplaceStructureType

    pNext = next == C_NULL ? C_NULL : (next_ref = Ref(next.vk); preserve(next_ref, next); unsafe_pointer(next_ref))    # VulkanGen.GeneratePointers
    vk = VkMemoryGetFdInfoKHR(sType, pNext, memory, handle_type)

    MemoryGetFdInfoKHR(memory, handle_type, vk)
end

function ImportSemaphoreFdInfoKHR(semaphore, handle_type, fd; next = C_NULL, flags = 0)
    sType = VK_STRUCTURE_TYPE_IMPORT_SEMAPHORE_FD_INFO_KHR    # VulkanGen.ReplaceStructureType

    pNext = next == C_NULL ? C_NULL : (next_ref = Ref(next.vk); preserve(next_ref, next); unsafe_pointer(next_ref))    # VulkanGen.GeneratePointers
    vk = VkImportSemaphoreFdInfoKHR(sType, pNext, semaphore, flags, handle_type, fd)

    ImportSemaphoreFdInfoKHR(semaphore, handle_type, fd, vk)
end

function SemaphoreGetFdInfoKHR(semaphore, handle_type; next = C_NULL)
    sType = VK_STRUCTURE_TYPE_SEMAPHORE_GET_FD_INFO_KHR    # VulkanGen.ReplaceStructureType

    pNext = next == C_NULL ? C_NULL : (next_ref = Ref(next.vk); preserve(next_ref, next); unsafe_pointer(next_ref))    # VulkanGen.GeneratePointers
    vk = VkSemaphoreGetFdInfoKHR(sType, pNext, semaphore, handle_type)

    SemaphoreGetFdInfoKHR(semaphore, handle_type, vk)
end

function RectLayerKHR(offset, extent, layer)
    vk = VkRectLayerKHR(offset, extent, layer)

    RectLayerKHR(offset, extent, layer, vk)
end

function PresentRegionKHR(; rectangles = nothing)
    rectangleCount = pointer_length(rectangles)    # VulkanGen.ComputeLengthArgument
    pRectangles = isnothing(rectangles) ? C_NULL : rectangles    # VulkanGen.AddDefaults

    pRectangles = pRectangles == C_NULL ? C_NULL : (pRectangles_ref = Ref(pRectangles.vk);
                                                    preserve(pRectangles_ref, rectangles);
                                                    unsafe_pointer(pRectangles_ref))    # VulkanGen.GeneratePointers
    vk = VkPresentRegionKHR(rectangleCount, pRectangles)

    PresentRegionKHR(rectangles, vk)
end

function PresentRegionsKHR(; regions = nothing, next = C_NULL)
    sType = VK_STRUCTURE_TYPE_PRESENT_REGIONS_KHR    # VulkanGen.ReplaceStructureType

    pNext = next == C_NULL ? C_NULL : (next_ref = Ref(next.vk); preserve(next_ref, next); unsafe_pointer(next_ref))    # VulkanGen.GeneratePointers
    swapchainCount = pointer_length(regions)    # VulkanGen.ComputeLengthArgument
    pRegions = isnothing(regions) ? C_NULL : regions    # VulkanGen.AddDefaults

    pRegions = pRegions == C_NULL ? C_NULL : (pRegions_ref = Ref(pRegions.vk);
                                              preserve(pRegions_ref, regions);
                                              unsafe_pointer(pRegions_ref))    # VulkanGen.GeneratePointers
    vk = VkPresentRegionsKHR(sType, pNext, swapchainCount, pRegions)

    PresentRegionsKHR(regions, vk)
end

function SharedPresentSurfaceCapabilitiesKHR(; shared_present_supported_usage_flags = nothing, next = C_NULL)
    sType = VK_STRUCTURE_TYPE_SHARED_PRESENT_SURFACE_CAPABILITIES_KHR    # VulkanGen.ReplaceStructureType

    pNext = next == C_NULL ? C_NULL : (next_ref = Ref(next.vk); preserve(next_ref, next); unsafe_pointer(next_ref))    # VulkanGen.GeneratePointers
    sharedPresentSupportedUsageFlags = isnothing(shared_present_supported_usage_flags) ? 0 : shared_present_supported_usage_flags    # VulkanGen.AddDefaults

    vk = VkSharedPresentSurfaceCapabilitiesKHR(sType, pNext, sharedPresentSupportedUsageFlags)

    SharedPresentSurfaceCapabilitiesKHR(shared_present_supported_usage_flags, vk)
end

function ImportFenceFdInfoKHR(fence, handle_type, fd; next = C_NULL, flags = 0)
    sType = VK_STRUCTURE_TYPE_IMPORT_FENCE_FD_INFO_KHR    # VulkanGen.ReplaceStructureType

    pNext = next == C_NULL ? C_NULL : (next_ref = Ref(next.vk); preserve(next_ref, next); unsafe_pointer(next_ref))    # VulkanGen.GeneratePointers
    vk = VkImportFenceFdInfoKHR(sType, pNext, fence, flags, handle_type, fd)

    ImportFenceFdInfoKHR(fence, handle_type, fd, vk)
end

function FenceGetFdInfoKHR(fence, handle_type; next = C_NULL)
    sType = VK_STRUCTURE_TYPE_FENCE_GET_FD_INFO_KHR    # VulkanGen.ReplaceStructureType

    pNext = next == C_NULL ? C_NULL : (next_ref = Ref(next.vk); preserve(next_ref, next); unsafe_pointer(next_ref))    # VulkanGen.GeneratePointers
    vk = VkFenceGetFdInfoKHR(sType, pNext, fence, handle_type)

    FenceGetFdInfoKHR(fence, handle_type, vk)
end

function PhysicalDevicePerformanceQueryFeaturesKHR(performance_counter_query_pools, performance_counter_multiple_query_pools; next = C_NULL)
    sType = VK_STRUCTURE_TYPE_PHYSICAL_DEVICE_PERFORMANCE_QUERY_FEATURES_KHR    # VulkanGen.ReplaceStructureType

    pNext = next == C_NULL ? C_NULL : (next_ref = Ref(next.vk); preserve(next_ref, next); unsafe_pointer(next_ref))    # VulkanGen.GeneratePointers
    performanceCounterQueryPools = performance_counter_query_pools == C_NULL ? C_NULL : (performance_counter_query_pools_ref = Ref(performance_counter_query_pools.vk);
                                                                                         preserve(performance_counter_query_pools_ref, performance_counter_query_pools);
                                                                                         unsafe_pointer(performance_counter_query_pools_ref))    # VulkanGen.GeneratePointers
    performanceCounterMultipleQueryPools = performance_counter_multiple_query_pools == C_NULL ? C_NULL :
                                           (performance_counter_multiple_query_pools_ref = Ref(performance_counter_multiple_query_pools.vk);
                                            preserve(performance_counter_multiple_query_pools_ref, performance_counter_multiple_query_pools);
                                            unsafe_pointer(performance_counter_multiple_query_pools_ref))    # VulkanGen.GeneratePointers
    vk = VkPhysicalDevicePerformanceQueryFeaturesKHR(sType, pNext, performanceCounterQueryPools, performanceCounterMultipleQueryPools)

    PhysicalDevicePerformanceQueryFeaturesKHR(performance_counter_query_pools, performance_counter_multiple_query_pools, vk)
end

function PerformanceCounterDescriptionKHR(name, category, description; next = C_NULL, flags = 0)
    sType = VK_STRUCTURE_TYPE_PERFORMANCE_COUNTER_DESCRIPTION_KHR    # VulkanGen.ReplaceStructureType

    pNext = next == C_NULL ? C_NULL : (next_ref = Ref(next.vk); preserve(next_ref, next); unsafe_pointer(next_ref))    # VulkanGen.GeneratePointers
    name = convert_vk_back(NTuple{256,UInt8}, name)    # VulkanGen.TranslateVkTypesBack
    category = convert_vk_back(NTuple{256,UInt8}, category)    # VulkanGen.TranslateVkTypesBack
    description = convert_vk_back(NTuple{256,UInt8}, description)    # VulkanGen.TranslateVkTypesBack
    vk = VkPerformanceCounterDescriptionKHR(sType, pNext, flags, name, category, description)

    PerformanceCounterDescriptionKHR(name, category, description, vk)
end

function QueryPoolPerformanceCreateInfoKHR(queue_family_index, counter_indices; next = C_NULL)
    sType = VK_STRUCTURE_TYPE_QUERY_POOL_PERFORMANCE_CREATE_INFO_KHR    # VulkanGen.ReplaceStructureType

    pNext = next == C_NULL ? C_NULL : (next_ref = Ref(next.vk); preserve(next_ref, next); unsafe_pointer(next_ref))    # VulkanGen.GeneratePointers
    counterIndexCount = pointer_length(counter_indices)    # VulkanGen.ComputeLengthArgument
    pCounterIndices = counter_indices == C_NULL ? C_NULL : (counter_indices_ref = Ref(counter_indices.vk);
                                                            preserve(counter_indices_ref, counter_indices);
                                                            unsafe_pointer(counter_indices_ref))    # VulkanGen.GeneratePointers
    vk = VkQueryPoolPerformanceCreateInfoKHR(sType, pNext, queue_family_index, counterIndexCount, pCounterIndices)

    QueryPoolPerformanceCreateInfoKHR(queue_family_index, counter_indices, vk)
end

function PerformanceCounterResultKHR(int64)
    vk = VkPerformanceCounterResultKHR(int64)

    PerformanceCounterResultKHR(int64, vk)
end

function AcquireProfilingLockInfoKHR(timeout; next = C_NULL, flags = 0)
    sType = VK_STRUCTURE_TYPE_ACQUIRE_PROFILING_LOCK_INFO_KHR    # VulkanGen.ReplaceStructureType

    pNext = next == C_NULL ? C_NULL : (next_ref = Ref(next.vk); preserve(next_ref, next); unsafe_pointer(next_ref))    # VulkanGen.GeneratePointers
    vk = VkAcquireProfilingLockInfoKHR(sType, pNext, flags, timeout)

    AcquireProfilingLockInfoKHR(timeout, vk)
end

function PerformanceQuerySubmitInfoKHR(counter_pass_index; next = C_NULL)
    sType = VK_STRUCTURE_TYPE_PERFORMANCE_QUERY_SUBMIT_INFO_KHR    # VulkanGen.ReplaceStructureType

    pNext = next == C_NULL ? C_NULL : (next_ref = Ref(next.vk); preserve(next_ref, next); unsafe_pointer(next_ref))    # VulkanGen.GeneratePointers
    vk = VkPerformanceQuerySubmitInfoKHR(sType, pNext, counter_pass_index)

    PerformanceQuerySubmitInfoKHR(counter_pass_index, vk)
end

function PhysicalDeviceSurfaceInfo2KHR(surface; next = C_NULL)
    sType = VK_STRUCTURE_TYPE_PHYSICAL_DEVICE_SURFACE_INFO_2_KHR    # VulkanGen.ReplaceStructureType

    pNext = next == C_NULL ? C_NULL : (next_ref = Ref(next.vk); preserve(next_ref, next); unsafe_pointer(next_ref))    # VulkanGen.GeneratePointers
    vk = VkPhysicalDeviceSurfaceInfo2KHR(sType, pNext, surface)

    PhysicalDeviceSurfaceInfo2KHR(surface, vk)
end

function SurfaceCapabilities2KHR(surface_capabilities; next = C_NULL)
    sType = VK_STRUCTURE_TYPE_SURFACE_CAPABILITIES_2_KHR    # VulkanGen.ReplaceStructureType

    pNext = next == C_NULL ? C_NULL : (next_ref = Ref(next.vk); preserve(next_ref, next); unsafe_pointer(next_ref))    # VulkanGen.GeneratePointers
    vk = VkSurfaceCapabilities2KHR(sType, pNext, surface_capabilities)

    SurfaceCapabilities2KHR(surface_capabilities, vk)
end

function DisplayPlaneInfo2KHR(mode, plane_index; next = C_NULL)
    sType = VK_STRUCTURE_TYPE_DISPLAY_PLANE_INFO_2_KHR    # VulkanGen.ReplaceStructureType

    pNext = next == C_NULL ? C_NULL : (next_ref = Ref(next.vk); preserve(next_ref, next); unsafe_pointer(next_ref))    # VulkanGen.GeneratePointers
    planeIndex = plane_index == C_NULL ? C_NULL : (plane_index_ref = Ref(plane_index.vk);
                                                   preserve(plane_index_ref, plane_index);
                                                   unsafe_pointer(plane_index_ref))    # VulkanGen.GeneratePointers
    vk = VkDisplayPlaneInfo2KHR(sType, pNext, mode, planeIndex)

    DisplayPlaneInfo2KHR(mode, plane_index, vk)
end

function DisplayPlaneCapabilities2KHR(capabilities; next = C_NULL)
    sType = VK_STRUCTURE_TYPE_DISPLAY_PLANE_CAPABILITIES_2_KHR    # VulkanGen.ReplaceStructureType

    pNext = next == C_NULL ? C_NULL : (next_ref = Ref(next.vk); preserve(next_ref, next); unsafe_pointer(next_ref))    # VulkanGen.GeneratePointers
    vk = VkDisplayPlaneCapabilities2KHR(sType, pNext, capabilities)

    DisplayPlaneCapabilities2KHR(capabilities, vk)
end

function PhysicalDeviceShaderClockFeaturesKHR(shader_subgroup_clock, shader_device_clock; next = C_NULL)
    sType = VK_STRUCTURE_TYPE_PHYSICAL_DEVICE_SHADER_CLOCK_FEATURES_KHR    # VulkanGen.ReplaceStructureType

    pNext = next == C_NULL ? C_NULL : (next_ref = Ref(next.vk); preserve(next_ref, next); unsafe_pointer(next_ref))    # VulkanGen.GeneratePointers
    vk = VkPhysicalDeviceShaderClockFeaturesKHR(sType, pNext, shader_subgroup_clock, shader_device_clock)

    PhysicalDeviceShaderClockFeaturesKHR(shader_subgroup_clock, shader_device_clock, vk)
end

function SurfaceProtectedCapabilitiesKHR(supports_protected; next = C_NULL)
    sType = VK_STRUCTURE_TYPE_SURFACE_PROTECTED_CAPABILITIES_KHR    # VulkanGen.ReplaceStructureType

    pNext = next == C_NULL ? C_NULL : (next_ref = Ref(next.vk); preserve(next_ref, next); unsafe_pointer(next_ref))    # VulkanGen.GeneratePointers
    vk = VkSurfaceProtectedCapabilitiesKHR(sType, pNext, supports_protected)

    SurfaceProtectedCapabilitiesKHR(supports_protected, vk)
end

function PipelineInfoKHR(pipeline; next = C_NULL)
    sType = VK_STRUCTURE_TYPE_PIPELINE_INFO_KHR    # VulkanGen.ReplaceStructureType

    pNext = next == C_NULL ? C_NULL : (next_ref = Ref(next.vk); preserve(next_ref, next); unsafe_pointer(next_ref))    # VulkanGen.GeneratePointers
    pipeline = pipeline == C_NULL ? C_NULL : (pipeline_ref = Ref(pipeline.vk);
                                              preserve(pipeline_ref, pipeline);
                                              unsafe_pointer(pipeline_ref))    # VulkanGen.GeneratePointers
    vk = VkPipelineInfoKHR(sType, pNext, pipeline)

    PipelineInfoKHR(pipeline, vk)
end

function PipelineExecutableInfoKHR(pipeline, executable_index; next = C_NULL)
    sType = VK_STRUCTURE_TYPE_PIPELINE_EXECUTABLE_INFO_KHR    # VulkanGen.ReplaceStructureType

    pNext = next == C_NULL ? C_NULL : (next_ref = Ref(next.vk); preserve(next_ref, next); unsafe_pointer(next_ref))    # VulkanGen.GeneratePointers
    pipeline = pipeline == C_NULL ? C_NULL : (pipeline_ref = Ref(pipeline.vk);
                                              preserve(pipeline_ref, pipeline);
                                              unsafe_pointer(pipeline_ref))    # VulkanGen.GeneratePointers
    vk = VkPipelineExecutableInfoKHR(sType, pNext, pipeline, executable_index)

    PipelineExecutableInfoKHR(pipeline, executable_index, vk)
end

function PipelineExecutableStatisticValueKHR(i64)
    vk = VkPipelineExecutableStatisticValueKHR(i64)

    PipelineExecutableStatisticValueKHR(i64, vk)
end

function DebugReportCallbackCreateInfoEXT(callback; user_data = nothing, next = C_NULL, flags = 0)
    sType = VK_STRUCTURE_TYPE_DEBUG_REPORT_CALLBACK_CREATE_INFO_EXT    # VulkanGen.ReplaceStructureType

    pNext = next == C_NULL ? C_NULL : (next_ref = Ref(next.vk); preserve(next_ref, next); unsafe_pointer(next_ref))    # VulkanGen.GeneratePointers
    pfnCallback = callback == C_NULL ? C_NULL : (callback_ref = Ref(callback.vk);
                                                 preserve(callback_ref, callback);
                                                 unsafe_pointer(callback_ref))    # VulkanGen.GeneratePointers
    pUserData = isnothing(user_data) ? C_NULL : user_data    # VulkanGen.AddDefaults

    pUserData = pUserData == C_NULL ? C_NULL : (pUserData_ref = Ref(pUserData.vk);
                                                preserve(pUserData_ref, user_data);
                                                unsafe_pointer(pUserData_ref))    # VulkanGen.GeneratePointers
    vk = VkDebugReportCallbackCreateInfoEXT(sType, pNext, flags, pfnCallback, pUserData)

    DebugReportCallbackCreateInfoEXT(callback, user_data, vk)
end

function PipelineRasterizationStateRasterizationOrderAMD(rasterization_order; next = C_NULL)
    sType = VK_STRUCTURE_TYPE_PIPELINE_RASTERIZATION_STATE_RASTERIZATION_ORDER_AMD    # VulkanGen.ReplaceStructureType

    pNext = next == C_NULL ? C_NULL : (next_ref = Ref(next.vk); preserve(next_ref, next); unsafe_pointer(next_ref))    # VulkanGen.GeneratePointers
    vk = VkPipelineRasterizationStateRasterizationOrderAMD(sType, pNext, rasterization_order)

    PipelineRasterizationStateRasterizationOrderAMD(rasterization_order, vk)
end

function DebugMarkerObjectNameInfoEXT(object_type, object, object_name; next = C_NULL)
    sType = VK_STRUCTURE_TYPE_DEBUG_MARKER_OBJECT_NAME_INFO_EXT    # VulkanGen.ReplaceStructureType

    pNext = next == C_NULL ? C_NULL : (next_ref = Ref(next.vk); preserve(next_ref, next); unsafe_pointer(next_ref))    # VulkanGen.GeneratePointers
    pObjectName = object_name == C_NULL ? C_NULL : pointer(object_name)    # VulkanGen.GeneratePointers
    vk = VkDebugMarkerObjectNameInfoEXT(sType, pNext, object_type, object, pObjectName)

    DebugMarkerObjectNameInfoEXT(object_type, object, object_name, vk)
end

function DebugMarkerObjectTagInfoEXT(object_type, object, tag_name, tag; next = C_NULL)
    sType = VK_STRUCTURE_TYPE_DEBUG_MARKER_OBJECT_TAG_INFO_EXT    # VulkanGen.ReplaceStructureType

    pNext = next == C_NULL ? C_NULL : (next_ref = Ref(next.vk); preserve(next_ref, next); unsafe_pointer(next_ref))    # VulkanGen.GeneratePointers
    tagSize = pointer_length(tag)    # VulkanGen.ComputeLengthArgument
    pTag = tag == C_NULL ? C_NULL : (tag_ref = Ref(tag.vk); preserve(tag_ref, tag); unsafe_pointer(tag_ref))    # VulkanGen.GeneratePointers
    vk = VkDebugMarkerObjectTagInfoEXT(sType, pNext, object_type, object, tag_name, tagSize, pTag)

    DebugMarkerObjectTagInfoEXT(object_type, object, tag_name, tag, vk)
end

function DebugMarkerMarkerInfoEXT(marker_name; color = nothing, next = C_NULL)
    sType = VK_STRUCTURE_TYPE_DEBUG_MARKER_MARKER_INFO_EXT    # VulkanGen.ReplaceStructureType

    pNext = next == C_NULL ? C_NULL : (next_ref = Ref(next.vk); preserve(next_ref, next); unsafe_pointer(next_ref))    # VulkanGen.GeneratePointers
    pMarkerName = marker_name == C_NULL ? C_NULL : pointer(marker_name)    # VulkanGen.GeneratePointers
    color = isnothing(color) ? 0 : color    # VulkanGen.AddDefaults

    vk = VkDebugMarkerMarkerInfoEXT(sType, pNext, pMarkerName, color)

    DebugMarkerMarkerInfoEXT(marker_name, color, vk)
end

function DedicatedAllocationImageCreateInfoNV(dedicated_allocation; next = C_NULL)
    sType = VK_STRUCTURE_TYPE_DEDICATED_ALLOCATION_IMAGE_CREATE_INFO_NV    # VulkanGen.ReplaceStructureType

    pNext = next == C_NULL ? C_NULL : (next_ref = Ref(next.vk); preserve(next_ref, next); unsafe_pointer(next_ref))    # VulkanGen.GeneratePointers
    vk = VkDedicatedAllocationImageCreateInfoNV(sType, pNext, dedicated_allocation)

    DedicatedAllocationImageCreateInfoNV(dedicated_allocation, vk)
end

function DedicatedAllocationBufferCreateInfoNV(dedicated_allocation; next = C_NULL)
    sType = VK_STRUCTURE_TYPE_DEDICATED_ALLOCATION_BUFFER_CREATE_INFO_NV    # VulkanGen.ReplaceStructureType

    pNext = next == C_NULL ? C_NULL : (next_ref = Ref(next.vk); preserve(next_ref, next); unsafe_pointer(next_ref))    # VulkanGen.GeneratePointers
    vk = VkDedicatedAllocationBufferCreateInfoNV(sType, pNext, dedicated_allocation)

    DedicatedAllocationBufferCreateInfoNV(dedicated_allocation, vk)
end

function DedicatedAllocationMemoryAllocateInfoNV(; image = nothing, buffer = nothing, next = C_NULL)
    sType = VK_STRUCTURE_TYPE_DEDICATED_ALLOCATION_MEMORY_ALLOCATE_INFO_NV    # VulkanGen.ReplaceStructureType

    pNext = next == C_NULL ? C_NULL : (next_ref = Ref(next.vk); preserve(next_ref, next); unsafe_pointer(next_ref))    # VulkanGen.GeneratePointers
    image = isnothing(image) ? VK_NULL_HANDLE : image    # VulkanGen.AddDefaults
    buffer = isnothing(buffer) ? VK_NULL_HANDLE : buffer    # VulkanGen.AddDefaults

    vk = VkDedicatedAllocationMemoryAllocateInfoNV(sType, pNext, image, buffer)

    DedicatedAllocationMemoryAllocateInfoNV(image, buffer, vk)
end

function PhysicalDeviceTransformFeedbackFeaturesEXT(transform_feedback, geometry_streams; next = C_NULL)
    sType = VK_STRUCTURE_TYPE_PHYSICAL_DEVICE_TRANSFORM_FEEDBACK_FEATURES_EXT    # VulkanGen.ReplaceStructureType

    pNext = next == C_NULL ? C_NULL : (next_ref = Ref(next.vk); preserve(next_ref, next); unsafe_pointer(next_ref))    # VulkanGen.GeneratePointers
    vk = VkPhysicalDeviceTransformFeedbackFeaturesEXT(sType, pNext, transform_feedback, geometry_streams)

    PhysicalDeviceTransformFeedbackFeaturesEXT(transform_feedback, geometry_streams, vk)
end

function PipelineRasterizationStateStreamCreateInfoEXT(rasterization_stream; next = C_NULL, flags = 0)
    sType = VK_STRUCTURE_TYPE_PIPELINE_RASTERIZATION_STATE_STREAM_CREATE_INFO_EXT    # VulkanGen.ReplaceStructureType

    pNext = next == C_NULL ? C_NULL : (next_ref = Ref(next.vk); preserve(next_ref, next); unsafe_pointer(next_ref))    # VulkanGen.GeneratePointers
    vk = VkPipelineRasterizationStateStreamCreateInfoEXT(sType, pNext, flags, rasterization_stream)

    PipelineRasterizationStateStreamCreateInfoEXT(rasterization_stream, vk)
end

function ImageViewHandleInfoNVX(image_view, descriptor_type; sampler = nothing, next = C_NULL)
    sType = VK_STRUCTURE_TYPE_IMAGE_VIEW_HANDLE_INFO_NVX    # VulkanGen.ReplaceStructureType

    pNext = next == C_NULL ? C_NULL : (next_ref = Ref(next.vk); preserve(next_ref, next); unsafe_pointer(next_ref))    # VulkanGen.GeneratePointers
    sampler = isnothing(sampler) ? VK_NULL_HANDLE : sampler    # VulkanGen.AddDefaults

    vk = VkImageViewHandleInfoNVX(sType, pNext, image_view, descriptor_type, sampler)

    ImageViewHandleInfoNVX(image_view, descriptor_type, sampler, vk)
end

function ShaderResourceUsageAMD(num_used_vgprs, num_used_sgprs, lds_size_per_local_work_group, lds_usage_size_in_bytes, scratch_mem_usage_in_bytes)
    vk = VkShaderResourceUsageAMD(num_used_vgprs, num_used_sgprs, lds_size_per_local_work_group, lds_usage_size_in_bytes, scratch_mem_usage_in_bytes)

    ShaderResourceUsageAMD(num_used_vgprs, num_used_sgprs, lds_size_per_local_work_group, lds_usage_size_in_bytes, scratch_mem_usage_in_bytes, vk)
end

function ShaderStatisticsInfoAMD(shader_stage_mask, resource_usage, num_physical_vgprs, num_physical_sgprs, num_available_vgprs, num_available_sgprs, compute_work_group_size)
    vk = VkShaderStatisticsInfoAMD(shader_stage_mask, resource_usage, num_physical_vgprs, num_physical_sgprs, num_available_vgprs, num_available_sgprs, compute_work_group_size)

    ShaderStatisticsInfoAMD(shader_stage_mask, resource_usage, num_physical_vgprs, num_physical_sgprs, num_available_vgprs, num_available_sgprs, compute_work_group_size, vk)
end

function PhysicalDeviceCornerSampledImageFeaturesNV(corner_sampled_image; next = C_NULL)
    sType = VK_STRUCTURE_TYPE_PHYSICAL_DEVICE_CORNER_SAMPLED_IMAGE_FEATURES_NV    # VulkanGen.ReplaceStructureType

    pNext = next == C_NULL ? C_NULL : (next_ref = Ref(next.vk); preserve(next_ref, next); unsafe_pointer(next_ref))    # VulkanGen.GeneratePointers
    vk = VkPhysicalDeviceCornerSampledImageFeaturesNV(sType, pNext, corner_sampled_image)

    PhysicalDeviceCornerSampledImageFeaturesNV(corner_sampled_image, vk)
end

function ExternalMemoryImageCreateInfoNV(; handle_types = nothing, next = C_NULL)
    sType = VK_STRUCTURE_TYPE_EXTERNAL_MEMORY_IMAGE_CREATE_INFO_NV    # VulkanGen.ReplaceStructureType

    pNext = next == C_NULL ? C_NULL : (next_ref = Ref(next.vk); preserve(next_ref, next); unsafe_pointer(next_ref))    # VulkanGen.GeneratePointers
    handleTypes = isnothing(handle_types) ? 0 : handle_types    # VulkanGen.AddDefaults

    vk = VkExternalMemoryImageCreateInfoNV(sType, pNext, handleTypes)

    ExternalMemoryImageCreateInfoNV(handle_types, vk)
end

function ExportMemoryAllocateInfoNV(; handle_types = nothing, next = C_NULL)
    sType = VK_STRUCTURE_TYPE_EXPORT_MEMORY_ALLOCATE_INFO_NV    # VulkanGen.ReplaceStructureType

    pNext = next == C_NULL ? C_NULL : (next_ref = Ref(next.vk); preserve(next_ref, next); unsafe_pointer(next_ref))    # VulkanGen.GeneratePointers
    handleTypes = isnothing(handle_types) ? 0 : handle_types    # VulkanGen.AddDefaults

    vk = VkExportMemoryAllocateInfoNV(sType, pNext, handleTypes)

    ExportMemoryAllocateInfoNV(handle_types, vk)
end

function ValidationFlagsEXT(disabled_validation_checks; next = C_NULL)
    sType = VK_STRUCTURE_TYPE_VALIDATION_FLAGS_EXT    # VulkanGen.ReplaceStructureType

    pNext = next == C_NULL ? C_NULL : (next_ref = Ref(next.vk); preserve(next_ref, next); unsafe_pointer(next_ref))    # VulkanGen.GeneratePointers
    disabledValidationCheckCount = pointer_length(disabled_validation_checks)    # VulkanGen.ComputeLengthArgument
    pDisabledValidationChecks = disabled_validation_checks == C_NULL ? C_NULL : (disabled_validation_checks_ref = Ref(disabled_validation_checks.vk);
                                                                                 preserve(disabled_validation_checks_ref, disabled_validation_checks);
                                                                                 unsafe_pointer(disabled_validation_checks_ref))    # VulkanGen.GeneratePointers
    vk = VkValidationFlagsEXT(sType, pNext, disabledValidationCheckCount, pDisabledValidationChecks)

    ValidationFlagsEXT(disabled_validation_checks, vk)
end

function PhysicalDeviceTextureCompressionASTCHDRFeaturesEXT(texture_compression_astc_hdr; next = C_NULL)
    sType = VK_STRUCTURE_TYPE_PHYSICAL_DEVICE_TEXTURE_COMPRESSION_ASTC_HDR_FEATURES_EXT    # VulkanGen.ReplaceStructureType

    pNext = next == C_NULL ? C_NULL : (next_ref = Ref(next.vk); preserve(next_ref, next); unsafe_pointer(next_ref))    # VulkanGen.GeneratePointers
    vk = VkPhysicalDeviceTextureCompressionASTCHDRFeaturesEXT(sType, pNext, texture_compression_astc_hdr)

    PhysicalDeviceTextureCompressionASTCHDRFeaturesEXT(texture_compression_astc_hdr, vk)
end

function ImageViewASTCDecodeModeEXT(decode_mode; next = C_NULL)
    sType = VK_STRUCTURE_TYPE_IMAGE_VIEW_ASTC_DECODE_MODE_EXT    # VulkanGen.ReplaceStructureType

    pNext = next == C_NULL ? C_NULL : (next_ref = Ref(next.vk); preserve(next_ref, next); unsafe_pointer(next_ref))    # VulkanGen.GeneratePointers
    vk = VkImageViewASTCDecodeModeEXT(sType, pNext, decode_mode)

    ImageViewASTCDecodeModeEXT(decode_mode, vk)
end

function PhysicalDeviceASTCDecodeFeaturesEXT(decode_mode_shared_exponent; next = C_NULL)
    sType = VK_STRUCTURE_TYPE_PHYSICAL_DEVICE_ASTC_DECODE_FEATURES_EXT    # VulkanGen.ReplaceStructureType

    pNext = next == C_NULL ? C_NULL : (next_ref = Ref(next.vk); preserve(next_ref, next); unsafe_pointer(next_ref))    # VulkanGen.GeneratePointers
    vk = VkPhysicalDeviceASTCDecodeFeaturesEXT(sType, pNext, decode_mode_shared_exponent)

    PhysicalDeviceASTCDecodeFeaturesEXT(decode_mode_shared_exponent, vk)
end

function ConditionalRenderingBeginInfoEXT(buffer, offset; next = C_NULL, flags = 0)
    sType = VK_STRUCTURE_TYPE_CONDITIONAL_RENDERING_BEGIN_INFO_EXT    # VulkanGen.ReplaceStructureType

    pNext = next == C_NULL ? C_NULL : (next_ref = Ref(next.vk); preserve(next_ref, next); unsafe_pointer(next_ref))    # VulkanGen.GeneratePointers
    vk = VkConditionalRenderingBeginInfoEXT(sType, pNext, buffer, offset, flags)

    ConditionalRenderingBeginInfoEXT(buffer, offset, vk)
end

function PhysicalDeviceConditionalRenderingFeaturesEXT(conditional_rendering, inherited_conditional_rendering; next = C_NULL)
    sType = VK_STRUCTURE_TYPE_PHYSICAL_DEVICE_CONDITIONAL_RENDERING_FEATURES_EXT    # VulkanGen.ReplaceStructureType

    pNext = next == C_NULL ? C_NULL : (next_ref = Ref(next.vk); preserve(next_ref, next); unsafe_pointer(next_ref))    # VulkanGen.GeneratePointers
    vk = VkPhysicalDeviceConditionalRenderingFeaturesEXT(sType, pNext, conditional_rendering, inherited_conditional_rendering)

    PhysicalDeviceConditionalRenderingFeaturesEXT(conditional_rendering, inherited_conditional_rendering, vk)
end

function CommandBufferInheritanceConditionalRenderingInfoEXT(conditional_rendering_enable; next = C_NULL)
    sType = VK_STRUCTURE_TYPE_COMMAND_BUFFER_INHERITANCE_CONDITIONAL_RENDERING_INFO_EXT    # VulkanGen.ReplaceStructureType

    pNext = next == C_NULL ? C_NULL : (next_ref = Ref(next.vk); preserve(next_ref, next); unsafe_pointer(next_ref))    # VulkanGen.GeneratePointers
    vk = VkCommandBufferInheritanceConditionalRenderingInfoEXT(sType, pNext, conditional_rendering_enable)

    CommandBufferInheritanceConditionalRenderingInfoEXT(conditional_rendering_enable, vk)
end

function ViewportWScalingNV(xcoeff, ycoeff)
    vk = VkViewportWScalingNV(xcoeff, ycoeff)

    ViewportWScalingNV(xcoeff, ycoeff, vk)
end

function PipelineViewportWScalingStateCreateInfoNV(viewport_w_scaling_enable; viewport_w_scalings = nothing, next = C_NULL)
    sType = VK_STRUCTURE_TYPE_PIPELINE_VIEWPORT_W_SCALING_STATE_CREATE_INFO_NV    # VulkanGen.ReplaceStructureType

    pNext = next == C_NULL ? C_NULL : (next_ref = Ref(next.vk); preserve(next_ref, next); unsafe_pointer(next_ref))    # VulkanGen.GeneratePointers
    viewportCount = pointer_length(viewport_w_scalings)    # VulkanGen.ComputeLengthArgument
    pViewportWScalings = isnothing(viewport_w_scalings) ? C_NULL : viewport_w_scalings    # VulkanGen.AddDefaults

    pViewportWScalings = pViewportWScalings == C_NULL ? C_NULL : (pViewportWScalings_ref = Ref(pViewportWScalings.vk);
                                                                  preserve(pViewportWScalings_ref, viewport_w_scalings);
                                                                  unsafe_pointer(pViewportWScalings_ref))    # VulkanGen.GeneratePointers
    vk = VkPipelineViewportWScalingStateCreateInfoNV(sType, pNext, viewport_w_scaling_enable, viewportCount, pViewportWScalings)

    PipelineViewportWScalingStateCreateInfoNV(viewport_w_scaling_enable, viewport_w_scalings, vk)
end

function SurfaceCapabilities2EXT(min_image_count, max_image_count, current_extent, min_image_extent, max_image_extent, max_image_array_layers, current_transform; supported_transforms = nothing,
                                 supported_usage_flags = nothing, supported_surface_counters = nothing, supported_composite_alpha = nothing, next = C_NULL)
    sType = VK_STRUCTURE_TYPE_SURFACE_CAPABILITIES_2_EXT    # VulkanGen.ReplaceStructureType

    pNext = next == C_NULL ? C_NULL : (next_ref = Ref(next.vk); preserve(next_ref, next); unsafe_pointer(next_ref))    # VulkanGen.GeneratePointers
    supportedTransforms = isnothing(supported_transforms) ? 0 : supported_transforms    # VulkanGen.AddDefaults
    supportedCompositeAlpha = isnothing(supported_composite_alpha) ? 0 : supported_composite_alpha    # VulkanGen.AddDefaults

    supportedUsageFlags = isnothing(supported_usage_flags) ? 0 : supported_usage_flags    # VulkanGen.AddDefaults
    supportedSurfaceCounters = isnothing(supported_surface_counters) ? 0 : supported_surface_counters    # VulkanGen.AddDefaults
    vk = VkSurfaceCapabilities2EXT(sType, pNext, min_image_count, max_image_count, current_extent, min_image_extent, max_image_extent, max_image_array_layers, supportedTransforms, current_transform,
                                   supportedCompositeAlpha, supportedUsageFlags, supportedSurfaceCounters)

    SurfaceCapabilities2EXT(min_image_count, max_image_count, current_extent, min_image_extent, max_image_extent, max_image_array_layers, supported_transforms, current_transform,
                            supported_composite_alpha, supported_usage_flags, supported_surface_counters, vk)
end

function DisplayPowerInfoEXT(power_state; next = C_NULL)
    sType = VK_STRUCTURE_TYPE_DISPLAY_POWER_INFO_EXT    # VulkanGen.ReplaceStructureType

    pNext = next == C_NULL ? C_NULL : (next_ref = Ref(next.vk); preserve(next_ref, next); unsafe_pointer(next_ref))    # VulkanGen.GeneratePointers
    powerState = power_state == C_NULL ? C_NULL : (power_state_ref = Ref(power_state.vk);
                                                   preserve(power_state_ref, power_state);
                                                   unsafe_pointer(power_state_ref))    # VulkanGen.GeneratePointers
    vk = VkDisplayPowerInfoEXT(sType, pNext, powerState)

    DisplayPowerInfoEXT(power_state, vk)
end

function DeviceEventInfoEXT(device_event; next = C_NULL)
    sType = VK_STRUCTURE_TYPE_DEVICE_EVENT_INFO_EXT    # VulkanGen.ReplaceStructureType

    pNext = next == C_NULL ? C_NULL : (next_ref = Ref(next.vk); preserve(next_ref, next); unsafe_pointer(next_ref))    # VulkanGen.GeneratePointers
    vk = VkDeviceEventInfoEXT(sType, pNext, device_event)

    DeviceEventInfoEXT(device_event, vk)
end

function DisplayEventInfoEXT(display_event; next = C_NULL)
    sType = VK_STRUCTURE_TYPE_DISPLAY_EVENT_INFO_EXT    # VulkanGen.ReplaceStructureType

    pNext = next == C_NULL ? C_NULL : (next_ref = Ref(next.vk); preserve(next_ref, next); unsafe_pointer(next_ref))    # VulkanGen.GeneratePointers
    vk = VkDisplayEventInfoEXT(sType, pNext, display_event)

    DisplayEventInfoEXT(display_event, vk)
end

function SwapchainCounterCreateInfoEXT(; surface_counters = nothing, next = C_NULL)
    sType = VK_STRUCTURE_TYPE_SWAPCHAIN_COUNTER_CREATE_INFO_EXT    # VulkanGen.ReplaceStructureType

    pNext = next == C_NULL ? C_NULL : (next_ref = Ref(next.vk); preserve(next_ref, next); unsafe_pointer(next_ref))    # VulkanGen.GeneratePointers
    surfaceCounters = isnothing(surface_counters) ? 0 : surface_counters    # VulkanGen.AddDefaults

    vk = VkSwapchainCounterCreateInfoEXT(sType, pNext, surfaceCounters)

    SwapchainCounterCreateInfoEXT(surface_counters, vk)
end

function RefreshCycleDurationGOOGLE(refresh_duration)
    vk = VkRefreshCycleDurationGOOGLE(refresh_duration)

    RefreshCycleDurationGOOGLE(refresh_duration, vk)
end

function PresentTimeGOOGLE(present_id, desired_present_time)
    presentID = present_id == C_NULL ? C_NULL : (present_id_ref = Ref(present_id.vk);
                                                 preserve(present_id_ref, present_id);
                                                 unsafe_pointer(present_id_ref))    # VulkanGen.GeneratePointers
    vk = VkPresentTimeGOOGLE(presentID, desired_present_time)

    PresentTimeGOOGLE(present_id, desired_present_time, vk)
end

function PresentTimesInfoGOOGLE(; times = nothing, next = C_NULL)
    sType = VK_STRUCTURE_TYPE_PRESENT_TIMES_INFO_GOOGLE    # VulkanGen.ReplaceStructureType

    pNext = next == C_NULL ? C_NULL : (next_ref = Ref(next.vk); preserve(next_ref, next); unsafe_pointer(next_ref))    # VulkanGen.GeneratePointers
    swapchainCount = pointer_length(times)    # VulkanGen.ComputeLengthArgument
    pTimes = isnothing(times) ? C_NULL : times    # VulkanGen.AddDefaults

    pTimes = pTimes == C_NULL ? C_NULL : (pTimes_ref = Ref(pTimes.vk);
                                          preserve(pTimes_ref, times);
                                          unsafe_pointer(pTimes_ref))    # VulkanGen.GeneratePointers
    vk = VkPresentTimesInfoGOOGLE(sType, pNext, swapchainCount, pTimes)

    PresentTimesInfoGOOGLE(times, vk)
end

function ViewportSwizzleNV(x, y, z, w)
    vk = VkViewportSwizzleNV(x, y, z, w)

    ViewportSwizzleNV(x, y, z, w, vk)
end

function PipelineViewportSwizzleStateCreateInfoNV(viewport_swizzles; next = C_NULL, flags = 0)
    sType = VK_STRUCTURE_TYPE_PIPELINE_VIEWPORT_SWIZZLE_STATE_CREATE_INFO_NV    # VulkanGen.ReplaceStructureType

    pNext = next == C_NULL ? C_NULL : (next_ref = Ref(next.vk); preserve(next_ref, next); unsafe_pointer(next_ref))    # VulkanGen.GeneratePointers
    viewportCount = pointer_length(viewport_swizzles)    # VulkanGen.ComputeLengthArgument
    pViewportSwizzles = viewport_swizzles == C_NULL ? C_NULL : (viewport_swizzles_ref = Ref(viewport_swizzles.vk);
                                                                preserve(viewport_swizzles_ref, viewport_swizzles);
                                                                unsafe_pointer(viewport_swizzles_ref))    # VulkanGen.GeneratePointers
    vk = VkPipelineViewportSwizzleStateCreateInfoNV(sType, pNext, flags, viewportCount, pViewportSwizzles)

    PipelineViewportSwizzleStateCreateInfoNV(viewport_swizzles, vk)
end

function PipelineDiscardRectangleStateCreateInfoEXT(discard_rectangle_mode, discard_rectangles; next = C_NULL, flags = 0)
    sType = VK_STRUCTURE_TYPE_PIPELINE_DISCARD_RECTANGLE_STATE_CREATE_INFO_EXT    # VulkanGen.ReplaceStructureType

    pNext = next == C_NULL ? C_NULL : (next_ref = Ref(next.vk); preserve(next_ref, next); unsafe_pointer(next_ref))    # VulkanGen.GeneratePointers
    discardRectangleCount = pointer_length(discard_rectangles)    # VulkanGen.ComputeLengthArgument
    pDiscardRectangles = discard_rectangles == C_NULL ? C_NULL : (discard_rectangles_ref = Ref(discard_rectangles.vk);
                                                                  preserve(discard_rectangles_ref, discard_rectangles);
                                                                  unsafe_pointer(discard_rectangles_ref))    # VulkanGen.GeneratePointers
    vk = VkPipelineDiscardRectangleStateCreateInfoEXT(sType, pNext, flags, discard_rectangle_mode, discardRectangleCount, pDiscardRectangles)

    PipelineDiscardRectangleStateCreateInfoEXT(discard_rectangle_mode, discard_rectangles, vk)
end

function PipelineRasterizationConservativeStateCreateInfoEXT(conservative_rasterization_mode, extra_primitive_overestimation_size; next = C_NULL, flags = 0)
    sType = VK_STRUCTURE_TYPE_PIPELINE_RASTERIZATION_CONSERVATIVE_STATE_CREATE_INFO_EXT    # VulkanGen.ReplaceStructureType

    pNext = next == C_NULL ? C_NULL : (next_ref = Ref(next.vk); preserve(next_ref, next); unsafe_pointer(next_ref))    # VulkanGen.GeneratePointers
    vk = VkPipelineRasterizationConservativeStateCreateInfoEXT(sType, pNext, flags, conservative_rasterization_mode, extra_primitive_overestimation_size)

    PipelineRasterizationConservativeStateCreateInfoEXT(conservative_rasterization_mode, extra_primitive_overestimation_size, vk)
end

function PhysicalDeviceDepthClipEnableFeaturesEXT(depth_clip_enable; next = C_NULL)
    sType = VK_STRUCTURE_TYPE_PHYSICAL_DEVICE_DEPTH_CLIP_ENABLE_FEATURES_EXT    # VulkanGen.ReplaceStructureType

    pNext = next == C_NULL ? C_NULL : (next_ref = Ref(next.vk); preserve(next_ref, next); unsafe_pointer(next_ref))    # VulkanGen.GeneratePointers
    vk = VkPhysicalDeviceDepthClipEnableFeaturesEXT(sType, pNext, depth_clip_enable)

    PhysicalDeviceDepthClipEnableFeaturesEXT(depth_clip_enable, vk)
end

function PipelineRasterizationDepthClipStateCreateInfoEXT(depth_clip_enable; next = C_NULL, flags = 0)
    sType = VK_STRUCTURE_TYPE_PIPELINE_RASTERIZATION_DEPTH_CLIP_STATE_CREATE_INFO_EXT    # VulkanGen.ReplaceStructureType

    pNext = next == C_NULL ? C_NULL : (next_ref = Ref(next.vk); preserve(next_ref, next); unsafe_pointer(next_ref))    # VulkanGen.GeneratePointers
    vk = VkPipelineRasterizationDepthClipStateCreateInfoEXT(sType, pNext, flags, depth_clip_enable)

    PipelineRasterizationDepthClipStateCreateInfoEXT(depth_clip_enable, vk)
end

function XYColorEXT(x, y)
    vk = VkXYColorEXT(x, y)

    XYColorEXT(x, y, vk)
end

function HdrMetadataEXT(display_primary_red, display_primary_green, display_primary_blue, white_point, max_luminance, min_luminance, max_content_light_level, max_frame_average_light_level;
                        next = C_NULL)
    sType = VK_STRUCTURE_TYPE_HDR_METADATA_EXT    # VulkanGen.ReplaceStructureType

    pNext = next == C_NULL ? C_NULL : (next_ref = Ref(next.vk); preserve(next_ref, next); unsafe_pointer(next_ref))    # VulkanGen.GeneratePointers
    vk = VkHdrMetadataEXT(sType, pNext, display_primary_red, display_primary_green, display_primary_blue, white_point, max_luminance, min_luminance, max_content_light_level,
                          max_frame_average_light_level)

    HdrMetadataEXT(display_primary_red, display_primary_green, display_primary_blue, white_point, max_luminance, min_luminance, max_content_light_level, max_frame_average_light_level, vk)
end

function DebugUtilsLabelEXT(label_name; color = nothing, next = C_NULL)
    sType = VK_STRUCTURE_TYPE_DEBUG_UTILS_LABEL_EXT    # VulkanGen.ReplaceStructureType

    pNext = next == C_NULL ? C_NULL : (next_ref = Ref(next.vk); preserve(next_ref, next); unsafe_pointer(next_ref))    # VulkanGen.GeneratePointers
    pLabelName = label_name == C_NULL ? C_NULL : pointer(label_name)    # VulkanGen.GeneratePointers
    color = isnothing(color) ? 0 : color    # VulkanGen.AddDefaults

    vk = VkDebugUtilsLabelEXT(sType, pNext, pLabelName, color)

    DebugUtilsLabelEXT(label_name, color, vk)
end

function DebugUtilsObjectNameInfoEXT(object_type, object_handle; object_name = nothing, next = C_NULL)
    sType = VK_STRUCTURE_TYPE_DEBUG_UTILS_OBJECT_NAME_INFO_EXT    # VulkanGen.ReplaceStructureType

    pNext = next == C_NULL ? C_NULL : (next_ref = Ref(next.vk); preserve(next_ref, next); unsafe_pointer(next_ref))    # VulkanGen.GeneratePointers
    pObjectName = isnothing(object_name) ? C_NULL : object_name    # VulkanGen.AddDefaults

    pObjectName = pObjectName == C_NULL ? C_NULL : pointer(pObjectName)    # VulkanGen.GeneratePointers
    vk = VkDebugUtilsObjectNameInfoEXT(sType, pNext, object_type, object_handle, pObjectName)

    DebugUtilsObjectNameInfoEXT(object_type, object_handle, object_name, vk)
end

function DebugUtilsMessengerCallbackDataEXT(message, queue_labels, cmd_buf_labels, objects; message_id_name = nothing, message_id_number = nothing, next = C_NULL, flags = 0)
    sType = VK_STRUCTURE_TYPE_DEBUG_UTILS_MESSENGER_CALLBACK_DATA_EXT    # VulkanGen.ReplaceStructureType

    pNext = next == C_NULL ? C_NULL : (next_ref = Ref(next.vk); preserve(next_ref, next); unsafe_pointer(next_ref))    # VulkanGen.GeneratePointers
    pMessageIdName = isnothing(message_id_name) ? C_NULL : message_id_name    # VulkanGen.AddDefaults
    pMessageIdName = pMessageIdName == C_NULL ? C_NULL : pointer(pMessageIdName)    # VulkanGen.GeneratePointers
    messageIdNumber = isnothing(message_id_number) ? 0 : message_id_number    # VulkanGen.AddDefaults

    pMessage = message == C_NULL ? C_NULL : pointer(message)    # VulkanGen.GeneratePointers
    queueLabelCount = pointer_length(queue_labels)    # VulkanGen.ComputeLengthArgument
    pQueueLabels = queue_labels == C_NULL ? C_NULL : (queue_labels_ref = Ref(queue_labels.vk);
                                                      preserve(queue_labels_ref, queue_labels);
                                                      unsafe_pointer(queue_labels_ref))    # VulkanGen.GeneratePointers
    cmdBufLabelCount = pointer_length(cmd_buf_labels)    # VulkanGen.ComputeLengthArgument
    pCmdBufLabels = cmd_buf_labels == C_NULL ? C_NULL : (cmd_buf_labels_ref = Ref(cmd_buf_labels.vk);
                                                         preserve(cmd_buf_labels_ref, cmd_buf_labels);
                                                         unsafe_pointer(cmd_buf_labels_ref))    # VulkanGen.GeneratePointers
    objectCount = pointer_length(objects)    # VulkanGen.ComputeLengthArgument
    pObjects = objects == C_NULL ? C_NULL : (objects_ref = Ref(objects.vk);
                                             preserve(objects_ref, objects);
                                             unsafe_pointer(objects_ref))    # VulkanGen.GeneratePointers
    vk = VkDebugUtilsMessengerCallbackDataEXT(sType, pNext, flags, pMessageIdName, messageIdNumber, pMessage, queueLabelCount, pQueueLabels, cmdBufLabelCount, pCmdBufLabels, objectCount, pObjects)

    DebugUtilsMessengerCallbackDataEXT(message_id_name, message_id_number, message, queue_labels, cmd_buf_labels, objects, vk)
end

function DebugUtilsMessengerCreateInfoEXT(message_severity, message_type, user_callback; user_data = nothing, next = C_NULL, flags = 0)
    sType = VK_STRUCTURE_TYPE_DEBUG_UTILS_MESSENGER_CREATE_INFO_EXT    # VulkanGen.ReplaceStructureType

    pNext = next == C_NULL ? C_NULL : (next_ref = Ref(next.vk); preserve(next_ref, next); unsafe_pointer(next_ref))    # VulkanGen.GeneratePointers
    pfnUserCallback = user_callback == C_NULL ? C_NULL : (user_callback_ref = Ref(user_callback.vk);
                                                          preserve(user_callback_ref, user_callback);
                                                          unsafe_pointer(user_callback_ref))    # VulkanGen.GeneratePointers
    pUserData = isnothing(user_data) ? C_NULL : user_data    # VulkanGen.AddDefaults

    pUserData = pUserData == C_NULL ? C_NULL : (pUserData_ref = Ref(pUserData.vk);
                                                preserve(pUserData_ref, user_data);
                                                unsafe_pointer(pUserData_ref))    # VulkanGen.GeneratePointers
    vk = VkDebugUtilsMessengerCreateInfoEXT(sType, pNext, flags, message_severity, message_type, pfnUserCallback, pUserData)

    DebugUtilsMessengerCreateInfoEXT(message_severity, message_type, user_callback, user_data, vk)
end

function DebugUtilsObjectTagInfoEXT(object_type, object_handle, tag_name, tag; next = C_NULL)
    sType = VK_STRUCTURE_TYPE_DEBUG_UTILS_OBJECT_TAG_INFO_EXT    # VulkanGen.ReplaceStructureType

    pNext = next == C_NULL ? C_NULL : (next_ref = Ref(next.vk); preserve(next_ref, next); unsafe_pointer(next_ref))    # VulkanGen.GeneratePointers
    tagSize = pointer_length(tag)    # VulkanGen.ComputeLengthArgument
    pTag = tag == C_NULL ? C_NULL : (tag_ref = Ref(tag.vk); preserve(tag_ref, tag); unsafe_pointer(tag_ref))    # VulkanGen.GeneratePointers
    vk = VkDebugUtilsObjectTagInfoEXT(sType, pNext, object_type, object_handle, tag_name, tagSize, pTag)

    DebugUtilsObjectTagInfoEXT(object_type, object_handle, tag_name, tag, vk)
end

function PhysicalDeviceInlineUniformBlockFeaturesEXT(inline_uniform_block, descriptor_binding_inline_uniform_block_update_after_bind; next = C_NULL)
    sType = VK_STRUCTURE_TYPE_PHYSICAL_DEVICE_INLINE_UNIFORM_BLOCK_FEATURES_EXT    # VulkanGen.ReplaceStructureType

    pNext = next == C_NULL ? C_NULL : (next_ref = Ref(next.vk); preserve(next_ref, next); unsafe_pointer(next_ref))    # VulkanGen.GeneratePointers
    vk = VkPhysicalDeviceInlineUniformBlockFeaturesEXT(sType, pNext, inline_uniform_block, descriptor_binding_inline_uniform_block_update_after_bind)

    PhysicalDeviceInlineUniformBlockFeaturesEXT(inline_uniform_block, descriptor_binding_inline_uniform_block_update_after_bind, vk)
end

function WriteDescriptorSetInlineUniformBlockEXT(data; next = C_NULL)
    sType = VK_STRUCTURE_TYPE_WRITE_DESCRIPTOR_SET_INLINE_UNIFORM_BLOCK_EXT    # VulkanGen.ReplaceStructureType

    pNext = next == C_NULL ? C_NULL : (next_ref = Ref(next.vk); preserve(next_ref, next); unsafe_pointer(next_ref))    # VulkanGen.GeneratePointers
    dataSize = pointer_length(data)    # VulkanGen.ComputeLengthArgument
    pData = data == C_NULL ? C_NULL : (data_ref = Ref(data.vk); preserve(data_ref, data); unsafe_pointer(data_ref))    # VulkanGen.GeneratePointers
    vk = VkWriteDescriptorSetInlineUniformBlockEXT(sType, pNext, dataSize, pData)

    WriteDescriptorSetInlineUniformBlockEXT(data, vk)
end

function DescriptorPoolInlineUniformBlockCreateInfoEXT(max_inline_uniform_block_bindings; next = C_NULL)
    sType = VK_STRUCTURE_TYPE_DESCRIPTOR_POOL_INLINE_UNIFORM_BLOCK_CREATE_INFO_EXT    # VulkanGen.ReplaceStructureType

    pNext = next == C_NULL ? C_NULL : (next_ref = Ref(next.vk); preserve(next_ref, next); unsafe_pointer(next_ref))    # VulkanGen.GeneratePointers
    vk = VkDescriptorPoolInlineUniformBlockCreateInfoEXT(sType, pNext, max_inline_uniform_block_bindings)

    DescriptorPoolInlineUniformBlockCreateInfoEXT(max_inline_uniform_block_bindings, vk)
end

function SampleLocationEXT(x, y)
    vk = VkSampleLocationEXT(x, y)

    SampleLocationEXT(x, y, vk)
end

function SampleLocationsInfoEXT(sample_location_grid_size, sample_locations; sample_locations_per_pixel = nothing, next = C_NULL)
    sType = VK_STRUCTURE_TYPE_SAMPLE_LOCATIONS_INFO_EXT    # VulkanGen.ReplaceStructureType

    pNext = next == C_NULL ? C_NULL : (next_ref = Ref(next.vk); preserve(next_ref, next); unsafe_pointer(next_ref))    # VulkanGen.GeneratePointers
    sampleLocationsPerPixel = isnothing(sample_locations_per_pixel) ? 0 : sample_locations_per_pixel    # VulkanGen.AddDefaults

    sampleLocationsCount = pointer_length(sample_locations)    # VulkanGen.ComputeLengthArgument
    pSampleLocations = sample_locations == C_NULL ? C_NULL : (sample_locations_ref = Ref(sample_locations.vk);
                                                              preserve(sample_locations_ref, sample_locations);
                                                              unsafe_pointer(sample_locations_ref))    # VulkanGen.GeneratePointers
    vk = VkSampleLocationsInfoEXT(sType, pNext, sampleLocationsPerPixel, sample_location_grid_size, sampleLocationsCount, pSampleLocations)

    SampleLocationsInfoEXT(sample_locations_per_pixel, sample_location_grid_size, sample_locations, vk)
end

function AttachmentSampleLocationsEXT(attachment_index, sample_locations_info)
    vk = VkAttachmentSampleLocationsEXT(attachment_index, sample_locations_info)

    AttachmentSampleLocationsEXT(attachment_index, sample_locations_info, vk)
end

function SubpassSampleLocationsEXT(subpass_index, sample_locations_info)
    vk = VkSubpassSampleLocationsEXT(subpass_index, sample_locations_info)

    SubpassSampleLocationsEXT(subpass_index, sample_locations_info, vk)
end

function RenderPassSampleLocationsBeginInfoEXT(attachment_initial_sample_locations, post_subpass_sample_locations; next = C_NULL)
    sType = VK_STRUCTURE_TYPE_RENDER_PASS_SAMPLE_LOCATIONS_BEGIN_INFO_EXT    # VulkanGen.ReplaceStructureType

    pNext = next == C_NULL ? C_NULL : (next_ref = Ref(next.vk); preserve(next_ref, next); unsafe_pointer(next_ref))    # VulkanGen.GeneratePointers
    attachmentInitialSampleLocationsCount = pointer_length(attachment_initial_sample_locations)    # VulkanGen.ComputeLengthArgument
    pAttachmentInitialSampleLocations = attachment_initial_sample_locations == C_NULL ? C_NULL : (attachment_initial_sample_locations_ref = Ref(attachment_initial_sample_locations.vk);
                                                                                                  preserve(attachment_initial_sample_locations_ref, attachment_initial_sample_locations);
                                                                                                  unsafe_pointer(attachment_initial_sample_locations_ref))    # VulkanGen.GeneratePointers
    postSubpassSampleLocationsCount = pointer_length(post_subpass_sample_locations)    # VulkanGen.ComputeLengthArgument
    postSubpassSampleLocationsCount = postSubpassSampleLocationsCount == C_NULL ? C_NULL : (postSubpassSampleLocationsCount_ref = Ref(postSubpassSampleLocationsCount.vk);
                                                                                            preserve(postSubpassSampleLocationsCount_ref, post_subpass_sample_locations_count);
                                                                                            unsafe_pointer(postSubpassSampleLocationsCount_ref))    # VulkanGen.GeneratePointers
    pPostSubpassSampleLocations = post_subpass_sample_locations == C_NULL ? C_NULL : (post_subpass_sample_locations_ref = Ref(post_subpass_sample_locations.vk);
                                                                                      preserve(post_subpass_sample_locations_ref, post_subpass_sample_locations);
                                                                                      unsafe_pointer(post_subpass_sample_locations_ref))    # VulkanGen.GeneratePointers
    vk = VkRenderPassSampleLocationsBeginInfoEXT(sType, pNext, attachmentInitialSampleLocationsCount, pAttachmentInitialSampleLocations, postSubpassSampleLocationsCount, pPostSubpassSampleLocations)

    RenderPassSampleLocationsBeginInfoEXT(attachment_initial_sample_locations, post_subpass_sample_locations, vk)
end

function PipelineSampleLocationsStateCreateInfoEXT(sample_locations_enable, sample_locations_info; next = C_NULL)
    sType = VK_STRUCTURE_TYPE_PIPELINE_SAMPLE_LOCATIONS_STATE_CREATE_INFO_EXT    # VulkanGen.ReplaceStructureType

    pNext = next == C_NULL ? C_NULL : (next_ref = Ref(next.vk); preserve(next_ref, next); unsafe_pointer(next_ref))    # VulkanGen.GeneratePointers
    vk = VkPipelineSampleLocationsStateCreateInfoEXT(sType, pNext, sample_locations_enable, sample_locations_info)

    PipelineSampleLocationsStateCreateInfoEXT(sample_locations_enable, sample_locations_info, vk)
end

function PhysicalDeviceBlendOperationAdvancedFeaturesEXT(advanced_blend_coherent_operations; next = C_NULL)
    sType = VK_STRUCTURE_TYPE_PHYSICAL_DEVICE_BLEND_OPERATION_ADVANCED_FEATURES_EXT    # VulkanGen.ReplaceStructureType

    pNext = next == C_NULL ? C_NULL : (next_ref = Ref(next.vk); preserve(next_ref, next); unsafe_pointer(next_ref))    # VulkanGen.GeneratePointers
    vk = VkPhysicalDeviceBlendOperationAdvancedFeaturesEXT(sType, pNext, advanced_blend_coherent_operations)

    PhysicalDeviceBlendOperationAdvancedFeaturesEXT(advanced_blend_coherent_operations, vk)
end

function PipelineColorBlendAdvancedStateCreateInfoEXT(src_premultiplied, dst_premultiplied, blend_overlap; next = C_NULL)
    sType = VK_STRUCTURE_TYPE_PIPELINE_COLOR_BLEND_ADVANCED_STATE_CREATE_INFO_EXT    # VulkanGen.ReplaceStructureType

    pNext = next == C_NULL ? C_NULL : (next_ref = Ref(next.vk); preserve(next_ref, next); unsafe_pointer(next_ref))    # VulkanGen.GeneratePointers
    vk = VkPipelineColorBlendAdvancedStateCreateInfoEXT(sType, pNext, src_premultiplied, dst_premultiplied, blend_overlap)

    PipelineColorBlendAdvancedStateCreateInfoEXT(src_premultiplied, dst_premultiplied, blend_overlap, vk)
end

function PipelineCoverageToColorStateCreateInfoNV(coverage_to_color_enable; coverage_to_color_location = nothing, next = C_NULL, flags = 0)
    sType = VK_STRUCTURE_TYPE_PIPELINE_COVERAGE_TO_COLOR_STATE_CREATE_INFO_NV    # VulkanGen.ReplaceStructureType

    pNext = next == C_NULL ? C_NULL : (next_ref = Ref(next.vk); preserve(next_ref, next); unsafe_pointer(next_ref))    # VulkanGen.GeneratePointers
    coverageToColorLocation = isnothing(coverage_to_color_location) ? 0 : coverage_to_color_location    # VulkanGen.AddDefaults

    vk = VkPipelineCoverageToColorStateCreateInfoNV(sType, pNext, flags, coverage_to_color_enable, coverageToColorLocation)

    PipelineCoverageToColorStateCreateInfoNV(coverage_to_color_enable, coverage_to_color_location, vk)
end

function PipelineCoverageModulationStateCreateInfoNV(coverage_modulation_mode, coverage_modulation_table_enable; coverage_modulation_table = nothing, next = C_NULL, flags = 0)
    sType = VK_STRUCTURE_TYPE_PIPELINE_COVERAGE_MODULATION_STATE_CREATE_INFO_NV    # VulkanGen.ReplaceStructureType

    pNext = next == C_NULL ? C_NULL : (next_ref = Ref(next.vk); preserve(next_ref, next); unsafe_pointer(next_ref))    # VulkanGen.GeneratePointers
    coverageModulationTableCount = pointer_length(coverage_modulation_table)    # VulkanGen.ComputeLengthArgument
    pCoverageModulationTable = isnothing(coverage_modulation_table) ? 0 : coverage_modulation_table    # VulkanGen.AddDefaults

    pCoverageModulationTable = pCoverageModulationTable == C_NULL ? C_NULL : (pCoverageModulationTable_ref = Ref(pCoverageModulationTable.vk);
                                                                              preserve(pCoverageModulationTable_ref, coverage_modulation_table);
                                                                              unsafe_pointer(pCoverageModulationTable_ref))    # VulkanGen.GeneratePointers
    vk = VkPipelineCoverageModulationStateCreateInfoNV(sType, pNext, flags, coverage_modulation_mode, coverage_modulation_table_enable, coverageModulationTableCount, pCoverageModulationTable)

    PipelineCoverageModulationStateCreateInfoNV(coverage_modulation_mode, coverage_modulation_table_enable, coverage_modulation_table, vk)
end

function PhysicalDeviceShaderSMBuiltinsFeaturesNV(shader_sm_builtins; next = C_NULL)
    sType = VK_STRUCTURE_TYPE_PHYSICAL_DEVICE_SHADER_SM_BUILTINS_FEATURES_NV    # VulkanGen.ReplaceStructureType

    pNext = next == C_NULL ? C_NULL : (next_ref = Ref(next.vk); preserve(next_ref, next); unsafe_pointer(next_ref))    # VulkanGen.GeneratePointers
    vk = VkPhysicalDeviceShaderSMBuiltinsFeaturesNV(sType, pNext, shader_sm_builtins)

    PhysicalDeviceShaderSMBuiltinsFeaturesNV(shader_sm_builtins, vk)
end

function PhysicalDeviceImageDrmFormatModifierInfoEXT(drm_format_modifier, sharing_mode, queue_family_indices; next = C_NULL)
    sType = VK_STRUCTURE_TYPE_PHYSICAL_DEVICE_IMAGE_DRM_FORMAT_MODIFIER_INFO_EXT    # VulkanGen.ReplaceStructureType

    pNext = next == C_NULL ? C_NULL : (next_ref = Ref(next.vk); preserve(next_ref, next); unsafe_pointer(next_ref))    # VulkanGen.GeneratePointers
    queueFamilyIndexCount = pointer_length(queue_family_indices)    # VulkanGen.ComputeLengthArgument
    pQueueFamilyIndices = queue_family_indices == C_NULL ? C_NULL : (queue_family_indices_ref = Ref(queue_family_indices.vk);
                                                                     preserve(queue_family_indices_ref, queue_family_indices);
                                                                     unsafe_pointer(queue_family_indices_ref))    # VulkanGen.GeneratePointers
    vk = VkPhysicalDeviceImageDrmFormatModifierInfoEXT(sType, pNext, drm_format_modifier, sharing_mode, queueFamilyIndexCount, pQueueFamilyIndices)

    PhysicalDeviceImageDrmFormatModifierInfoEXT(drm_format_modifier, sharing_mode, queue_family_indices, vk)
end

function ImageDrmFormatModifierListCreateInfoEXT(drm_format_modifiers; next = C_NULL)
    sType = VK_STRUCTURE_TYPE_IMAGE_DRM_FORMAT_MODIFIER_LIST_CREATE_INFO_EXT    # VulkanGen.ReplaceStructureType

    pNext = next == C_NULL ? C_NULL : (next_ref = Ref(next.vk); preserve(next_ref, next); unsafe_pointer(next_ref))    # VulkanGen.GeneratePointers
    drmFormatModifierCount = pointer_length(drm_format_modifiers)    # VulkanGen.ComputeLengthArgument
    pDrmFormatModifiers = drm_format_modifiers == C_NULL ? C_NULL : (drm_format_modifiers_ref = Ref(drm_format_modifiers.vk);
                                                                     preserve(drm_format_modifiers_ref, drm_format_modifiers);
                                                                     unsafe_pointer(drm_format_modifiers_ref))    # VulkanGen.GeneratePointers
    vk = VkImageDrmFormatModifierListCreateInfoEXT(sType, pNext, drmFormatModifierCount, pDrmFormatModifiers)

    ImageDrmFormatModifierListCreateInfoEXT(drm_format_modifiers, vk)
end

function ImageDrmFormatModifierExplicitCreateInfoEXT(plane_layouts; next = C_NULL)
    sType = VK_STRUCTURE_TYPE_IMAGE_DRM_FORMAT_MODIFIER_EXPLICIT_CREATE_INFO_EXT    # VulkanGen.ReplaceStructureType

    pNext = next == C_NULL ? C_NULL : (next_ref = Ref(next.vk); preserve(next_ref, next); unsafe_pointer(next_ref))    # VulkanGen.GeneratePointers
    drmFormatModifier = pointer_length(plane_layouts)    # VulkanGen.ComputeLengthArgument
    drmFormatModifierPlaneCount = pointer_length(plane_layouts)    # VulkanGen.ComputeLengthArgument
    pPlaneLayouts = plane_layouts == C_NULL ? C_NULL : (plane_layouts_ref = Ref(plane_layouts.vk);
                                                        preserve(plane_layouts_ref, plane_layouts);
                                                        unsafe_pointer(plane_layouts_ref))    # VulkanGen.GeneratePointers
    vk = VkImageDrmFormatModifierExplicitCreateInfoEXT(sType, pNext, drmFormatModifier, drmFormatModifierPlaneCount, pPlaneLayouts)

    ImageDrmFormatModifierExplicitCreateInfoEXT(plane_layouts, vk)
end

function ValidationCacheCreateInfoEXT(initial_data; next = C_NULL, flags = 0)
    sType = VK_STRUCTURE_TYPE_VALIDATION_CACHE_CREATE_INFO_EXT    # VulkanGen.ReplaceStructureType

    pNext = next == C_NULL ? C_NULL : (next_ref = Ref(next.vk); preserve(next_ref, next); unsafe_pointer(next_ref))    # VulkanGen.GeneratePointers
    initialDataSize = pointer_length(initial_data)    # VulkanGen.ComputeLengthArgument
    pInitialData = initial_data == C_NULL ? C_NULL : (initial_data_ref = Ref(initial_data.vk);
                                                      preserve(initial_data_ref, initial_data);
                                                      unsafe_pointer(initial_data_ref))    # VulkanGen.GeneratePointers
    vk = VkValidationCacheCreateInfoEXT(sType, pNext, flags, initialDataSize, pInitialData)

    ValidationCacheCreateInfoEXT(initial_data, vk)
end

function ShaderModuleValidationCacheCreateInfoEXT(validation_cache; next = C_NULL)
    sType = VK_STRUCTURE_TYPE_SHADER_MODULE_VALIDATION_CACHE_CREATE_INFO_EXT    # VulkanGen.ReplaceStructureType

    pNext = next == C_NULL ? C_NULL : (next_ref = Ref(next.vk); preserve(next_ref, next); unsafe_pointer(next_ref))    # VulkanGen.GeneratePointers
    vk = VkShaderModuleValidationCacheCreateInfoEXT(sType, pNext, validation_cache)

    ShaderModuleValidationCacheCreateInfoEXT(validation_cache, vk)
end

function ShadingRatePaletteNV(shading_rate_palette_entries)
    shadingRatePaletteEntryCount = pointer_length(shading_rate_palette_entries)    # VulkanGen.ComputeLengthArgument
    pShadingRatePaletteEntries = shading_rate_palette_entries == C_NULL ? C_NULL : (shading_rate_palette_entries_ref = Ref(shading_rate_palette_entries.vk);
                                                                                    preserve(shading_rate_palette_entries_ref, shading_rate_palette_entries);
                                                                                    unsafe_pointer(shading_rate_palette_entries_ref))    # VulkanGen.GeneratePointers
    vk = VkShadingRatePaletteNV(shadingRatePaletteEntryCount, pShadingRatePaletteEntries)

    ShadingRatePaletteNV(shading_rate_palette_entries, vk)
end

function PipelineViewportShadingRateImageStateCreateInfoNV(shading_rate_image_enable, shading_rate_palettes; next = C_NULL)
    sType = VK_STRUCTURE_TYPE_PIPELINE_VIEWPORT_SHADING_RATE_IMAGE_STATE_CREATE_INFO_NV    # VulkanGen.ReplaceStructureType

    pNext = next == C_NULL ? C_NULL : (next_ref = Ref(next.vk); preserve(next_ref, next); unsafe_pointer(next_ref))    # VulkanGen.GeneratePointers
    viewportCount = pointer_length(shading_rate_palettes)    # VulkanGen.ComputeLengthArgument
    pShadingRatePalettes = shading_rate_palettes == C_NULL ? C_NULL : (shading_rate_palettes_ref = Ref(shading_rate_palettes.vk);
                                                                       preserve(shading_rate_palettes_ref, shading_rate_palettes);
                                                                       unsafe_pointer(shading_rate_palettes_ref))    # VulkanGen.GeneratePointers
    vk = VkPipelineViewportShadingRateImageStateCreateInfoNV(sType, pNext, shading_rate_image_enable, viewportCount, pShadingRatePalettes)

    PipelineViewportShadingRateImageStateCreateInfoNV(shading_rate_image_enable, shading_rate_palettes, vk)
end

function PhysicalDeviceShadingRateImageFeaturesNV(shading_rate_image, shading_rate_coarse_sample_order; next = C_NULL)
    sType = VK_STRUCTURE_TYPE_PHYSICAL_DEVICE_SHADING_RATE_IMAGE_FEATURES_NV    # VulkanGen.ReplaceStructureType

    pNext = next == C_NULL ? C_NULL : (next_ref = Ref(next.vk); preserve(next_ref, next); unsafe_pointer(next_ref))    # VulkanGen.GeneratePointers
    vk = VkPhysicalDeviceShadingRateImageFeaturesNV(sType, pNext, shading_rate_image, shading_rate_coarse_sample_order)

    PhysicalDeviceShadingRateImageFeaturesNV(shading_rate_image, shading_rate_coarse_sample_order, vk)
end

function CoarseSampleLocationNV(pixel_x, pixel_y, sample)
    pixelX = pixel_x == C_NULL ? C_NULL : (pixel_x_ref = Ref(pixel_x.vk);
                                           preserve(pixel_x_ref, pixel_x);
                                           unsafe_pointer(pixel_x_ref))    # VulkanGen.GeneratePointers
    pixelY = pixel_y == C_NULL ? C_NULL : (pixel_y_ref = Ref(pixel_y.vk);
                                           preserve(pixel_y_ref, pixel_y);
                                           unsafe_pointer(pixel_y_ref))    # VulkanGen.GeneratePointers
    vk = VkCoarseSampleLocationNV(pixelX, pixelY, sample)

    CoarseSampleLocationNV(pixel_x, pixel_y, sample, vk)
end

function CoarseSampleOrderCustomNV(shading_rate, sample_count, sample_locations)
    sampleLocationCount = pointer_length(sample_locations)    # VulkanGen.ComputeLengthArgument
    pSampleLocations = sample_locations == C_NULL ? C_NULL : (sample_locations_ref = Ref(sample_locations.vk);
                                                              preserve(sample_locations_ref, sample_locations);
                                                              unsafe_pointer(sample_locations_ref))    # VulkanGen.GeneratePointers
    vk = VkCoarseSampleOrderCustomNV(shading_rate, sample_count, sampleLocationCount, pSampleLocations)

    CoarseSampleOrderCustomNV(shading_rate, sample_count, sample_locations, vk)
end

function PipelineViewportCoarseSampleOrderStateCreateInfoNV(sample_order_type, custom_sample_orders; next = C_NULL)
    sType = VK_STRUCTURE_TYPE_PIPELINE_VIEWPORT_COARSE_SAMPLE_ORDER_STATE_CREATE_INFO_NV    # VulkanGen.ReplaceStructureType

    pNext = next == C_NULL ? C_NULL : (next_ref = Ref(next.vk); preserve(next_ref, next); unsafe_pointer(next_ref))    # VulkanGen.GeneratePointers
    customSampleOrderCount = pointer_length(custom_sample_orders)    # VulkanGen.ComputeLengthArgument
    pCustomSampleOrders = custom_sample_orders == C_NULL ? C_NULL : (custom_sample_orders_ref = Ref(custom_sample_orders.vk);
                                                                     preserve(custom_sample_orders_ref, custom_sample_orders);
                                                                     unsafe_pointer(custom_sample_orders_ref))    # VulkanGen.GeneratePointers
    vk = VkPipelineViewportCoarseSampleOrderStateCreateInfoNV(sType, pNext, sample_order_type, customSampleOrderCount, pCustomSampleOrders)

    PipelineViewportCoarseSampleOrderStateCreateInfoNV(sample_order_type, custom_sample_orders, vk)
end

function RayTracingShaderGroupCreateInfoNV(type, general_shader, closest_hit_shader, any_hit_shader, intersection_shader; next = C_NULL)
    sType = VK_STRUCTURE_TYPE_RAY_TRACING_SHADER_GROUP_CREATE_INFO_NV    # VulkanGen.ReplaceStructureType

    pNext = next == C_NULL ? C_NULL : (next_ref = Ref(next.vk); preserve(next_ref, next); unsafe_pointer(next_ref))    # VulkanGen.GeneratePointers
    vk = VkRayTracingShaderGroupCreateInfoNV(sType, pNext, type, general_shader, closest_hit_shader, any_hit_shader, intersection_shader)

    RayTracingShaderGroupCreateInfoNV(type, general_shader, closest_hit_shader, any_hit_shader, intersection_shader, vk)
end

function RayTracingPipelineCreateInfoNV(stages, groups, max_recursion_depth, layout, base_pipeline_index; base_pipeline_handle = nothing, next = C_NULL, flags = 0)
    sType = VK_STRUCTURE_TYPE_RAY_TRACING_PIPELINE_CREATE_INFO_NV    # VulkanGen.ReplaceStructureType

    pNext = next == C_NULL ? C_NULL : (next_ref = Ref(next.vk); preserve(next_ref, next); unsafe_pointer(next_ref))    # VulkanGen.GeneratePointers
    stageCount = pointer_length(stages)    # VulkanGen.ComputeLengthArgument
    pStages = stages == C_NULL ? C_NULL : (stages_ref = Ref(stages.vk);
                                           preserve(stages_ref, stages);
                                           unsafe_pointer(stages_ref))    # VulkanGen.GeneratePointers
    groupCount = pointer_length(groups)    # VulkanGen.ComputeLengthArgument
    pGroups = groups == C_NULL ? C_NULL : (groups_ref = Ref(groups.vk);
                                           preserve(groups_ref, groups);
                                           unsafe_pointer(groups_ref))    # VulkanGen.GeneratePointers
    basePipelineHandle = isnothing(base_pipeline_handle) ? VK_NULL_HANDLE : base_pipeline_handle    # VulkanGen.AddDefaults

    vk = VkRayTracingPipelineCreateInfoNV(sType, pNext, flags, stageCount, pStages, groupCount, pGroups, max_recursion_depth, layout, basePipelineHandle, base_pipeline_index)

    RayTracingPipelineCreateInfoNV(stages, groups, max_recursion_depth, layout, base_pipeline_handle, base_pipeline_index, vk)
end

function GeometryTrianglesNV(vertex_offset, vertex_count, vertex_stride, vertex_format, index_offset, index_count, index_type, transform_offset; vertex_data = nothing, transform_data = nothing,
                             index_data = nothing, next = C_NULL)
    sType = VK_STRUCTURE_TYPE_GEOMETRY_TRIANGLES_NV    # VulkanGen.ReplaceStructureType

    pNext = next == C_NULL ? C_NULL : (next_ref = Ref(next.vk); preserve(next_ref, next); unsafe_pointer(next_ref))    # VulkanGen.GeneratePointers
    vertexData = isnothing(vertex_data) ? VK_NULL_HANDLE : vertex_data    # VulkanGen.AddDefaults
    indexData = isnothing(index_data) ? VK_NULL_HANDLE : index_data    # VulkanGen.AddDefaults

    transformData = isnothing(transform_data) ? VK_NULL_HANDLE : transform_data    # VulkanGen.AddDefaults
    vk = VkGeometryTrianglesNV(sType, pNext, vertexData, vertex_offset, vertex_count, vertex_stride, vertex_format, indexData, index_offset, index_count, index_type, transformData, transform_offset)

    GeometryTrianglesNV(vertex_data, vertex_offset, vertex_count, vertex_stride, vertex_format, index_data, index_offset, index_count, index_type, transform_data, transform_offset, vk)
end

function GeometryAABBNV(num_aab_bs, stride, offset; aabb_data = nothing, next = C_NULL)
    sType = VK_STRUCTURE_TYPE_GEOMETRY_AABB_NV    # VulkanGen.ReplaceStructureType

    pNext = next == C_NULL ? C_NULL : (next_ref = Ref(next.vk); preserve(next_ref, next); unsafe_pointer(next_ref))    # VulkanGen.GeneratePointers
    aabbData = isnothing(aabb_data) ? VK_NULL_HANDLE : aabb_data    # VulkanGen.AddDefaults

    vk = VkGeometryAABBNV(sType, pNext, aabbData, num_aab_bs, stride, offset)

    GeometryAABBNV(aabb_data, num_aab_bs, stride, offset, vk)
end

function GeometryDataNV(triangles, aabbs)
    vk = VkGeometryDataNV(triangles, aabbs)

    GeometryDataNV(triangles, aabbs, vk)
end

function GeometryNV(geometry_type, geometry; next = C_NULL, flags = 0)
    sType = VK_STRUCTURE_TYPE_GEOMETRY_NV    # VulkanGen.ReplaceStructureType

    pNext = next == C_NULL ? C_NULL : (next_ref = Ref(next.vk); preserve(next_ref, next); unsafe_pointer(next_ref))    # VulkanGen.GeneratePointers
    vk = VkGeometryNV(sType, pNext, geometry_type, geometry, flags)

    GeometryNV(geometry_type, geometry, vk)
end

function AccelerationStructureInfoNV(type, geometries; instance_count = nothing, next = C_NULL, flags = 0)
    sType = VK_STRUCTURE_TYPE_ACCELERATION_STRUCTURE_INFO_NV    # VulkanGen.ReplaceStructureType

    pNext = next == C_NULL ? C_NULL : (next_ref = Ref(next.vk); preserve(next_ref, next); unsafe_pointer(next_ref))    # VulkanGen.GeneratePointers
    instanceCount = isnothing(instance_count) ? 0 : instance_count    # VulkanGen.AddDefaults

    geometryCount = pointer_length(geometries)    # VulkanGen.ComputeLengthArgument
    pGeometries = geometries == C_NULL ? C_NULL : (geometries_ref = Ref(geometries.vk);
                                                   preserve(geometries_ref, geometries);
                                                   unsafe_pointer(geometries_ref))    # VulkanGen.GeneratePointers
    vk = VkAccelerationStructureInfoNV(sType, pNext, type, flags, instanceCount, geometryCount, pGeometries)

    AccelerationStructureInfoNV(type, instance_count, geometries, vk)
end

function AccelerationStructureCreateInfoNV(compacted_size, info; next = C_NULL)
    sType = VK_STRUCTURE_TYPE_ACCELERATION_STRUCTURE_CREATE_INFO_NV    # VulkanGen.ReplaceStructureType

    pNext = next == C_NULL ? C_NULL : (next_ref = Ref(next.vk); preserve(next_ref, next); unsafe_pointer(next_ref))    # VulkanGen.GeneratePointers
    vk = VkAccelerationStructureCreateInfoNV(sType, pNext, compacted_size, info)

    AccelerationStructureCreateInfoNV(compacted_size, info, vk)
end

function BindAccelerationStructureMemoryInfoKHR(acceleration_structure, memory, memory_offset, device_indices; next = C_NULL)
    sType = VK_STRUCTURE_TYPE_BIND_ACCELERATION_STRUCTURE_MEMORY_INFO_KHR    # VulkanGen.ReplaceStructureType

    pNext = next == C_NULL ? C_NULL : (next_ref = Ref(next.vk); preserve(next_ref, next); unsafe_pointer(next_ref))    # VulkanGen.GeneratePointers
    deviceIndexCount = pointer_length(device_indices)    # VulkanGen.ComputeLengthArgument
    pDeviceIndices = device_indices == C_NULL ? C_NULL : (device_indices_ref = Ref(device_indices.vk);
                                                          preserve(device_indices_ref, device_indices);
                                                          unsafe_pointer(device_indices_ref))    # VulkanGen.GeneratePointers
    vk = VkBindAccelerationStructureMemoryInfoKHR(sType, pNext, acceleration_structure, memory, memory_offset, deviceIndexCount, pDeviceIndices)

    BindAccelerationStructureMemoryInfoKHR(acceleration_structure, memory, memory_offset, device_indices, vk)
end

function WriteDescriptorSetAccelerationStructureKHR(acceleration_structures; next = C_NULL)
    sType = VK_STRUCTURE_TYPE_WRITE_DESCRIPTOR_SET_ACCELERATION_STRUCTURE_KHR    # VulkanGen.ReplaceStructureType

    pNext = next == C_NULL ? C_NULL : (next_ref = Ref(next.vk); preserve(next_ref, next); unsafe_pointer(next_ref))    # VulkanGen.GeneratePointers
    accelerationStructureCount = pointer_length(acceleration_structures)    # VulkanGen.ComputeLengthArgument
    pAccelerationStructures = acceleration_structures == C_NULL ? C_NULL : (acceleration_structures_ref = Ref(acceleration_structures.vk);
                                                                            preserve(acceleration_structures_ref, acceleration_structures);
                                                                            unsafe_pointer(acceleration_structures_ref))    # VulkanGen.GeneratePointers
    vk = VkWriteDescriptorSetAccelerationStructureKHR(sType, pNext, accelerationStructureCount, pAccelerationStructures)

    WriteDescriptorSetAccelerationStructureKHR(acceleration_structures, vk)
end

function AccelerationStructureMemoryRequirementsInfoNV(type, acceleration_structure; next = C_NULL)
    sType = VK_STRUCTURE_TYPE_ACCELERATION_STRUCTURE_MEMORY_REQUIREMENTS_INFO_NV    # VulkanGen.ReplaceStructureType

    pNext = next == C_NULL ? C_NULL : (next_ref = Ref(next.vk); preserve(next_ref, next); unsafe_pointer(next_ref))    # VulkanGen.GeneratePointers
    vk = VkAccelerationStructureMemoryRequirementsInfoNV(sType, pNext, type, acceleration_structure)

    AccelerationStructureMemoryRequirementsInfoNV(type, acceleration_structure, vk)
end

function TransformMatrixKHR(matrix)
    vk = VkTransformMatrixKHR(matrix)

    TransformMatrixKHR(matrix, vk)
end

function AabbPositionsKHR(min_x, min_y, min_z, max_x, max_y, max_z)
    vk = VkAabbPositionsKHR(min_x, min_y, min_z, max_x, max_y, max_z)

    AabbPositionsKHR(min_x, min_y, min_z, max_x, max_y, max_z, vk)
end

function AccelerationStructureInstanceKHR(transform, instance_custom_index, mask, instance_shader_binding_table_record_offset, acceleration_structure_reference; flags = 0)
    vk = VkAccelerationStructureInstanceKHR(transform, instance_custom_index, mask, instance_shader_binding_table_record_offset, flags, acceleration_structure_reference)

    AccelerationStructureInstanceKHR(transform, instance_custom_index, mask, instance_shader_binding_table_record_offset, acceleration_structure_reference, vk)
end

function PhysicalDeviceRepresentativeFragmentTestFeaturesNV(representative_fragment_test; next = C_NULL)
    sType = VK_STRUCTURE_TYPE_PHYSICAL_DEVICE_REPRESENTATIVE_FRAGMENT_TEST_FEATURES_NV    # VulkanGen.ReplaceStructureType

    pNext = next == C_NULL ? C_NULL : (next_ref = Ref(next.vk); preserve(next_ref, next); unsafe_pointer(next_ref))    # VulkanGen.GeneratePointers
    vk = VkPhysicalDeviceRepresentativeFragmentTestFeaturesNV(sType, pNext, representative_fragment_test)

    PhysicalDeviceRepresentativeFragmentTestFeaturesNV(representative_fragment_test, vk)
end

function PipelineRepresentativeFragmentTestStateCreateInfoNV(representative_fragment_test_enable; next = C_NULL)
    sType = VK_STRUCTURE_TYPE_PIPELINE_REPRESENTATIVE_FRAGMENT_TEST_STATE_CREATE_INFO_NV    # VulkanGen.ReplaceStructureType

    pNext = next == C_NULL ? C_NULL : (next_ref = Ref(next.vk); preserve(next_ref, next); unsafe_pointer(next_ref))    # VulkanGen.GeneratePointers
    vk = VkPipelineRepresentativeFragmentTestStateCreateInfoNV(sType, pNext, representative_fragment_test_enable)

    PipelineRepresentativeFragmentTestStateCreateInfoNV(representative_fragment_test_enable, vk)
end

function PhysicalDeviceImageViewImageFormatInfoEXT(image_view_type; next = C_NULL)
    sType = VK_STRUCTURE_TYPE_PHYSICAL_DEVICE_IMAGE_VIEW_IMAGE_FORMAT_INFO_EXT    # VulkanGen.ReplaceStructureType

    pNext = next == C_NULL ? C_NULL : (next_ref = Ref(next.vk); preserve(next_ref, next); unsafe_pointer(next_ref))    # VulkanGen.GeneratePointers
    vk = VkPhysicalDeviceImageViewImageFormatInfoEXT(sType, pNext, image_view_type)

    PhysicalDeviceImageViewImageFormatInfoEXT(image_view_type, vk)
end

function DeviceQueueGlobalPriorityCreateInfoEXT(global_priority; next = C_NULL)
    sType = VK_STRUCTURE_TYPE_DEVICE_QUEUE_GLOBAL_PRIORITY_CREATE_INFO_EXT    # VulkanGen.ReplaceStructureType

    pNext = next == C_NULL ? C_NULL : (next_ref = Ref(next.vk); preserve(next_ref, next); unsafe_pointer(next_ref))    # VulkanGen.GeneratePointers
    vk = VkDeviceQueueGlobalPriorityCreateInfoEXT(sType, pNext, global_priority)

    DeviceQueueGlobalPriorityCreateInfoEXT(global_priority, vk)
end

function ImportMemoryHostPointerInfoEXT(handle_type, host_pointer; next = C_NULL)
    sType = VK_STRUCTURE_TYPE_IMPORT_MEMORY_HOST_POINTER_INFO_EXT    # VulkanGen.ReplaceStructureType

    pNext = next == C_NULL ? C_NULL : (next_ref = Ref(next.vk); preserve(next_ref, next); unsafe_pointer(next_ref))    # VulkanGen.GeneratePointers
    pHostPointer = host_pointer == C_NULL ? C_NULL : (host_pointer_ref = Ref(host_pointer.vk);
                                                      preserve(host_pointer_ref, host_pointer);
                                                      unsafe_pointer(host_pointer_ref))    # VulkanGen.GeneratePointers
    vk = VkImportMemoryHostPointerInfoEXT(sType, pNext, handle_type, pHostPointer)

    ImportMemoryHostPointerInfoEXT(handle_type, host_pointer, vk)
end

function PipelineCompilerControlCreateInfoAMD(; compiler_control_flags = nothing, next = C_NULL)
    sType = VK_STRUCTURE_TYPE_PIPELINE_COMPILER_CONTROL_CREATE_INFO_AMD    # VulkanGen.ReplaceStructureType

    pNext = next == C_NULL ? C_NULL : (next_ref = Ref(next.vk); preserve(next_ref, next); unsafe_pointer(next_ref))    # VulkanGen.GeneratePointers
    compilerControlFlags = isnothing(compiler_control_flags) ? 0 : compiler_control_flags    # VulkanGen.AddDefaults

    vk = VkPipelineCompilerControlCreateInfoAMD(sType, pNext, compilerControlFlags)

    PipelineCompilerControlCreateInfoAMD(compiler_control_flags, vk)
end

function CalibratedTimestampInfoEXT(time_domain; next = C_NULL)
    sType = VK_STRUCTURE_TYPE_CALIBRATED_TIMESTAMP_INFO_EXT    # VulkanGen.ReplaceStructureType

    pNext = next == C_NULL ? C_NULL : (next_ref = Ref(next.vk); preserve(next_ref, next); unsafe_pointer(next_ref))    # VulkanGen.GeneratePointers
    vk = VkCalibratedTimestampInfoEXT(sType, pNext, time_domain)

    CalibratedTimestampInfoEXT(time_domain, vk)
end

function DeviceMemoryOverallocationCreateInfoAMD(overallocation_behavior; next = C_NULL)
    sType = VK_STRUCTURE_TYPE_DEVICE_MEMORY_OVERALLOCATION_CREATE_INFO_AMD    # VulkanGen.ReplaceStructureType

    pNext = next == C_NULL ? C_NULL : (next_ref = Ref(next.vk); preserve(next_ref, next); unsafe_pointer(next_ref))    # VulkanGen.GeneratePointers
    vk = VkDeviceMemoryOverallocationCreateInfoAMD(sType, pNext, overallocation_behavior)

    DeviceMemoryOverallocationCreateInfoAMD(overallocation_behavior, vk)
end

function VertexInputBindingDivisorDescriptionEXT(binding, divisor)
    vk = VkVertexInputBindingDivisorDescriptionEXT(binding, divisor)

    VertexInputBindingDivisorDescriptionEXT(binding, divisor, vk)
end

function PipelineVertexInputDivisorStateCreateInfoEXT(vertex_binding_divisors; next = C_NULL)
    sType = VK_STRUCTURE_TYPE_PIPELINE_VERTEX_INPUT_DIVISOR_STATE_CREATE_INFO_EXT    # VulkanGen.ReplaceStructureType

    pNext = next == C_NULL ? C_NULL : (next_ref = Ref(next.vk); preserve(next_ref, next); unsafe_pointer(next_ref))    # VulkanGen.GeneratePointers
    vertexBindingDivisorCount = pointer_length(vertex_binding_divisors)    # VulkanGen.ComputeLengthArgument
    pVertexBindingDivisors = vertex_binding_divisors == C_NULL ? C_NULL : (vertex_binding_divisors_ref = Ref(vertex_binding_divisors.vk);
                                                                           preserve(vertex_binding_divisors_ref, vertex_binding_divisors);
                                                                           unsafe_pointer(vertex_binding_divisors_ref))    # VulkanGen.GeneratePointers
    vk = VkPipelineVertexInputDivisorStateCreateInfoEXT(sType, pNext, vertexBindingDivisorCount, pVertexBindingDivisors)

    PipelineVertexInputDivisorStateCreateInfoEXT(vertex_binding_divisors, vk)
end

function PhysicalDeviceVertexAttributeDivisorFeaturesEXT(vertex_attribute_instance_rate_divisor, vertex_attribute_instance_rate_zero_divisor; next = C_NULL)
    sType = VK_STRUCTURE_TYPE_PHYSICAL_DEVICE_VERTEX_ATTRIBUTE_DIVISOR_FEATURES_EXT    # VulkanGen.ReplaceStructureType

    pNext = next == C_NULL ? C_NULL : (next_ref = Ref(next.vk); preserve(next_ref, next); unsafe_pointer(next_ref))    # VulkanGen.GeneratePointers
    vk = VkPhysicalDeviceVertexAttributeDivisorFeaturesEXT(sType, pNext, vertex_attribute_instance_rate_divisor, vertex_attribute_instance_rate_zero_divisor)

    PhysicalDeviceVertexAttributeDivisorFeaturesEXT(vertex_attribute_instance_rate_divisor, vertex_attribute_instance_rate_zero_divisor, vk)
end

function PipelineCreationFeedbackEXT(duration; flags = 0)
    vk = VkPipelineCreationFeedbackEXT(flags, duration)

    PipelineCreationFeedbackEXT(duration, vk)
end

function PipelineCreationFeedbackCreateInfoEXT(pipeline_creation_feedback, pipeline_stage_creation_feedbacks; next = C_NULL)
    sType = VK_STRUCTURE_TYPE_PIPELINE_CREATION_FEEDBACK_CREATE_INFO_EXT    # VulkanGen.ReplaceStructureType

    pNext = next == C_NULL ? C_NULL : (next_ref = Ref(next.vk); preserve(next_ref, next); unsafe_pointer(next_ref))    # VulkanGen.GeneratePointers
    pPipelineCreationFeedback = pipeline_creation_feedback == C_NULL ? C_NULL : (pipeline_creation_feedback_ref = Ref(pipeline_creation_feedback.vk);
                                                                                 preserve(pipeline_creation_feedback_ref, pipeline_creation_feedback);
                                                                                 unsafe_pointer(pipeline_creation_feedback_ref))    # VulkanGen.GeneratePointers
    pipelineStageCreationFeedbackCount = pointer_length(pipeline_stage_creation_feedbacks)    # VulkanGen.ComputeLengthArgument
    pipelineStageCreationFeedbackCount = pipelineStageCreationFeedbackCount == C_NULL ? C_NULL : (pipelineStageCreationFeedbackCount_ref = Ref(pipelineStageCreationFeedbackCount.vk);
                                                                                                  preserve(pipelineStageCreationFeedbackCount_ref, pipeline_stage_creation_feedback_count);
                                                                                                  unsafe_pointer(pipelineStageCreationFeedbackCount_ref))    # VulkanGen.GeneratePointers
    pPipelineStageCreationFeedbacks = pipeline_stage_creation_feedbacks == C_NULL ? C_NULL : (pipeline_stage_creation_feedbacks_ref = Ref(pipeline_stage_creation_feedbacks.vk);
                                                                                              preserve(pipeline_stage_creation_feedbacks_ref, pipeline_stage_creation_feedbacks);
                                                                                              unsafe_pointer(pipeline_stage_creation_feedbacks_ref))    # VulkanGen.GeneratePointers
    vk = VkPipelineCreationFeedbackCreateInfoEXT(sType, pNext, pPipelineCreationFeedback, pipelineStageCreationFeedbackCount, pPipelineStageCreationFeedbacks)

    PipelineCreationFeedbackCreateInfoEXT(pipeline_creation_feedback, pipeline_stage_creation_feedbacks, vk)
end

function PhysicalDeviceComputeShaderDerivativesFeaturesNV(compute_derivative_group_quads, compute_derivative_group_linear; next = C_NULL)
    sType = VK_STRUCTURE_TYPE_PHYSICAL_DEVICE_COMPUTE_SHADER_DERIVATIVES_FEATURES_NV    # VulkanGen.ReplaceStructureType

    pNext = next == C_NULL ? C_NULL : (next_ref = Ref(next.vk); preserve(next_ref, next); unsafe_pointer(next_ref))    # VulkanGen.GeneratePointers
    vk = VkPhysicalDeviceComputeShaderDerivativesFeaturesNV(sType, pNext, compute_derivative_group_quads, compute_derivative_group_linear)

    PhysicalDeviceComputeShaderDerivativesFeaturesNV(compute_derivative_group_quads, compute_derivative_group_linear, vk)
end

function PhysicalDeviceMeshShaderFeaturesNV(task_shader, mesh_shader; next = C_NULL)
    sType = VK_STRUCTURE_TYPE_PHYSICAL_DEVICE_MESH_SHADER_FEATURES_NV    # VulkanGen.ReplaceStructureType

    pNext = next == C_NULL ? C_NULL : (next_ref = Ref(next.vk); preserve(next_ref, next); unsafe_pointer(next_ref))    # VulkanGen.GeneratePointers
    vk = VkPhysicalDeviceMeshShaderFeaturesNV(sType, pNext, task_shader, mesh_shader)

    PhysicalDeviceMeshShaderFeaturesNV(task_shader, mesh_shader, vk)
end

function DrawMeshTasksIndirectCommandNV(task_count, first_task)
    vk = VkDrawMeshTasksIndirectCommandNV(task_count, first_task)

    DrawMeshTasksIndirectCommandNV(task_count, first_task, vk)
end

function PhysicalDeviceFragmentShaderBarycentricFeaturesNV(fragment_shader_barycentric; next = C_NULL)
    sType = VK_STRUCTURE_TYPE_PHYSICAL_DEVICE_FRAGMENT_SHADER_BARYCENTRIC_FEATURES_NV    # VulkanGen.ReplaceStructureType

    pNext = next == C_NULL ? C_NULL : (next_ref = Ref(next.vk); preserve(next_ref, next); unsafe_pointer(next_ref))    # VulkanGen.GeneratePointers
    vk = VkPhysicalDeviceFragmentShaderBarycentricFeaturesNV(sType, pNext, fragment_shader_barycentric)

    PhysicalDeviceFragmentShaderBarycentricFeaturesNV(fragment_shader_barycentric, vk)
end

function PhysicalDeviceShaderImageFootprintFeaturesNV(image_footprint; next = C_NULL)
    sType = VK_STRUCTURE_TYPE_PHYSICAL_DEVICE_SHADER_IMAGE_FOOTPRINT_FEATURES_NV    # VulkanGen.ReplaceStructureType

    pNext = next == C_NULL ? C_NULL : (next_ref = Ref(next.vk); preserve(next_ref, next); unsafe_pointer(next_ref))    # VulkanGen.GeneratePointers
    vk = VkPhysicalDeviceShaderImageFootprintFeaturesNV(sType, pNext, image_footprint)

    PhysicalDeviceShaderImageFootprintFeaturesNV(image_footprint, vk)
end

function PipelineViewportExclusiveScissorStateCreateInfoNV(exclusive_scissors; next = C_NULL)
    sType = VK_STRUCTURE_TYPE_PIPELINE_VIEWPORT_EXCLUSIVE_SCISSOR_STATE_CREATE_INFO_NV    # VulkanGen.ReplaceStructureType

    pNext = next == C_NULL ? C_NULL : (next_ref = Ref(next.vk); preserve(next_ref, next); unsafe_pointer(next_ref))    # VulkanGen.GeneratePointers
    exclusiveScissorCount = pointer_length(exclusive_scissors)    # VulkanGen.ComputeLengthArgument
    pExclusiveScissors = exclusive_scissors == C_NULL ? C_NULL : (exclusive_scissors_ref = Ref(exclusive_scissors.vk);
                                                                  preserve(exclusive_scissors_ref, exclusive_scissors);
                                                                  unsafe_pointer(exclusive_scissors_ref))    # VulkanGen.GeneratePointers
    vk = VkPipelineViewportExclusiveScissorStateCreateInfoNV(sType, pNext, exclusiveScissorCount, pExclusiveScissors)

    PipelineViewportExclusiveScissorStateCreateInfoNV(exclusive_scissors, vk)
end

function PhysicalDeviceExclusiveScissorFeaturesNV(exclusive_scissor; next = C_NULL)
    sType = VK_STRUCTURE_TYPE_PHYSICAL_DEVICE_EXCLUSIVE_SCISSOR_FEATURES_NV    # VulkanGen.ReplaceStructureType

    pNext = next == C_NULL ? C_NULL : (next_ref = Ref(next.vk); preserve(next_ref, next); unsafe_pointer(next_ref))    # VulkanGen.GeneratePointers
    vk = VkPhysicalDeviceExclusiveScissorFeaturesNV(sType, pNext, exclusive_scissor)

    PhysicalDeviceExclusiveScissorFeaturesNV(exclusive_scissor, vk)
end

function PhysicalDeviceShaderIntegerFunctions2FeaturesINTEL(shader_integer_functions_2; next = C_NULL)
    sType = VK_STRUCTURE_TYPE_PHYSICAL_DEVICE_SHADER_INTEGER_FUNCTIONS_2_FEATURES_INTEL    # VulkanGen.ReplaceStructureType

    pNext = next == C_NULL ? C_NULL : (next_ref = Ref(next.vk); preserve(next_ref, next); unsafe_pointer(next_ref))    # VulkanGen.GeneratePointers
    vk = VkPhysicalDeviceShaderIntegerFunctions2FeaturesINTEL(sType, pNext, shader_integer_functions_2)

    PhysicalDeviceShaderIntegerFunctions2FeaturesINTEL(shader_integer_functions_2, vk)
end

function PerformanceValueDataINTEL(value64)
    vk = VkPerformanceValueDataINTEL(value64)

    PerformanceValueDataINTEL(value64, vk)
end

function PerformanceValueINTEL(type, data)
    vk = VkPerformanceValueINTEL(type, data)

    PerformanceValueINTEL(type, data, vk)
end

function InitializePerformanceApiInfoINTEL(user_data; next = C_NULL)
    sType = VK_STRUCTURE_TYPE_INITIALIZE_PERFORMANCE_API_INFO_INTEL    # VulkanGen.ReplaceStructureType

    pNext = next == C_NULL ? C_NULL : (next_ref = Ref(next.vk); preserve(next_ref, next); unsafe_pointer(next_ref))    # VulkanGen.GeneratePointers
    pUserData = user_data == C_NULL ? C_NULL : (user_data_ref = Ref(user_data.vk);
                                                preserve(user_data_ref, user_data);
                                                unsafe_pointer(user_data_ref))    # VulkanGen.GeneratePointers
    vk = VkInitializePerformanceApiInfoINTEL(sType, pNext, pUserData)

    InitializePerformanceApiInfoINTEL(user_data, vk)
end

function QueryPoolPerformanceQueryCreateInfoINTEL(performance_counters_sampling; next = C_NULL)
    sType = VK_STRUCTURE_TYPE_QUERY_POOL_PERFORMANCE_QUERY_CREATE_INFO_INTEL    # VulkanGen.ReplaceStructureType

    pNext = next == C_NULL ? C_NULL : (next_ref = Ref(next.vk); preserve(next_ref, next); unsafe_pointer(next_ref))    # VulkanGen.GeneratePointers
    performanceCountersSampling = performance_counters_sampling == C_NULL ? C_NULL : (performance_counters_sampling_ref = Ref(performance_counters_sampling.vk);
                                                                                      preserve(performance_counters_sampling_ref, performance_counters_sampling);
                                                                                      unsafe_pointer(performance_counters_sampling_ref))    # VulkanGen.GeneratePointers
    vk = VkQueryPoolPerformanceQueryCreateInfoINTEL(sType, pNext, performanceCountersSampling)

    QueryPoolPerformanceQueryCreateInfoINTEL(performance_counters_sampling, vk)
end

function PerformanceMarkerInfoINTEL(marker; next = C_NULL)
    sType = VK_STRUCTURE_TYPE_PERFORMANCE_MARKER_INFO_INTEL    # VulkanGen.ReplaceStructureType

    pNext = next == C_NULL ? C_NULL : (next_ref = Ref(next.vk); preserve(next_ref, next); unsafe_pointer(next_ref))    # VulkanGen.GeneratePointers
    vk = VkPerformanceMarkerInfoINTEL(sType, pNext, marker)

    PerformanceMarkerInfoINTEL(marker, vk)
end

function PerformanceStreamMarkerInfoINTEL(marker; next = C_NULL)
    sType = VK_STRUCTURE_TYPE_PERFORMANCE_STREAM_MARKER_INFO_INTEL    # VulkanGen.ReplaceStructureType

    pNext = next == C_NULL ? C_NULL : (next_ref = Ref(next.vk); preserve(next_ref, next); unsafe_pointer(next_ref))    # VulkanGen.GeneratePointers
    vk = VkPerformanceStreamMarkerInfoINTEL(sType, pNext, marker)

    PerformanceStreamMarkerInfoINTEL(marker, vk)
end

function PerformanceOverrideInfoINTEL(type, enable, parameter; next = C_NULL)
    sType = VK_STRUCTURE_TYPE_PERFORMANCE_OVERRIDE_INFO_INTEL    # VulkanGen.ReplaceStructureType

    pNext = next == C_NULL ? C_NULL : (next_ref = Ref(next.vk); preserve(next_ref, next); unsafe_pointer(next_ref))    # VulkanGen.GeneratePointers
    parameter = parameter == C_NULL ? C_NULL : (parameter_ref = Ref(parameter.vk);
                                                preserve(parameter_ref, parameter);
                                                unsafe_pointer(parameter_ref))    # VulkanGen.GeneratePointers
    vk = VkPerformanceOverrideInfoINTEL(sType, pNext, type, enable, parameter)

    PerformanceOverrideInfoINTEL(type, enable, parameter, vk)
end

function PerformanceConfigurationAcquireInfoINTEL(type; next = C_NULL)
    sType = VK_STRUCTURE_TYPE_PERFORMANCE_CONFIGURATION_ACQUIRE_INFO_INTEL    # VulkanGen.ReplaceStructureType

    pNext = next == C_NULL ? C_NULL : (next_ref = Ref(next.vk); preserve(next_ref, next); unsafe_pointer(next_ref))    # VulkanGen.GeneratePointers
    vk = VkPerformanceConfigurationAcquireInfoINTEL(sType, pNext, type)

    PerformanceConfigurationAcquireInfoINTEL(type, vk)
end

function DisplayNativeHdrSurfaceCapabilitiesAMD(local_dimming_support; next = C_NULL)
    sType = VK_STRUCTURE_TYPE_DISPLAY_NATIVE_HDR_SURFACE_CAPABILITIES_AMD    # VulkanGen.ReplaceStructureType

    pNext = next == C_NULL ? C_NULL : (next_ref = Ref(next.vk); preserve(next_ref, next); unsafe_pointer(next_ref))    # VulkanGen.GeneratePointers
    vk = VkDisplayNativeHdrSurfaceCapabilitiesAMD(sType, pNext, local_dimming_support)

    DisplayNativeHdrSurfaceCapabilitiesAMD(local_dimming_support, vk)
end

function SwapchainDisplayNativeHdrCreateInfoAMD(local_dimming_enable; next = C_NULL)
    sType = VK_STRUCTURE_TYPE_SWAPCHAIN_DISPLAY_NATIVE_HDR_CREATE_INFO_AMD    # VulkanGen.ReplaceStructureType

    pNext = next == C_NULL ? C_NULL : (next_ref = Ref(next.vk); preserve(next_ref, next); unsafe_pointer(next_ref))    # VulkanGen.GeneratePointers
    vk = VkSwapchainDisplayNativeHdrCreateInfoAMD(sType, pNext, local_dimming_enable)

    SwapchainDisplayNativeHdrCreateInfoAMD(local_dimming_enable, vk)
end

function PhysicalDeviceFragmentDensityMapFeaturesEXT(fragment_density_map, fragment_density_map_dynamic, fragment_density_map_non_subsampled_images; next = C_NULL)
    sType = VK_STRUCTURE_TYPE_PHYSICAL_DEVICE_FRAGMENT_DENSITY_MAP_FEATURES_EXT    # VulkanGen.ReplaceStructureType

    pNext = next == C_NULL ? C_NULL : (next_ref = Ref(next.vk); preserve(next_ref, next); unsafe_pointer(next_ref))    # VulkanGen.GeneratePointers
    vk = VkPhysicalDeviceFragmentDensityMapFeaturesEXT(sType, pNext, fragment_density_map, fragment_density_map_dynamic, fragment_density_map_non_subsampled_images)

    PhysicalDeviceFragmentDensityMapFeaturesEXT(fragment_density_map, fragment_density_map_dynamic, fragment_density_map_non_subsampled_images, vk)
end

function RenderPassFragmentDensityMapCreateInfoEXT(fragment_density_map_attachment; next = C_NULL)
    sType = VK_STRUCTURE_TYPE_RENDER_PASS_FRAGMENT_DENSITY_MAP_CREATE_INFO_EXT    # VulkanGen.ReplaceStructureType

    pNext = next == C_NULL ? C_NULL : (next_ref = Ref(next.vk); preserve(next_ref, next); unsafe_pointer(next_ref))    # VulkanGen.GeneratePointers
    vk = VkRenderPassFragmentDensityMapCreateInfoEXT(sType, pNext, fragment_density_map_attachment)

    RenderPassFragmentDensityMapCreateInfoEXT(fragment_density_map_attachment, vk)
end

function PhysicalDeviceSubgroupSizeControlFeaturesEXT(subgroup_size_control, compute_full_subgroups; next = C_NULL)
    sType = VK_STRUCTURE_TYPE_PHYSICAL_DEVICE_SUBGROUP_SIZE_CONTROL_FEATURES_EXT    # VulkanGen.ReplaceStructureType

    pNext = next == C_NULL ? C_NULL : (next_ref = Ref(next.vk); preserve(next_ref, next); unsafe_pointer(next_ref))    # VulkanGen.GeneratePointers
    vk = VkPhysicalDeviceSubgroupSizeControlFeaturesEXT(sType, pNext, subgroup_size_control, compute_full_subgroups)

    PhysicalDeviceSubgroupSizeControlFeaturesEXT(subgroup_size_control, compute_full_subgroups, vk)
end

function PipelineShaderStageRequiredSubgroupSizeCreateInfoEXT(required_subgroup_size; next = C_NULL)
    sType = VK_STRUCTURE_TYPE_PIPELINE_SHADER_STAGE_REQUIRED_SUBGROUP_SIZE_CREATE_INFO_EXT    # VulkanGen.ReplaceStructureType

    pNext = next == C_NULL ? C_NULL : (next_ref = Ref(next.vk); preserve(next_ref, next); unsafe_pointer(next_ref))    # VulkanGen.GeneratePointers
    vk = VkPipelineShaderStageRequiredSubgroupSizeCreateInfoEXT(sType, pNext, required_subgroup_size)

    PipelineShaderStageRequiredSubgroupSizeCreateInfoEXT(required_subgroup_size, vk)
end

function PhysicalDeviceCoherentMemoryFeaturesAMD(device_coherent_memory; next = C_NULL)
    sType = VK_STRUCTURE_TYPE_PHYSICAL_DEVICE_COHERENT_MEMORY_FEATURES_AMD    # VulkanGen.ReplaceStructureType

    pNext = next == C_NULL ? C_NULL : (next_ref = Ref(next.vk); preserve(next_ref, next); unsafe_pointer(next_ref))    # VulkanGen.GeneratePointers
    vk = VkPhysicalDeviceCoherentMemoryFeaturesAMD(sType, pNext, device_coherent_memory)

    PhysicalDeviceCoherentMemoryFeaturesAMD(device_coherent_memory, vk)
end

function PhysicalDeviceMemoryPriorityFeaturesEXT(memory_priority; next = C_NULL)
    sType = VK_STRUCTURE_TYPE_PHYSICAL_DEVICE_MEMORY_PRIORITY_FEATURES_EXT    # VulkanGen.ReplaceStructureType

    pNext = next == C_NULL ? C_NULL : (next_ref = Ref(next.vk); preserve(next_ref, next); unsafe_pointer(next_ref))    # VulkanGen.GeneratePointers
    vk = VkPhysicalDeviceMemoryPriorityFeaturesEXT(sType, pNext, memory_priority)

    PhysicalDeviceMemoryPriorityFeaturesEXT(memory_priority, vk)
end

function MemoryPriorityAllocateInfoEXT(priority; next = C_NULL)
    sType = VK_STRUCTURE_TYPE_MEMORY_PRIORITY_ALLOCATE_INFO_EXT    # VulkanGen.ReplaceStructureType

    pNext = next == C_NULL ? C_NULL : (next_ref = Ref(next.vk); preserve(next_ref, next); unsafe_pointer(next_ref))    # VulkanGen.GeneratePointers
    priority = priority == C_NULL ? C_NULL : (priority_ref = Ref(priority.vk);
                                              preserve(priority_ref, priority);
                                              unsafe_pointer(priority_ref))    # VulkanGen.GeneratePointers
    vk = VkMemoryPriorityAllocateInfoEXT(sType, pNext, priority)

    MemoryPriorityAllocateInfoEXT(priority, vk)
end

function PhysicalDeviceDedicatedAllocationImageAliasingFeaturesNV(dedicated_allocation_image_aliasing; next = C_NULL)
    sType = VK_STRUCTURE_TYPE_PHYSICAL_DEVICE_DEDICATED_ALLOCATION_IMAGE_ALIASING_FEATURES_NV    # VulkanGen.ReplaceStructureType

    pNext = next == C_NULL ? C_NULL : (next_ref = Ref(next.vk); preserve(next_ref, next); unsafe_pointer(next_ref))    # VulkanGen.GeneratePointers
    vk = VkPhysicalDeviceDedicatedAllocationImageAliasingFeaturesNV(sType, pNext, dedicated_allocation_image_aliasing)

    PhysicalDeviceDedicatedAllocationImageAliasingFeaturesNV(dedicated_allocation_image_aliasing, vk)
end

function PhysicalDeviceBufferDeviceAddressFeaturesEXT(buffer_device_address, buffer_device_address_capture_replay, buffer_device_address_multi_device; next = C_NULL)
    sType = VK_STRUCTURE_TYPE_PHYSICAL_DEVICE_BUFFER_DEVICE_ADDRESS_FEATURES_EXT    # VulkanGen.ReplaceStructureType

    pNext = next == C_NULL ? C_NULL : (next_ref = Ref(next.vk); preserve(next_ref, next); unsafe_pointer(next_ref))    # VulkanGen.GeneratePointers
    vk = VkPhysicalDeviceBufferDeviceAddressFeaturesEXT(sType, pNext, buffer_device_address, buffer_device_address_capture_replay, buffer_device_address_multi_device)

    PhysicalDeviceBufferDeviceAddressFeaturesEXT(buffer_device_address, buffer_device_address_capture_replay, buffer_device_address_multi_device, vk)
end

function BufferDeviceAddressCreateInfoEXT(device_address; next = C_NULL)
    sType = VK_STRUCTURE_TYPE_BUFFER_DEVICE_ADDRESS_CREATE_INFO_EXT    # VulkanGen.ReplaceStructureType

    pNext = next == C_NULL ? C_NULL : (next_ref = Ref(next.vk); preserve(next_ref, next); unsafe_pointer(next_ref))    # VulkanGen.GeneratePointers
    vk = VkBufferDeviceAddressCreateInfoEXT(sType, pNext, device_address)

    BufferDeviceAddressCreateInfoEXT(device_address, vk)
end

function ValidationFeaturesEXT(enabled_validation_features, disabled_validation_features; next = C_NULL)
    sType = VK_STRUCTURE_TYPE_VALIDATION_FEATURES_EXT    # VulkanGen.ReplaceStructureType

    pNext = next == C_NULL ? C_NULL : (next_ref = Ref(next.vk); preserve(next_ref, next); unsafe_pointer(next_ref))    # VulkanGen.GeneratePointers
    enabledValidationFeatureCount = pointer_length(enabled_validation_features)    # VulkanGen.ComputeLengthArgument
    pEnabledValidationFeatures = enabled_validation_features == C_NULL ? C_NULL : (enabled_validation_features_ref = Ref(enabled_validation_features.vk);
                                                                                   preserve(enabled_validation_features_ref, enabled_validation_features);
                                                                                   unsafe_pointer(enabled_validation_features_ref))    # VulkanGen.GeneratePointers
    disabledValidationFeatureCount = pointer_length(disabled_validation_features)    # VulkanGen.ComputeLengthArgument
    pDisabledValidationFeatures = disabled_validation_features == C_NULL ? C_NULL : (disabled_validation_features_ref = Ref(disabled_validation_features.vk);
                                                                                     preserve(disabled_validation_features_ref, disabled_validation_features);
                                                                                     unsafe_pointer(disabled_validation_features_ref))    # VulkanGen.GeneratePointers
    vk = VkValidationFeaturesEXT(sType, pNext, enabledValidationFeatureCount, pEnabledValidationFeatures, disabledValidationFeatureCount, pDisabledValidationFeatures)

    ValidationFeaturesEXT(enabled_validation_features, disabled_validation_features, vk)
end

function PhysicalDeviceCooperativeMatrixFeaturesNV(cooperative_matrix, cooperative_matrix_robust_buffer_access; next = C_NULL)
    sType = VK_STRUCTURE_TYPE_PHYSICAL_DEVICE_COOPERATIVE_MATRIX_FEATURES_NV    # VulkanGen.ReplaceStructureType

    pNext = next == C_NULL ? C_NULL : (next_ref = Ref(next.vk); preserve(next_ref, next); unsafe_pointer(next_ref))    # VulkanGen.GeneratePointers
    vk = VkPhysicalDeviceCooperativeMatrixFeaturesNV(sType, pNext, cooperative_matrix, cooperative_matrix_robust_buffer_access)

    PhysicalDeviceCooperativeMatrixFeaturesNV(cooperative_matrix, cooperative_matrix_robust_buffer_access, vk)
end

function PhysicalDeviceCoverageReductionModeFeaturesNV(coverage_reduction_mode; next = C_NULL)
    sType = VK_STRUCTURE_TYPE_PHYSICAL_DEVICE_COVERAGE_REDUCTION_MODE_FEATURES_NV    # VulkanGen.ReplaceStructureType

    pNext = next == C_NULL ? C_NULL : (next_ref = Ref(next.vk); preserve(next_ref, next); unsafe_pointer(next_ref))    # VulkanGen.GeneratePointers
    vk = VkPhysicalDeviceCoverageReductionModeFeaturesNV(sType, pNext, coverage_reduction_mode)

    PhysicalDeviceCoverageReductionModeFeaturesNV(coverage_reduction_mode, vk)
end

function PipelineCoverageReductionStateCreateInfoNV(coverage_reduction_mode; next = C_NULL, flags = 0)
    sType = VK_STRUCTURE_TYPE_PIPELINE_COVERAGE_REDUCTION_STATE_CREATE_INFO_NV    # VulkanGen.ReplaceStructureType

    pNext = next == C_NULL ? C_NULL : (next_ref = Ref(next.vk); preserve(next_ref, next); unsafe_pointer(next_ref))    # VulkanGen.GeneratePointers
    vk = VkPipelineCoverageReductionStateCreateInfoNV(sType, pNext, flags, coverage_reduction_mode)

    PipelineCoverageReductionStateCreateInfoNV(coverage_reduction_mode, vk)
end

function PhysicalDeviceFragmentShaderInterlockFeaturesEXT(fragment_shader_sample_interlock, fragment_shader_pixel_interlock, fragment_shader_shading_rate_interlock; next = C_NULL)
    sType = VK_STRUCTURE_TYPE_PHYSICAL_DEVICE_FRAGMENT_SHADER_INTERLOCK_FEATURES_EXT    # VulkanGen.ReplaceStructureType

    pNext = next == C_NULL ? C_NULL : (next_ref = Ref(next.vk); preserve(next_ref, next); unsafe_pointer(next_ref))    # VulkanGen.GeneratePointers
    vk = VkPhysicalDeviceFragmentShaderInterlockFeaturesEXT(sType, pNext, fragment_shader_sample_interlock, fragment_shader_pixel_interlock, fragment_shader_shading_rate_interlock)

    PhysicalDeviceFragmentShaderInterlockFeaturesEXT(fragment_shader_sample_interlock, fragment_shader_pixel_interlock, fragment_shader_shading_rate_interlock, vk)
end

function PhysicalDeviceYcbcrImageArraysFeaturesEXT(ycbcr_image_arrays; next = C_NULL)
    sType = VK_STRUCTURE_TYPE_PHYSICAL_DEVICE_YCBCR_IMAGE_ARRAYS_FEATURES_EXT    # VulkanGen.ReplaceStructureType

    pNext = next == C_NULL ? C_NULL : (next_ref = Ref(next.vk); preserve(next_ref, next); unsafe_pointer(next_ref))    # VulkanGen.GeneratePointers
    vk = VkPhysicalDeviceYcbcrImageArraysFeaturesEXT(sType, pNext, ycbcr_image_arrays)

    PhysicalDeviceYcbcrImageArraysFeaturesEXT(ycbcr_image_arrays, vk)
end

function HeadlessSurfaceCreateInfoEXT(; next = C_NULL, flags = 0)
    sType = VK_STRUCTURE_TYPE_HEADLESS_SURFACE_CREATE_INFO_EXT    # VulkanGen.ReplaceStructureType

    pNext = next == C_NULL ? C_NULL : (next_ref = Ref(next.vk); preserve(next_ref, next); unsafe_pointer(next_ref))    # VulkanGen.GeneratePointers
    vk = VkHeadlessSurfaceCreateInfoEXT(sType, pNext, flags)

    HeadlessSurfaceCreateInfoEXT(vk)
end

function PhysicalDeviceLineRasterizationFeaturesEXT(rectangular_lines, bresenham_lines, smooth_lines, stippled_rectangular_lines, stippled_bresenham_lines, stippled_smooth_lines; next = C_NULL)
    sType = VK_STRUCTURE_TYPE_PHYSICAL_DEVICE_LINE_RASTERIZATION_FEATURES_EXT    # VulkanGen.ReplaceStructureType

    pNext = next == C_NULL ? C_NULL : (next_ref = Ref(next.vk); preserve(next_ref, next); unsafe_pointer(next_ref))    # VulkanGen.GeneratePointers
    vk = VkPhysicalDeviceLineRasterizationFeaturesEXT(sType, pNext, rectangular_lines, bresenham_lines, smooth_lines, stippled_rectangular_lines, stippled_bresenham_lines, stippled_smooth_lines)

    PhysicalDeviceLineRasterizationFeaturesEXT(rectangular_lines, bresenham_lines, smooth_lines, stippled_rectangular_lines, stippled_bresenham_lines, stippled_smooth_lines, vk)
end

function PipelineRasterizationLineStateCreateInfoEXT(line_rasterization_mode, stippled_line_enable; line_stipple_factor = nothing, line_stipple_pattern = nothing, next = C_NULL)
    sType = VK_STRUCTURE_TYPE_PIPELINE_RASTERIZATION_LINE_STATE_CREATE_INFO_EXT    # VulkanGen.ReplaceStructureType

    pNext = next == C_NULL ? C_NULL : (next_ref = Ref(next.vk); preserve(next_ref, next); unsafe_pointer(next_ref))    # VulkanGen.GeneratePointers
    lineStippleFactor = isnothing(line_stipple_factor) ? 0 : line_stipple_factor    # VulkanGen.AddDefaults
    lineStipplePattern = isnothing(line_stipple_pattern) ? 0 : line_stipple_pattern    # VulkanGen.AddDefaults

    vk = VkPipelineRasterizationLineStateCreateInfoEXT(sType, pNext, line_rasterization_mode, stippled_line_enable, lineStippleFactor, lineStipplePattern)

    PipelineRasterizationLineStateCreateInfoEXT(line_rasterization_mode, stippled_line_enable, line_stipple_factor, line_stipple_pattern, vk)
end

function PhysicalDeviceShaderAtomicFloatFeaturesEXT(shader_buffer_float_32_atomics, shader_buffer_float_32_atomic_add, shader_buffer_float_64_atomics, shader_buffer_float_64_atomic_add,
                                                    shader_shared_float_32_atomics, shader_shared_float_32_atomic_add, shader_shared_float_64_atomics, shader_shared_float_64_atomic_add,
                                                    shader_image_float_32_atomics, shader_image_float_32_atomic_add, sparse_image_float_32_atomics, sparse_image_float_32_atomic_add; next = C_NULL)
    sType = VK_STRUCTURE_TYPE_PHYSICAL_DEVICE_SHADER_ATOMIC_FLOAT_FEATURES_EXT    # VulkanGen.ReplaceStructureType

    pNext = next == C_NULL ? C_NULL : (next_ref = Ref(next.vk); preserve(next_ref, next); unsafe_pointer(next_ref))    # VulkanGen.GeneratePointers
    vk = VkPhysicalDeviceShaderAtomicFloatFeaturesEXT(sType, pNext, shader_buffer_float_32_atomics, shader_buffer_float_32_atomic_add, shader_buffer_float_64_atomics,
                                                      shader_buffer_float_64_atomic_add, shader_shared_float_32_atomics, shader_shared_float_32_atomic_add, shader_shared_float_64_atomics,
                                                      shader_shared_float_64_atomic_add, shader_image_float_32_atomics, shader_image_float_32_atomic_add, sparse_image_float_32_atomics,
                                                      sparse_image_float_32_atomic_add)

    PhysicalDeviceShaderAtomicFloatFeaturesEXT(shader_buffer_float_32_atomics, shader_buffer_float_32_atomic_add, shader_buffer_float_64_atomics, shader_buffer_float_64_atomic_add,
                                               shader_shared_float_32_atomics, shader_shared_float_32_atomic_add, shader_shared_float_64_atomics, shader_shared_float_64_atomic_add,
                                               shader_image_float_32_atomics, shader_image_float_32_atomic_add, sparse_image_float_32_atomics, sparse_image_float_32_atomic_add, vk)
end

function PhysicalDeviceIndexTypeUint8FeaturesEXT(index_type_uint_8; next = C_NULL)
    sType = VK_STRUCTURE_TYPE_PHYSICAL_DEVICE_INDEX_TYPE_UINT8_FEATURES_EXT    # VulkanGen.ReplaceStructureType

    pNext = next == C_NULL ? C_NULL : (next_ref = Ref(next.vk); preserve(next_ref, next); unsafe_pointer(next_ref))    # VulkanGen.GeneratePointers
    vk = VkPhysicalDeviceIndexTypeUint8FeaturesEXT(sType, pNext, index_type_uint_8)

    PhysicalDeviceIndexTypeUint8FeaturesEXT(index_type_uint_8, vk)
end

function PhysicalDeviceExtendedDynamicStateFeaturesEXT(extended_dynamic_state; next = C_NULL)
    sType = VK_STRUCTURE_TYPE_PHYSICAL_DEVICE_EXTENDED_DYNAMIC_STATE_FEATURES_EXT    # VulkanGen.ReplaceStructureType

    pNext = next == C_NULL ? C_NULL : (next_ref = Ref(next.vk); preserve(next_ref, next); unsafe_pointer(next_ref))    # VulkanGen.GeneratePointers
    vk = VkPhysicalDeviceExtendedDynamicStateFeaturesEXT(sType, pNext, extended_dynamic_state)

    PhysicalDeviceExtendedDynamicStateFeaturesEXT(extended_dynamic_state, vk)
end

function PhysicalDeviceShaderDemoteToHelperInvocationFeaturesEXT(shader_demote_to_helper_invocation; next = C_NULL)
    sType = VK_STRUCTURE_TYPE_PHYSICAL_DEVICE_SHADER_DEMOTE_TO_HELPER_INVOCATION_FEATURES_EXT    # VulkanGen.ReplaceStructureType

    pNext = next == C_NULL ? C_NULL : (next_ref = Ref(next.vk); preserve(next_ref, next); unsafe_pointer(next_ref))    # VulkanGen.GeneratePointers
    vk = VkPhysicalDeviceShaderDemoteToHelperInvocationFeaturesEXT(sType, pNext, shader_demote_to_helper_invocation)

    PhysicalDeviceShaderDemoteToHelperInvocationFeaturesEXT(shader_demote_to_helper_invocation, vk)
end

function PhysicalDeviceDeviceGeneratedCommandsFeaturesNV(device_generated_commands; next = C_NULL)
    sType = VK_STRUCTURE_TYPE_PHYSICAL_DEVICE_DEVICE_GENERATED_COMMANDS_FEATURES_NV    # VulkanGen.ReplaceStructureType

    pNext = next == C_NULL ? C_NULL : (next_ref = Ref(next.vk); preserve(next_ref, next); unsafe_pointer(next_ref))    # VulkanGen.GeneratePointers
    vk = VkPhysicalDeviceDeviceGeneratedCommandsFeaturesNV(sType, pNext, device_generated_commands)

    PhysicalDeviceDeviceGeneratedCommandsFeaturesNV(device_generated_commands, vk)
end

function GraphicsShaderGroupCreateInfoNV(stages; tessellation_state = nothing, vertex_input_state = nothing, next = C_NULL)
    sType = VK_STRUCTURE_TYPE_GRAPHICS_SHADER_GROUP_CREATE_INFO_NV    # VulkanGen.ReplaceStructureType

    pNext = next == C_NULL ? C_NULL : (next_ref = Ref(next.vk); preserve(next_ref, next); unsafe_pointer(next_ref))    # VulkanGen.GeneratePointers
    stageCount = pointer_length(stages)    # VulkanGen.ComputeLengthArgument
    pStages = stages == C_NULL ? C_NULL : (stages_ref = Ref(stages.vk);
                                           preserve(stages_ref, stages);
                                           unsafe_pointer(stages_ref))    # VulkanGen.GeneratePointers
    pVertexInputState = isnothing(vertex_input_state) ? C_NULL : vertex_input_state    # VulkanGen.AddDefaults

    pVertexInputState = pVertexInputState == C_NULL ? C_NULL : (pVertexInputState_ref = Ref(pVertexInputState.vk);
                                                                preserve(pVertexInputState_ref, vertex_input_state);
                                                                unsafe_pointer(pVertexInputState_ref))    # VulkanGen.GeneratePointers
    pTessellationState = isnothing(tessellation_state) ? C_NULL : tessellation_state    # VulkanGen.AddDefaults
    pTessellationState = pTessellationState == C_NULL ? C_NULL : (pTessellationState_ref = Ref(pTessellationState.vk);
                                                                  preserve(pTessellationState_ref, tessellation_state);
                                                                  unsafe_pointer(pTessellationState_ref))    # VulkanGen.GeneratePointers
    vk = VkGraphicsShaderGroupCreateInfoNV(sType, pNext, stageCount, pStages, pVertexInputState, pTessellationState)

    GraphicsShaderGroupCreateInfoNV(stages, vertex_input_state, tessellation_state, vk)
end

function GraphicsPipelineShaderGroupsCreateInfoNV(groups, pipelines; next = C_NULL)
    sType = VK_STRUCTURE_TYPE_GRAPHICS_PIPELINE_SHADER_GROUPS_CREATE_INFO_NV    # VulkanGen.ReplaceStructureType

    pNext = next == C_NULL ? C_NULL : (next_ref = Ref(next.vk); preserve(next_ref, next); unsafe_pointer(next_ref))    # VulkanGen.GeneratePointers
    groupCount = pointer_length(groups)    # VulkanGen.ComputeLengthArgument
    pGroups = groups == C_NULL ? C_NULL : (groups_ref = Ref(groups.vk);
                                           preserve(groups_ref, groups);
                                           unsafe_pointer(groups_ref))    # VulkanGen.GeneratePointers
    pipelineCount = pointer_length(pipelines)    # VulkanGen.ComputeLengthArgument
    pipelineCount = pipelineCount == C_NULL ? C_NULL : (pipelineCount_ref = Ref(pipelineCount.vk);
                                                        preserve(pipelineCount_ref, pipeline_count);
                                                        unsafe_pointer(pipelineCount_ref))    # VulkanGen.GeneratePointers
    pPipelines = pipelines == C_NULL ? C_NULL : (pipelines_ref = Ref(pipelines.vk);
                                                 preserve(pipelines_ref, pipelines);
                                                 unsafe_pointer(pipelines_ref))    # VulkanGen.GeneratePointers
    vk = VkGraphicsPipelineShaderGroupsCreateInfoNV(sType, pNext, groupCount, pGroups, pipelineCount, pPipelines)

    GraphicsPipelineShaderGroupsCreateInfoNV(groups, pipelines, vk)
end

function BindShaderGroupIndirectCommandNV(group_index)
    vk = VkBindShaderGroupIndirectCommandNV(group_index)

    BindShaderGroupIndirectCommandNV(group_index, vk)
end

function BindIndexBufferIndirectCommandNV(buffer_address, size, index_type)
    vk = VkBindIndexBufferIndirectCommandNV(buffer_address, size, index_type)

    BindIndexBufferIndirectCommandNV(buffer_address, size, index_type, vk)
end

function BindVertexBufferIndirectCommandNV(buffer_address, size, stride)
    vk = VkBindVertexBufferIndirectCommandNV(buffer_address, size, stride)

    BindVertexBufferIndirectCommandNV(buffer_address, size, stride, vk)
end

function SetStateFlagsIndirectCommandNV(data)
    vk = VkSetStateFlagsIndirectCommandNV(data)

    SetStateFlagsIndirectCommandNV(data, vk)
end

function IndirectCommandsStreamNV(buffer, offset)
    vk = VkIndirectCommandsStreamNV(buffer, offset)

    IndirectCommandsStreamNV(buffer, offset, vk)
end

function IndirectCommandsLayoutTokenNV(token_type, stream, offset, vertex_binding_unit, vertex_dynamic_stride, pushconstant_offset, pushconstant_size, index_types, index_type_values;
                                       pushconstant_pipeline_layout = nothing, indirect_state_flags = nothing, pushconstant_shader_stage_flags = nothing, next = C_NULL)
    sType = VK_STRUCTURE_TYPE_INDIRECT_COMMANDS_LAYOUT_TOKEN_NV    # VulkanGen.ReplaceStructureType

    pNext = next == C_NULL ? C_NULL : (next_ref = Ref(next.vk); preserve(next_ref, next); unsafe_pointer(next_ref))    # VulkanGen.GeneratePointers
    pushconstantPipelineLayout = isnothing(pushconstant_pipeline_layout) ? VK_NULL_HANDLE : pushconstant_pipeline_layout    # VulkanGen.AddDefaults
    pushconstantPipelineLayout = pushconstantPipelineLayout == C_NULL ? C_NULL : (pushconstantPipelineLayout_ref = Ref(pushconstantPipelineLayout.vk);
                                                                                  preserve(pushconstantPipelineLayout_ref, pushconstant_pipeline_layout);
                                                                                  unsafe_pointer(pushconstantPipelineLayout_ref))    # VulkanGen.GeneratePointers
    pushconstantShaderStageFlags = isnothing(pushconstant_shader_stage_flags) ? 0 : pushconstant_shader_stage_flags    # VulkanGen.AddDefaults

    pushconstantShaderStageFlags = pushconstantShaderStageFlags == C_NULL ? C_NULL : (pushconstantShaderStageFlags_ref = Ref(pushconstantShaderStageFlags.vk);
                                                                                      preserve(pushconstantShaderStageFlags_ref, pushconstant_shader_stage_flags);
                                                                                      unsafe_pointer(pushconstantShaderStageFlags_ref))    # VulkanGen.GeneratePointers
    pushconstantOffset = pushconstant_offset == C_NULL ? C_NULL : (pushconstant_offset_ref = Ref(pushconstant_offset.vk);
                                                                   preserve(pushconstant_offset_ref, pushconstant_offset);
                                                                   unsafe_pointer(pushconstant_offset_ref))    # VulkanGen.GeneratePointers
    pushconstantSize = pushconstant_size == C_NULL ? C_NULL : (pushconstant_size_ref = Ref(pushconstant_size.vk);
                                                               preserve(pushconstant_size_ref, pushconstant_size);
                                                               unsafe_pointer(pushconstant_size_ref))    # VulkanGen.GeneratePointers
    indirectStateFlags = isnothing(indirect_state_flags) ? 0 : indirect_state_flags    # VulkanGen.AddDefaults
    indexTypeCount = pointer_length(index_types)    # VulkanGen.ComputeLengthArgument
    pIndexTypes = index_types == C_NULL ? C_NULL : (index_types_ref = Ref(index_types.vk);
                                                    preserve(index_types_ref, index_types);
                                                    unsafe_pointer(index_types_ref))    # VulkanGen.GeneratePointers
    pIndexTypeValues = index_type_values == C_NULL ? C_NULL : (index_type_values_ref = Ref(index_type_values.vk);
                                                               preserve(index_type_values_ref, index_type_values);
                                                               unsafe_pointer(index_type_values_ref))    # VulkanGen.GeneratePointers
    vk = VkIndirectCommandsLayoutTokenNV(sType, pNext, token_type, stream, offset, vertex_binding_unit, vertex_dynamic_stride, pushconstantPipelineLayout, pushconstantShaderStageFlags,
                                         pushconstantOffset, pushconstantSize, indirectStateFlags, indexTypeCount, pIndexTypes, pIndexTypeValues)

    IndirectCommandsLayoutTokenNV(token_type, stream, offset, vertex_binding_unit, vertex_dynamic_stride, pushconstant_pipeline_layout, pushconstant_shader_stage_flags, pushconstant_offset,
                                  pushconstant_size, indirect_state_flags, index_types, index_type_values, vk)
end

function IndirectCommandsLayoutCreateInfoNV(pipeline_bind_point, tokens, stream_strides; next = C_NULL, flags = 0)
    sType = VK_STRUCTURE_TYPE_INDIRECT_COMMANDS_LAYOUT_CREATE_INFO_NV    # VulkanGen.ReplaceStructureType

    pNext = next == C_NULL ? C_NULL : (next_ref = Ref(next.vk); preserve(next_ref, next); unsafe_pointer(next_ref))    # VulkanGen.GeneratePointers
    pipelineBindPoint = pipeline_bind_point == C_NULL ? C_NULL : (pipeline_bind_point_ref = Ref(pipeline_bind_point.vk);
                                                                  preserve(pipeline_bind_point_ref, pipeline_bind_point);
                                                                  unsafe_pointer(pipeline_bind_point_ref))    # VulkanGen.GeneratePointers
    tokenCount = pointer_length(tokens)    # VulkanGen.ComputeLengthArgument
    pTokens = tokens == C_NULL ? C_NULL : (tokens_ref = Ref(tokens.vk);
                                           preserve(tokens_ref, tokens);
                                           unsafe_pointer(tokens_ref))    # VulkanGen.GeneratePointers
    streamCount = pointer_length(stream_strides)    # VulkanGen.ComputeLengthArgument
    pStreamStrides = stream_strides == C_NULL ? C_NULL : (stream_strides_ref = Ref(stream_strides.vk);
                                                          preserve(stream_strides_ref, stream_strides);
                                                          unsafe_pointer(stream_strides_ref))    # VulkanGen.GeneratePointers
    vk = VkIndirectCommandsLayoutCreateInfoNV(sType, pNext, flags, pipelineBindPoint, tokenCount, pTokens, streamCount, pStreamStrides)

    IndirectCommandsLayoutCreateInfoNV(pipeline_bind_point, tokens, stream_strides, vk)
end

function GeneratedCommandsInfoNV(pipeline_bind_point, pipeline, indirect_commands_layout, streams, sequences_count, preprocess_buffer, preprocess_offset, preprocess_size;
                                 sequences_count_buffer = nothing, sequences_count_offset = nothing, sequences_index_buffer = nothing, sequences_index_offset = nothing, next = C_NULL)
    sType = VK_STRUCTURE_TYPE_GENERATED_COMMANDS_INFO_NV    # VulkanGen.ReplaceStructureType

    pNext = next == C_NULL ? C_NULL : (next_ref = Ref(next.vk); preserve(next_ref, next); unsafe_pointer(next_ref))    # VulkanGen.GeneratePointers
    pipelineBindPoint = pipeline_bind_point == C_NULL ? C_NULL : (pipeline_bind_point_ref = Ref(pipeline_bind_point.vk);
                                                                  preserve(pipeline_bind_point_ref, pipeline_bind_point);
                                                                  unsafe_pointer(pipeline_bind_point_ref))    # VulkanGen.GeneratePointers
    pipeline = pipeline == C_NULL ? C_NULL : (pipeline_ref = Ref(pipeline.vk);
                                              preserve(pipeline_ref, pipeline);
                                              unsafe_pointer(pipeline_ref))    # VulkanGen.GeneratePointers
    streamCount = pointer_length(streams)    # VulkanGen.ComputeLengthArgument
    pStreams = streams == C_NULL ? C_NULL : (streams_ref = Ref(streams.vk);
                                             preserve(streams_ref, streams);
                                             unsafe_pointer(streams_ref))    # VulkanGen.GeneratePointers
    preprocessBuffer = preprocess_buffer == C_NULL ? C_NULL : (preprocess_buffer_ref = Ref(preprocess_buffer.vk);
                                                               preserve(preprocess_buffer_ref, preprocess_buffer);
                                                               unsafe_pointer(preprocess_buffer_ref))    # VulkanGen.GeneratePointers
    preprocessOffset = preprocess_offset == C_NULL ? C_NULL : (preprocess_offset_ref = Ref(preprocess_offset.vk);
                                                               preserve(preprocess_offset_ref, preprocess_offset);
                                                               unsafe_pointer(preprocess_offset_ref))    # VulkanGen.GeneratePointers
    preprocessSize = preprocess_size == C_NULL ? C_NULL : (preprocess_size_ref = Ref(preprocess_size.vk);
                                                           preserve(preprocess_size_ref, preprocess_size);
                                                           unsafe_pointer(preprocess_size_ref))    # VulkanGen.GeneratePointers
    sequencesCountBuffer = isnothing(sequences_count_buffer) ? VK_NULL_HANDLE : sequences_count_buffer    # VulkanGen.AddDefaults
    sequencesCountOffset = isnothing(sequences_count_offset) ? 0 : sequences_count_offset    # VulkanGen.AddDefaults
    sequencesIndexBuffer = isnothing(sequences_index_buffer) ? VK_NULL_HANDLE : sequences_index_buffer    # VulkanGen.AddDefaults
    sequencesIndexOffset = isnothing(sequences_index_offset) ? 0 : sequences_index_offset    # VulkanGen.AddDefaults

    vk = VkGeneratedCommandsInfoNV(sType, pNext, pipelineBindPoint, pipeline, indirect_commands_layout, streamCount, pStreams, sequences_count, preprocessBuffer, preprocessOffset, preprocessSize,
                                   sequencesCountBuffer, sequencesCountOffset, sequencesIndexBuffer, sequencesIndexOffset)

    GeneratedCommandsInfoNV(pipeline_bind_point, pipeline, indirect_commands_layout, streams, sequences_count, preprocess_buffer, preprocess_offset, preprocess_size, sequences_count_buffer,
                            sequences_count_offset, sequences_index_buffer, sequences_index_offset, vk)
end

function GeneratedCommandsMemoryRequirementsInfoNV(pipeline_bind_point, pipeline, indirect_commands_layout, max_sequences_count; next = C_NULL)
    sType = VK_STRUCTURE_TYPE_GENERATED_COMMANDS_MEMORY_REQUIREMENTS_INFO_NV    # VulkanGen.ReplaceStructureType

    pNext = next == C_NULL ? C_NULL : (next_ref = Ref(next.vk); preserve(next_ref, next); unsafe_pointer(next_ref))    # VulkanGen.GeneratePointers
    pipelineBindPoint = pipeline_bind_point == C_NULL ? C_NULL : (pipeline_bind_point_ref = Ref(pipeline_bind_point.vk);
                                                                  preserve(pipeline_bind_point_ref, pipeline_bind_point);
                                                                  unsafe_pointer(pipeline_bind_point_ref))    # VulkanGen.GeneratePointers
    pipeline = pipeline == C_NULL ? C_NULL : (pipeline_ref = Ref(pipeline.vk);
                                              preserve(pipeline_ref, pipeline);
                                              unsafe_pointer(pipeline_ref))    # VulkanGen.GeneratePointers
    vk = VkGeneratedCommandsMemoryRequirementsInfoNV(sType, pNext, pipelineBindPoint, pipeline, indirect_commands_layout, max_sequences_count)

    GeneratedCommandsMemoryRequirementsInfoNV(pipeline_bind_point, pipeline, indirect_commands_layout, max_sequences_count, vk)
end

function PhysicalDeviceTexelBufferAlignmentFeaturesEXT(texel_buffer_alignment; next = C_NULL)
    sType = VK_STRUCTURE_TYPE_PHYSICAL_DEVICE_TEXEL_BUFFER_ALIGNMENT_FEATURES_EXT    # VulkanGen.ReplaceStructureType

    pNext = next == C_NULL ? C_NULL : (next_ref = Ref(next.vk); preserve(next_ref, next); unsafe_pointer(next_ref))    # VulkanGen.GeneratePointers
    vk = VkPhysicalDeviceTexelBufferAlignmentFeaturesEXT(sType, pNext, texel_buffer_alignment)

    PhysicalDeviceTexelBufferAlignmentFeaturesEXT(texel_buffer_alignment, vk)
end

function RenderPassTransformBeginInfoQCOM(transform; next = C_NULL)
    sType = VK_STRUCTURE_TYPE_RENDER_PASS_TRANSFORM_BEGIN_INFO_QCOM    # VulkanGen.ReplaceStructureType

    pNext = next == C_NULL ? C_NULL : (next_ref = Ref(next.vk); preserve(next_ref, next); unsafe_pointer(next_ref))    # VulkanGen.GeneratePointers
    vk = VkRenderPassTransformBeginInfoQCOM(sType, pNext, transform)

    RenderPassTransformBeginInfoQCOM(transform, vk)
end

function CommandBufferInheritanceRenderPassTransformInfoQCOM(transform, render_area; next = C_NULL)
    sType = VK_STRUCTURE_TYPE_COMMAND_BUFFER_INHERITANCE_RENDER_PASS_TRANSFORM_INFO_QCOM    # VulkanGen.ReplaceStructureType

    pNext = next == C_NULL ? C_NULL : (next_ref = Ref(next.vk); preserve(next_ref, next); unsafe_pointer(next_ref))    # VulkanGen.GeneratePointers
    vk = VkCommandBufferInheritanceRenderPassTransformInfoQCOM(sType, pNext, transform, render_area)

    CommandBufferInheritanceRenderPassTransformInfoQCOM(transform, render_area, vk)
end

function PhysicalDeviceRobustness2FeaturesEXT(robust_buffer_access_2, robust_image_access_2, null_descriptor; next = C_NULL)
    sType = VK_STRUCTURE_TYPE_PHYSICAL_DEVICE_ROBUSTNESS_2_FEATURES_EXT    # VulkanGen.ReplaceStructureType

    pNext = next == C_NULL ? C_NULL : (next_ref = Ref(next.vk); preserve(next_ref, next); unsafe_pointer(next_ref))    # VulkanGen.GeneratePointers
    vk = VkPhysicalDeviceRobustness2FeaturesEXT(sType, pNext, robust_buffer_access_2, robust_image_access_2, null_descriptor)

    PhysicalDeviceRobustness2FeaturesEXT(robust_buffer_access_2, robust_image_access_2, null_descriptor, vk)
end

function SamplerCustomBorderColorCreateInfoEXT(custom_border_color, format; next = C_NULL)
    sType = VK_STRUCTURE_TYPE_SAMPLER_CUSTOM_BORDER_COLOR_CREATE_INFO_EXT    # VulkanGen.ReplaceStructureType

    pNext = next == C_NULL ? C_NULL : (next_ref = Ref(next.vk); preserve(next_ref, next); unsafe_pointer(next_ref))    # VulkanGen.GeneratePointers
    vk = VkSamplerCustomBorderColorCreateInfoEXT(sType, pNext, custom_border_color, format)

    SamplerCustomBorderColorCreateInfoEXT(custom_border_color, format, vk)
end

function PhysicalDeviceCustomBorderColorFeaturesEXT(custom_border_colors, custom_border_color_without_format; next = C_NULL)
    sType = VK_STRUCTURE_TYPE_PHYSICAL_DEVICE_CUSTOM_BORDER_COLOR_FEATURES_EXT    # VulkanGen.ReplaceStructureType

    pNext = next == C_NULL ? C_NULL : (next_ref = Ref(next.vk); preserve(next_ref, next); unsafe_pointer(next_ref))    # VulkanGen.GeneratePointers
    vk = VkPhysicalDeviceCustomBorderColorFeaturesEXT(sType, pNext, custom_border_colors, custom_border_color_without_format)

    PhysicalDeviceCustomBorderColorFeaturesEXT(custom_border_colors, custom_border_color_without_format, vk)
end

function PhysicalDevicePrivateDataFeaturesEXT(private_data; next = C_NULL)
    sType = VK_STRUCTURE_TYPE_PHYSICAL_DEVICE_PRIVATE_DATA_FEATURES_EXT    # VulkanGen.ReplaceStructureType

    pNext = next == C_NULL ? C_NULL : (next_ref = Ref(next.vk); preserve(next_ref, next); unsafe_pointer(next_ref))    # VulkanGen.GeneratePointers
    privateData = private_data == C_NULL ? C_NULL : (private_data_ref = Ref(private_data.vk);
                                                     preserve(private_data_ref, private_data);
                                                     unsafe_pointer(private_data_ref))    # VulkanGen.GeneratePointers
    vk = VkPhysicalDevicePrivateDataFeaturesEXT(sType, pNext, privateData)

    PhysicalDevicePrivateDataFeaturesEXT(private_data, vk)
end

function DevicePrivateDataCreateInfoEXT(private_data_slot_request_count; next = C_NULL)
    sType = VK_STRUCTURE_TYPE_DEVICE_PRIVATE_DATA_CREATE_INFO_EXT    # VulkanGen.ReplaceStructureType

    pNext = next == C_NULL ? C_NULL : (next_ref = Ref(next.vk); preserve(next_ref, next); unsafe_pointer(next_ref))    # VulkanGen.GeneratePointers
    privateDataSlotRequestCount = private_data_slot_request_count == C_NULL ? C_NULL : (private_data_slot_request_count_ref = Ref(private_data_slot_request_count.vk);
                                                                                        preserve(private_data_slot_request_count_ref, private_data_slot_request_count);
                                                                                        unsafe_pointer(private_data_slot_request_count_ref))    # VulkanGen.GeneratePointers
    vk = VkDevicePrivateDataCreateInfoEXT(sType, pNext, privateDataSlotRequestCount)

    DevicePrivateDataCreateInfoEXT(private_data_slot_request_count, vk)
end

function PrivateDataSlotCreateInfoEXT(; next = C_NULL, flags = 0)
    sType = VK_STRUCTURE_TYPE_PRIVATE_DATA_SLOT_CREATE_INFO_EXT    # VulkanGen.ReplaceStructureType

    pNext = next == C_NULL ? C_NULL : (next_ref = Ref(next.vk); preserve(next_ref, next); unsafe_pointer(next_ref))    # VulkanGen.GeneratePointers
    vk = VkPrivateDataSlotCreateInfoEXT(sType, pNext, flags)

    PrivateDataSlotCreateInfoEXT(vk)
end

function PhysicalDevicePipelineCreationCacheControlFeaturesEXT(pipeline_creation_cache_control; next = C_NULL)
    sType = VK_STRUCTURE_TYPE_PHYSICAL_DEVICE_PIPELINE_CREATION_CACHE_CONTROL_FEATURES_EXT    # VulkanGen.ReplaceStructureType

    pNext = next == C_NULL ? C_NULL : (next_ref = Ref(next.vk); preserve(next_ref, next); unsafe_pointer(next_ref))    # VulkanGen.GeneratePointers
    pipelineCreationCacheControl = pipeline_creation_cache_control == C_NULL ? C_NULL : (pipeline_creation_cache_control_ref = Ref(pipeline_creation_cache_control.vk);
                                                                                         preserve(pipeline_creation_cache_control_ref, pipeline_creation_cache_control);
                                                                                         unsafe_pointer(pipeline_creation_cache_control_ref))    # VulkanGen.GeneratePointers
    vk = VkPhysicalDevicePipelineCreationCacheControlFeaturesEXT(sType, pNext, pipelineCreationCacheControl)

    PhysicalDevicePipelineCreationCacheControlFeaturesEXT(pipeline_creation_cache_control, vk)
end

function PhysicalDeviceDiagnosticsConfigFeaturesNV(diagnostics_config; next = C_NULL)
    sType = VK_STRUCTURE_TYPE_PHYSICAL_DEVICE_DIAGNOSTICS_CONFIG_FEATURES_NV    # VulkanGen.ReplaceStructureType

    pNext = next == C_NULL ? C_NULL : (next_ref = Ref(next.vk); preserve(next_ref, next); unsafe_pointer(next_ref))    # VulkanGen.GeneratePointers
    vk = VkPhysicalDeviceDiagnosticsConfigFeaturesNV(sType, pNext, diagnostics_config)

    PhysicalDeviceDiagnosticsConfigFeaturesNV(diagnostics_config, vk)
end

function DeviceDiagnosticsConfigCreateInfoNV(; next = C_NULL, flags = 0)
    sType = VK_STRUCTURE_TYPE_DEVICE_DIAGNOSTICS_CONFIG_CREATE_INFO_NV    # VulkanGen.ReplaceStructureType

    pNext = next == C_NULL ? C_NULL : (next_ref = Ref(next.vk); preserve(next_ref, next); unsafe_pointer(next_ref))    # VulkanGen.GeneratePointers
    vk = VkDeviceDiagnosticsConfigCreateInfoNV(sType, pNext, flags)

    DeviceDiagnosticsConfigCreateInfoNV(vk)
end

function PhysicalDeviceFragmentDensityMap2FeaturesEXT(fragment_density_map_deferred; next = C_NULL)
    sType = VK_STRUCTURE_TYPE_PHYSICAL_DEVICE_FRAGMENT_DENSITY_MAP_2_FEATURES_EXT    # VulkanGen.ReplaceStructureType

    pNext = next == C_NULL ? C_NULL : (next_ref = Ref(next.vk); preserve(next_ref, next); unsafe_pointer(next_ref))    # VulkanGen.GeneratePointers
    vk = VkPhysicalDeviceFragmentDensityMap2FeaturesEXT(sType, pNext, fragment_density_map_deferred)

    PhysicalDeviceFragmentDensityMap2FeaturesEXT(fragment_density_map_deferred, vk)
end

function PhysicalDeviceImageRobustnessFeaturesEXT(robust_image_access; next = C_NULL)
    sType = VK_STRUCTURE_TYPE_PHYSICAL_DEVICE_IMAGE_ROBUSTNESS_FEATURES_EXT    # VulkanGen.ReplaceStructureType

    pNext = next == C_NULL ? C_NULL : (next_ref = Ref(next.vk); preserve(next_ref, next); unsafe_pointer(next_ref))    # VulkanGen.GeneratePointers
    vk = VkPhysicalDeviceImageRobustnessFeaturesEXT(sType, pNext, robust_image_access)

    PhysicalDeviceImageRobustnessFeaturesEXT(robust_image_access, vk)
end

function PhysicalDevice4444FormatsFeaturesEXT(format_a4r4g4b4, format_a4b4g4r4; next = C_NULL)
    sType = VK_STRUCTURE_TYPE_PHYSICAL_DEVICE_4444_FORMATS_FEATURES_EXT    # VulkanGen.ReplaceStructureType

    pNext = next == C_NULL ? C_NULL : (next_ref = Ref(next.vk); preserve(next_ref, next); unsafe_pointer(next_ref))    # VulkanGen.GeneratePointers
    vk = VkPhysicalDevice4444FormatsFeaturesEXT(sType, pNext, format_a4r4g4b4, format_a4b4g4r4)

    PhysicalDevice4444FormatsFeaturesEXT(format_a4r4g4b4, format_a4b4g4r4, vk)
end

function DeferredOperationInfoKHR(operation_handle; next = C_NULL)
    sType = VK_STRUCTURE_TYPE_DEFERRED_OPERATION_INFO_KHR    # VulkanGen.ReplaceStructureType

    pNext = next == C_NULL ? C_NULL : (next_ref = Ref(next.vk); preserve(next_ref, next); unsafe_pointer(next_ref))    # VulkanGen.GeneratePointers
    vk = VkDeferredOperationInfoKHR(sType, pNext, operation_handle)

    DeferredOperationInfoKHR(operation_handle, vk)
end

function PipelineLibraryCreateInfoKHR(libraries; next = C_NULL)
    sType = VK_STRUCTURE_TYPE_PIPELINE_LIBRARY_CREATE_INFO_KHR    # VulkanGen.ReplaceStructureType

    pNext = next == C_NULL ? C_NULL : (next_ref = Ref(next.vk); preserve(next_ref, next); unsafe_pointer(next_ref))    # VulkanGen.GeneratePointers
    libraryCount = pointer_length(libraries)    # VulkanGen.ComputeLengthArgument
    pLibraries = libraries == C_NULL ? C_NULL : (libraries_ref = Ref(libraries.vk);
                                                 preserve(libraries_ref, libraries);
                                                 unsafe_pointer(libraries_ref))    # VulkanGen.GeneratePointers
    vk = VkPipelineLibraryCreateInfoKHR(sType, pNext, libraryCount, pLibraries)

    PipelineLibraryCreateInfoKHR(libraries, vk)
end

function DeviceOrHostAddressKHR(host_address)
    vk = VkDeviceOrHostAddressKHR(host_address)

    DeviceOrHostAddressKHR(host_address, vk)
end

function DeviceOrHostAddressConstKHR(host_address)
    vk = VkDeviceOrHostAddressConstKHR(host_address)

    DeviceOrHostAddressConstKHR(host_address, vk)
end

function AccelerationStructureBuildOffsetInfoKHR(primitive_count, primitive_offset; transform_offset = nothing, first_vertex = nothing)
    primitiveCount = primitive_count == C_NULL ? C_NULL : (primitive_count_ref = Ref(primitive_count.vk);
                                                           preserve(primitive_count_ref, primitive_count);
                                                           unsafe_pointer(primitive_count_ref))    # VulkanGen.GeneratePointers
    primitiveOffset = primitive_offset == C_NULL ? C_NULL : (primitive_offset_ref = Ref(primitive_offset.vk);
                                                             preserve(primitive_offset_ref, primitive_offset);
                                                             unsafe_pointer(primitive_offset_ref))    # VulkanGen.GeneratePointers
    firstVertex = isnothing(first_vertex) ? 0 : first_vertex    # VulkanGen.AddDefaults

    transformOffset = isnothing(transform_offset) ? 0 : transform_offset    # VulkanGen.AddDefaults
    vk = VkAccelerationStructureBuildOffsetInfoKHR(primitiveCount, primitiveOffset, firstVertex, transformOffset)

    AccelerationStructureBuildOffsetInfoKHR(primitive_count, primitive_offset, first_vertex, transform_offset, vk)
end

function RayTracingShaderGroupCreateInfoKHR(type, general_shader, closest_hit_shader, any_hit_shader, intersection_shader; shader_group_capture_replay_handle = nothing, next = C_NULL)
    sType = VK_STRUCTURE_TYPE_RAY_TRACING_SHADER_GROUP_CREATE_INFO_KHR    # VulkanGen.ReplaceStructureType

    pNext = next == C_NULL ? C_NULL : (next_ref = Ref(next.vk); preserve(next_ref, next); unsafe_pointer(next_ref))    # VulkanGen.GeneratePointers
    pShaderGroupCaptureReplayHandle = isnothing(shader_group_capture_replay_handle) ? C_NULL : shader_group_capture_replay_handle    # VulkanGen.AddDefaults

    pShaderGroupCaptureReplayHandle = pShaderGroupCaptureReplayHandle == C_NULL ? C_NULL : (pShaderGroupCaptureReplayHandle_ref = Ref(pShaderGroupCaptureReplayHandle.vk);
                                                                                            preserve(pShaderGroupCaptureReplayHandle_ref, shader_group_capture_replay_handle);
                                                                                            unsafe_pointer(pShaderGroupCaptureReplayHandle_ref))    # VulkanGen.GeneratePointers
    vk = VkRayTracingShaderGroupCreateInfoKHR(sType, pNext, type, general_shader, closest_hit_shader, any_hit_shader, intersection_shader, pShaderGroupCaptureReplayHandle)

    RayTracingShaderGroupCreateInfoKHR(type, general_shader, closest_hit_shader, any_hit_shader, intersection_shader, shader_group_capture_replay_handle, vk)
end

function RayTracingPipelineInterfaceCreateInfoKHR(max_payload_size, max_attribute_size, max_callable_size; next = C_NULL)
    sType = VK_STRUCTURE_TYPE_RAY_TRACING_PIPELINE_INTERFACE_CREATE_INFO_KHR    # VulkanGen.ReplaceStructureType

    pNext = next == C_NULL ? C_NULL : (next_ref = Ref(next.vk); preserve(next_ref, next); unsafe_pointer(next_ref))    # VulkanGen.GeneratePointers
    vk = VkRayTracingPipelineInterfaceCreateInfoKHR(sType, pNext, max_payload_size, max_attribute_size, max_callable_size)

    RayTracingPipelineInterfaceCreateInfoKHR(max_payload_size, max_attribute_size, max_callable_size, vk)
end

function RayTracingPipelineCreateInfoKHR(stages, groups, max_recursion_depth, libraries, layout, base_pipeline_index; base_pipeline_handle = nothing, library_interface = nothing, next = C_NULL,
                                         flags = 0)
    sType = VK_STRUCTURE_TYPE_RAY_TRACING_PIPELINE_CREATE_INFO_KHR    # VulkanGen.ReplaceStructureType

    pNext = next == C_NULL ? C_NULL : (next_ref = Ref(next.vk); preserve(next_ref, next); unsafe_pointer(next_ref))    # VulkanGen.GeneratePointers
    stageCount = pointer_length(stages)    # VulkanGen.ComputeLengthArgument
    pStages = stages == C_NULL ? C_NULL : (stages_ref = Ref(stages.vk);
                                           preserve(stages_ref, stages);
                                           unsafe_pointer(stages_ref))    # VulkanGen.GeneratePointers
    groupCount = pointer_length(groups)    # VulkanGen.ComputeLengthArgument
    pGroups = groups == C_NULL ? C_NULL : (groups_ref = Ref(groups.vk);
                                           preserve(groups_ref, groups);
                                           unsafe_pointer(groups_ref))    # VulkanGen.GeneratePointers
    pLibraryInterface = isnothing(library_interface) ? C_NULL : library_interface    # VulkanGen.AddDefaults

    pLibraryInterface = pLibraryInterface == C_NULL ? C_NULL : (pLibraryInterface_ref = Ref(pLibraryInterface.vk);
                                                                preserve(pLibraryInterface_ref, library_interface);
                                                                unsafe_pointer(pLibraryInterface_ref))    # VulkanGen.GeneratePointers
    basePipelineHandle = isnothing(base_pipeline_handle) ? VK_NULL_HANDLE : base_pipeline_handle    # VulkanGen.AddDefaults
    vk = VkRayTracingPipelineCreateInfoKHR(sType, pNext, flags, stageCount, pStages, groupCount, pGroups, max_recursion_depth, libraries, pLibraryInterface, layout, basePipelineHandle,
                                           base_pipeline_index)

    RayTracingPipelineCreateInfoKHR(stages, groups, max_recursion_depth, libraries, library_interface, layout, base_pipeline_handle, base_pipeline_index, vk)
end

function AccelerationStructureGeometryTrianglesDataKHR(vertex_format, vertex_data, vertex_stride, index_type; transform_data = nothing, index_data = nothing, next = C_NULL)
    sType = VK_STRUCTURE_TYPE_ACCELERATION_STRUCTURE_GEOMETRY_TRIANGLES_DATA_KHR    # VulkanGen.ReplaceStructureType

    pNext = next == C_NULL ? C_NULL : (next_ref = Ref(next.vk); preserve(next_ref, next); unsafe_pointer(next_ref))    # VulkanGen.GeneratePointers
    indexData = isnothing(index_data) ? 0 : index_data    # VulkanGen.AddDefaults

    transformData = isnothing(transform_data) ? 0 : transform_data    # VulkanGen.AddDefaults
    vk = VkAccelerationStructureGeometryTrianglesDataKHR(sType, pNext, vertex_format, vertex_data, vertex_stride, index_type, indexData, transformData)

    AccelerationStructureGeometryTrianglesDataKHR(vertex_format, vertex_data, vertex_stride, index_type, index_data, transform_data, vk)
end

function AccelerationStructureGeometryAabbsDataKHR(data, stride; next = C_NULL)
    sType = VK_STRUCTURE_TYPE_ACCELERATION_STRUCTURE_GEOMETRY_AABBS_DATA_KHR    # VulkanGen.ReplaceStructureType

    pNext = next == C_NULL ? C_NULL : (next_ref = Ref(next.vk); preserve(next_ref, next); unsafe_pointer(next_ref))    # VulkanGen.GeneratePointers
    vk = VkAccelerationStructureGeometryAabbsDataKHR(sType, pNext, data, stride)

    AccelerationStructureGeometryAabbsDataKHR(data, stride, vk)
end

function AccelerationStructureGeometryInstancesDataKHR(array_of_pointers, data; next = C_NULL)
    sType = VK_STRUCTURE_TYPE_ACCELERATION_STRUCTURE_GEOMETRY_INSTANCES_DATA_KHR    # VulkanGen.ReplaceStructureType

    pNext = next == C_NULL ? C_NULL : (next_ref = Ref(next.vk); preserve(next_ref, next); unsafe_pointer(next_ref))    # VulkanGen.GeneratePointers
    vk = VkAccelerationStructureGeometryInstancesDataKHR(sType, pNext, array_of_pointers, data)

    AccelerationStructureGeometryInstancesDataKHR(array_of_pointers, data, vk)
end

function AccelerationStructureGeometryDataKHR(triangles)
    vk = VkAccelerationStructureGeometryDataKHR(triangles)

    AccelerationStructureGeometryDataKHR(triangles, vk)
end

function AccelerationStructureGeometryKHR(geometry_type, geometry; next = C_NULL, flags = 0)
    sType = VK_STRUCTURE_TYPE_ACCELERATION_STRUCTURE_GEOMETRY_KHR    # VulkanGen.ReplaceStructureType

    pNext = next == C_NULL ? C_NULL : (next_ref = Ref(next.vk); preserve(next_ref, next); unsafe_pointer(next_ref))    # VulkanGen.GeneratePointers
    vk = VkAccelerationStructureGeometryKHR(sType, pNext, geometry_type, geometry, flags)

    AccelerationStructureGeometryKHR(geometry_type, geometry, vk)
end

function AccelerationStructureBuildGeometryInfoKHR(type, update, dst_acceleration_structure, geometry_array_of_pointers, geometries, scratch_data; geometry_count = nothing,
                                                   src_acceleration_structure = nothing, next = C_NULL, flags = 0)
    sType = VK_STRUCTURE_TYPE_ACCELERATION_STRUCTURE_BUILD_GEOMETRY_INFO_KHR    # VulkanGen.ReplaceStructureType

    pNext = next == C_NULL ? C_NULL : (next_ref = Ref(next.vk); preserve(next_ref, next); unsafe_pointer(next_ref))    # VulkanGen.GeneratePointers
    srcAccelerationStructure = isnothing(src_acceleration_structure) ? VK_NULL_HANDLE : src_acceleration_structure    # VulkanGen.AddDefaults

    geometryCount = isnothing(geometry_count) ? 0 : geometry_count    # VulkanGen.AddDefaults
    ppGeometries = geometries == C_NULL ? C_NULL : (geometries_ref = Ref(geometries.vk);
                                                    preserve(geometries_ref, geometries);
                                                    unsafe_pointer(geometries_ref))    # VulkanGen.GeneratePointers
    vk = VkAccelerationStructureBuildGeometryInfoKHR(sType, pNext, type, flags, update, srcAccelerationStructure, dst_acceleration_structure, geometry_array_of_pointers, geometryCount, ppGeometries,
                                                     scratch_data)

    AccelerationStructureBuildGeometryInfoKHR(type, update, src_acceleration_structure, dst_acceleration_structure, geometry_array_of_pointers, geometry_count, geometries, scratch_data, vk)
end

function AccelerationStructureCreateGeometryTypeInfoKHR(geometry_type, max_primitive_count, index_type; vertex_format = nothing, allows_transforms = nothing, max_vertex_count = nothing, next = C_NULL)
    sType = VK_STRUCTURE_TYPE_ACCELERATION_STRUCTURE_CREATE_GEOMETRY_TYPE_INFO_KHR    # VulkanGen.ReplaceStructureType

    pNext = next == C_NULL ? C_NULL : (next_ref = Ref(next.vk); preserve(next_ref, next); unsafe_pointer(next_ref))    # VulkanGen.GeneratePointers
    maxVertexCount = isnothing(max_vertex_count) ? 0 : max_vertex_count    # VulkanGen.AddDefaults

    vertexFormat = isnothing(vertex_format) ? 0 : vertex_format    # VulkanGen.AddDefaults
    allowsTransforms = isnothing(allows_transforms) ? 0 : allows_transforms    # VulkanGen.AddDefaults
    vk = VkAccelerationStructureCreateGeometryTypeInfoKHR(sType, pNext, geometry_type, max_primitive_count, index_type, maxVertexCount, vertexFormat, allowsTransforms)

    AccelerationStructureCreateGeometryTypeInfoKHR(geometry_type, max_primitive_count, index_type, max_vertex_count, vertex_format, allows_transforms, vk)
end

function AccelerationStructureCreateInfoKHR(compacted_size, type, geometry_infos; device_address = nothing, next = C_NULL, flags = 0)
    sType = VK_STRUCTURE_TYPE_ACCELERATION_STRUCTURE_CREATE_INFO_KHR    # VulkanGen.ReplaceStructureType

    pNext = next == C_NULL ? C_NULL : (next_ref = Ref(next.vk); preserve(next_ref, next); unsafe_pointer(next_ref))    # VulkanGen.GeneratePointers
    maxGeometryCount = pointer_length(geometry_infos)    # VulkanGen.ComputeLengthArgument
    pGeometryInfos = geometry_infos == C_NULL ? C_NULL : (geometry_infos_ref = Ref(geometry_infos.vk);
                                                          preserve(geometry_infos_ref, geometry_infos);
                                                          unsafe_pointer(geometry_infos_ref))    # VulkanGen.GeneratePointers
    deviceAddress = isnothing(device_address) ? 0 : device_address    # VulkanGen.AddDefaults

    vk = VkAccelerationStructureCreateInfoKHR(sType, pNext, compacted_size, type, flags, maxGeometryCount, pGeometryInfos, deviceAddress)

    AccelerationStructureCreateInfoKHR(compacted_size, type, geometry_infos, device_address, vk)
end

function AccelerationStructureMemoryRequirementsInfoKHR(type, build_type, acceleration_structure; next = C_NULL)
    sType = VK_STRUCTURE_TYPE_ACCELERATION_STRUCTURE_MEMORY_REQUIREMENTS_INFO_KHR    # VulkanGen.ReplaceStructureType

    pNext = next == C_NULL ? C_NULL : (next_ref = Ref(next.vk); preserve(next_ref, next); unsafe_pointer(next_ref))    # VulkanGen.GeneratePointers
    vk = VkAccelerationStructureMemoryRequirementsInfoKHR(sType, pNext, type, build_type, acceleration_structure)

    AccelerationStructureMemoryRequirementsInfoKHR(type, build_type, acceleration_structure, vk)
end

function PhysicalDeviceRayTracingFeaturesKHR(ray_tracing, ray_tracing_shader_group_handle_capture_replay, ray_tracing_shader_group_handle_capture_replay_mixed,
                                             ray_tracing_acceleration_structure_capture_replay, ray_tracing_indirect_trace_rays, ray_tracing_indirect_acceleration_structure_build,
                                             ray_tracing_host_acceleration_structure_commands, ray_query, ray_tracing_primitive_culling; next = C_NULL)
    sType = VK_STRUCTURE_TYPE_PHYSICAL_DEVICE_RAY_TRACING_FEATURES_KHR    # VulkanGen.ReplaceStructureType

    pNext = next == C_NULL ? C_NULL : (next_ref = Ref(next.vk); preserve(next_ref, next); unsafe_pointer(next_ref))    # VulkanGen.GeneratePointers
    vk = VkPhysicalDeviceRayTracingFeaturesKHR(sType, pNext, ray_tracing, ray_tracing_shader_group_handle_capture_replay, ray_tracing_shader_group_handle_capture_replay_mixed,
                                               ray_tracing_acceleration_structure_capture_replay, ray_tracing_indirect_trace_rays, ray_tracing_indirect_acceleration_structure_build,
                                               ray_tracing_host_acceleration_structure_commands, ray_query, ray_tracing_primitive_culling)

    PhysicalDeviceRayTracingFeaturesKHR(ray_tracing, ray_tracing_shader_group_handle_capture_replay, ray_tracing_shader_group_handle_capture_replay_mixed,
                                        ray_tracing_acceleration_structure_capture_replay, ray_tracing_indirect_trace_rays, ray_tracing_indirect_acceleration_structure_build,
                                        ray_tracing_host_acceleration_structure_commands, ray_query, ray_tracing_primitive_culling, vk)
end

function AccelerationStructureDeviceAddressInfoKHR(acceleration_structure; next = C_NULL)
    sType = VK_STRUCTURE_TYPE_ACCELERATION_STRUCTURE_DEVICE_ADDRESS_INFO_KHR    # VulkanGen.ReplaceStructureType

    pNext = next == C_NULL ? C_NULL : (next_ref = Ref(next.vk); preserve(next_ref, next); unsafe_pointer(next_ref))    # VulkanGen.GeneratePointers
    vk = VkAccelerationStructureDeviceAddressInfoKHR(sType, pNext, acceleration_structure)

    AccelerationStructureDeviceAddressInfoKHR(acceleration_structure, vk)
end

function AccelerationStructureVersionKHR(version_data; next = C_NULL)
    sType = VK_STRUCTURE_TYPE_ACCELERATION_STRUCTURE_VERSION_KHR    # VulkanGen.ReplaceStructureType

    pNext = next == C_NULL ? C_NULL : (next_ref = Ref(next.vk); preserve(next_ref, next); unsafe_pointer(next_ref))    # VulkanGen.GeneratePointers
    vk = VkAccelerationStructureVersionKHR(sType, pNext, version_data)

    AccelerationStructureVersionKHR(version_data, vk)
end

function StridedBufferRegionKHR(offset, stride, size; buffer = nothing)
    buffer = isnothing(buffer) ? VK_NULL_HANDLE : buffer    # VulkanGen.AddDefaults

    vk = VkStridedBufferRegionKHR(buffer, offset, stride, size)

    StridedBufferRegionKHR(buffer, offset, stride, size, vk)
end

function TraceRaysIndirectCommandKHR(width, height, depth)
    vk = VkTraceRaysIndirectCommandKHR(width, height, depth)

    TraceRaysIndirectCommandKHR(width, height, depth, vk)
end

function CopyAccelerationStructureToMemoryInfoKHR(src, dst, mode; next = C_NULL)
    sType = VK_STRUCTURE_TYPE_COPY_ACCELERATION_STRUCTURE_TO_MEMORY_INFO_KHR    # VulkanGen.ReplaceStructureType

    pNext = next == C_NULL ? C_NULL : (next_ref = Ref(next.vk); preserve(next_ref, next); unsafe_pointer(next_ref))    # VulkanGen.GeneratePointers
    vk = VkCopyAccelerationStructureToMemoryInfoKHR(sType, pNext, src, dst, mode)

    CopyAccelerationStructureToMemoryInfoKHR(src, dst, mode, vk)
end

function CopyMemoryToAccelerationStructureInfoKHR(src, dst, mode; next = C_NULL)
    sType = VK_STRUCTURE_TYPE_COPY_MEMORY_TO_ACCELERATION_STRUCTURE_INFO_KHR    # VulkanGen.ReplaceStructureType

    pNext = next == C_NULL ? C_NULL : (next_ref = Ref(next.vk); preserve(next_ref, next); unsafe_pointer(next_ref))    # VulkanGen.GeneratePointers
    vk = VkCopyMemoryToAccelerationStructureInfoKHR(sType, pNext, src, dst, mode)

    CopyMemoryToAccelerationStructureInfoKHR(src, dst, mode, vk)
end

function CopyAccelerationStructureInfoKHR(src, dst, mode; next = C_NULL)
    sType = VK_STRUCTURE_TYPE_COPY_ACCELERATION_STRUCTURE_INFO_KHR    # VulkanGen.ReplaceStructureType

    pNext = next == C_NULL ? C_NULL : (next_ref = Ref(next.vk); preserve(next_ref, next); unsafe_pointer(next_ref))    # VulkanGen.GeneratePointers
    vk = VkCopyAccelerationStructureInfoKHR(sType, pNext, src, dst, mode)

    CopyAccelerationStructureInfoKHR(src, dst, mode, vk)
end

function Base.convert(T::Type{Rect2D}, vk_struct::VkRect2D)
    Rect2D(vk_struct.offset, vk_struct.extent)
end

function Base.convert(T::Type{FormatProperties}, vk_struct::VkFormatProperties)
    FormatProperties(vk_struct.linearTilingFeatures, vk_struct.optimalTilingFeatures, vk_struct.bufferFeatures)
end

function Base.convert(T::Type{ImageFormatProperties}, vk_struct::VkImageFormatProperties)
    ImageFormatProperties(vk_struct.maxExtent, vk_struct.maxMipLevels, vk_struct.maxArrayLayers, vk_struct.sampleCounts, vk_struct.maxResourceSize)
end

function Base.convert(T::Type{PhysicalDeviceLimits}, vk_struct::VkPhysicalDeviceLimits)
    PhysicalDeviceLimits(vk_struct.maxImageDimension1D, vk_struct.maxImageDimension2D, vk_struct.maxImageDimension3D, vk_struct.maxImageDimensionCube, vk_struct.maxImageArrayLayers,
                         vk_struct.maxTexelBufferElements, vk_struct.maxUniformBufferRange, vk_struct.maxStorageBufferRange, vk_struct.maxPushConstantsSize, vk_struct.maxMemoryAllocationCount,
                         vk_struct.maxSamplerAllocationCount, vk_struct.bufferImageGranularity, vk_struct.sparseAddressSpaceSize, vk_struct.maxBoundDescriptorSets,
                         vk_struct.maxPerStageDescriptorSamplers, vk_struct.maxPerStageDescriptorUniformBuffers, vk_struct.maxPerStageDescriptorStorageBuffers,
                         vk_struct.maxPerStageDescriptorSampledImages, vk_struct.maxPerStageDescriptorStorageImages, vk_struct.maxPerStageDescriptorInputAttachments, vk_struct.maxPerStageResources,
                         vk_struct.maxDescriptorSetSamplers, vk_struct.maxDescriptorSetUniformBuffers, vk_struct.maxDescriptorSetUniformBuffersDynamic, vk_struct.maxDescriptorSetStorageBuffers,
                         vk_struct.maxDescriptorSetStorageBuffersDynamic, vk_struct.maxDescriptorSetSampledImages, vk_struct.maxDescriptorSetStorageImages, vk_struct.maxDescriptorSetInputAttachments,
                         vk_struct.maxVertexInputAttributes, vk_struct.maxVertexInputBindings, vk_struct.maxVertexInputAttributeOffset, vk_struct.maxVertexInputBindingStride,
                         vk_struct.maxVertexOutputComponents, vk_struct.maxTessellationGenerationLevel, vk_struct.maxTessellationPatchSize, vk_struct.maxTessellationControlPerVertexInputComponents,
                         vk_struct.maxTessellationControlPerVertexOutputComponents, vk_struct.maxTessellationControlPerPatchOutputComponents, vk_struct.maxTessellationControlTotalOutputComponents,
                         vk_struct.maxTessellationEvaluationInputComponents, vk_struct.maxTessellationEvaluationOutputComponents, vk_struct.maxGeometryShaderInvocations,
                         vk_struct.maxGeometryInputComponents, vk_struct.maxGeometryOutputComponents, vk_struct.maxGeometryOutputVertices, vk_struct.maxGeometryTotalOutputComponents,
                         vk_struct.maxFragmentInputComponents, vk_struct.maxFragmentOutputAttachments, vk_struct.maxFragmentDualSrcAttachments, vk_struct.maxFragmentCombinedOutputResources,
                         vk_struct.maxComputeSharedMemorySize, vk_struct.maxComputeWorkGroupCount, vk_struct.maxComputeWorkGroupInvocations, vk_struct.maxComputeWorkGroupSize,
                         vk_struct.subPixelPrecisionBits, vk_struct.subTexelPrecisionBits, vk_struct.mipmapPrecisionBits, vk_struct.maxDrawIndexedIndexValue, vk_struct.maxDrawIndirectCount,
                         vk_struct.maxSamplerLodBias, vk_struct.maxSamplerAnisotropy, vk_struct.maxViewports, vk_struct.maxViewportDimensions, vk_struct.viewportBoundsRange,
                         vk_struct.viewportSubPixelBits, vk_struct.minMemoryMapAlignment, vk_struct.minTexelBufferOffsetAlignment, vk_struct.minUniformBufferOffsetAlignment,
                         vk_struct.minStorageBufferOffsetAlignment, vk_struct.minTexelOffset, vk_struct.maxTexelOffset, vk_struct.minTexelGatherOffset, vk_struct.maxTexelGatherOffset,
                         vk_struct.minInterpolationOffset, vk_struct.maxInterpolationOffset, vk_struct.subPixelInterpolationOffsetBits, vk_struct.maxFramebufferWidth, vk_struct.maxFramebufferHeight,
                         vk_struct.maxFramebufferLayers, vk_struct.framebufferColorSampleCounts, vk_struct.framebufferDepthSampleCounts, vk_struct.framebufferStencilSampleCounts,
                         vk_struct.framebufferNoAttachmentsSampleCounts, vk_struct.maxColorAttachments, vk_struct.sampledImageColorSampleCounts, vk_struct.sampledImageIntegerSampleCounts,
                         vk_struct.sampledImageDepthSampleCounts, vk_struct.sampledImageStencilSampleCounts, vk_struct.storageImageSampleCounts, vk_struct.maxSampleMaskWords,
                         vk_struct.timestampComputeAndGraphics, vk_struct.timestampPeriod, vk_struct.maxClipDistances, vk_struct.maxCullDistances, vk_struct.maxCombinedClipAndCullDistances,
                         vk_struct.discreteQueuePriorities, vk_struct.pointSizeRange, vk_struct.lineWidthRange, vk_struct.pointSizeGranularity, vk_struct.lineWidthGranularity, vk_struct.strictLines,
                         vk_struct.standardSampleLocations, vk_struct.optimalBufferCopyOffsetAlignment, vk_struct.optimalBufferCopyRowPitchAlignment, vk_struct.nonCoherentAtomSize)
end

function Base.convert(T::Type{PhysicalDeviceMemoryProperties}, vk_struct::VkPhysicalDeviceMemoryProperties)
    PhysicalDeviceMemoryProperties(vk_struct.memoryTypeCount, vk_struct.memoryTypes, vk_struct.memoryHeapCount, vk_struct.memoryHeaps)
end

function Base.convert(T::Type{PhysicalDeviceSparseProperties}, vk_struct::VkPhysicalDeviceSparseProperties)
    PhysicalDeviceSparseProperties(vk_struct.residencyStandard2DBlockShape, vk_struct.residencyStandard2DMultisampleBlockShape, vk_struct.residencyStandard3DBlockShape,
                                   vk_struct.residencyAlignedMipSize, vk_struct.residencyNonResidentStrict)
end

function Base.convert(T::Type{PhysicalDeviceProperties}, vk_struct::VkPhysicalDeviceProperties)
    apiVersion = convert_vk(VersionNumber, vk_struct.apiVersion)    # VulkanGen.TranslateVkTypes
    driverVersion = convert_vk(VersionNumber, vk_struct.driverVersion)    # VulkanGen.TranslateVkTypes
    deviceName = convert_vk(String, vk_struct.deviceName)    # VulkanGen.TranslateVkTypes
    pipelineCacheUUID = convert_vk(String, vk_struct.pipelineCacheUUID)    # VulkanGen.TranslateVkTypes
    PhysicalDeviceProperties(apiVersion, driverVersion, vk_struct.vendorID, vk_struct.deviceID, vk_struct.deviceType, deviceName, pipelineCacheUUID, vk_struct.limits, vk_struct.sparseProperties)
end

function Base.convert(T::Type{QueueFamilyProperties}, vk_struct::VkQueueFamilyProperties)
    QueueFamilyProperties(vk_struct.queueFlags, vk_struct.queueCount, vk_struct.timestampValidBits, vk_struct.minImageTransferGranularity)
end

function Base.convert(T::Type{ExtensionProperties}, vk_struct::VkExtensionProperties)
    extensionName = convert_vk(String, vk_struct.extensionName)    # VulkanGen.TranslateVkTypes
    specVersion = convert_vk(VersionNumber, vk_struct.specVersion)    # VulkanGen.TranslateVkTypes
    ExtensionProperties(extensionName, specVersion)
end

function Base.convert(T::Type{LayerProperties}, vk_struct::VkLayerProperties)
    layerName = convert_vk(String, vk_struct.layerName)    # VulkanGen.TranslateVkTypes
    specVersion = convert_vk(VersionNumber, vk_struct.specVersion)    # VulkanGen.TranslateVkTypes
    implementationVersion = convert_vk(VersionNumber, vk_struct.implementationVersion)    # VulkanGen.TranslateVkTypes
    description = convert_vk(String, vk_struct.description)    # VulkanGen.TranslateVkTypes
    LayerProperties(layerName, specVersion, implementationVersion, description)
end

function Base.convert(T::Type{SparseImageFormatProperties}, vk_struct::VkSparseImageFormatProperties)
    SparseImageFormatProperties(vk_struct.aspectMask, vk_struct.imageGranularity, vk_struct.flags)
end

function Base.convert(T::Type{SparseImageMemoryRequirements}, vk_struct::VkSparseImageMemoryRequirements)
    SparseImageMemoryRequirements(vk_struct.formatProperties, vk_struct.imageMipTailFirstLod, vk_struct.imageMipTailSize, vk_struct.imageMipTailOffset, vk_struct.imageMipTailStride)
end

function Base.convert(T::Type{PhysicalDeviceSubgroupProperties}, vk_struct::VkPhysicalDeviceSubgroupProperties)
    PhysicalDeviceSubgroupProperties(vk_struct.sType, vk_struct.pNext, vk_struct.subgroupSize, vk_struct.supportedStages, vk_struct.supportedOperations, vk_struct.quadOperationsInAllStages)
end

function Base.convert(T::Type{PhysicalDeviceGroupProperties}, vk_struct::VkPhysicalDeviceGroupProperties)
    PhysicalDeviceGroupProperties(vk_struct.sType, vk_struct.pNext, vk_struct.physicalDeviceCount, vk_struct.physicalDevices, vk_struct.subsetAllocation)
end

function Base.convert(T::Type{SparseImageMemoryRequirements2}, vk_struct::VkSparseImageMemoryRequirements2)
    SparseImageMemoryRequirements2(vk_struct.sType, vk_struct.pNext, vk_struct.memoryRequirements)
end

function Base.convert(T::Type{PhysicalDeviceProperties2}, vk_struct::VkPhysicalDeviceProperties2)
    PhysicalDeviceProperties2(vk_struct.sType, vk_struct.pNext, vk_struct.properties)
end

function Base.convert(T::Type{FormatProperties2}, vk_struct::VkFormatProperties2)
    FormatProperties2(vk_struct.sType, vk_struct.pNext, vk_struct.formatProperties)
end

function Base.convert(T::Type{ImageFormatProperties2}, vk_struct::VkImageFormatProperties2)
    ImageFormatProperties2(vk_struct.sType, vk_struct.pNext, vk_struct.imageFormatProperties)
end

function Base.convert(T::Type{QueueFamilyProperties2}, vk_struct::VkQueueFamilyProperties2)
    QueueFamilyProperties2(vk_struct.sType, vk_struct.pNext, vk_struct.queueFamilyProperties)
end

function Base.convert(T::Type{PhysicalDeviceMemoryProperties2}, vk_struct::VkPhysicalDeviceMemoryProperties2)
    PhysicalDeviceMemoryProperties2(vk_struct.sType, vk_struct.pNext, vk_struct.memoryProperties)
end

function Base.convert(T::Type{SparseImageFormatProperties2}, vk_struct::VkSparseImageFormatProperties2)
    SparseImageFormatProperties2(vk_struct.sType, vk_struct.pNext, vk_struct.properties)
end

function Base.convert(T::Type{PhysicalDevicePointClippingProperties}, vk_struct::VkPhysicalDevicePointClippingProperties)
    PhysicalDevicePointClippingProperties(vk_struct.sType, vk_struct.pNext, vk_struct.pointClippingBehavior)
end

function Base.convert(T::Type{PhysicalDeviceMultiviewProperties}, vk_struct::VkPhysicalDeviceMultiviewProperties)
    PhysicalDeviceMultiviewProperties(vk_struct.sType, vk_struct.pNext, vk_struct.maxMultiviewViewCount, vk_struct.maxMultiviewInstanceIndex)
end

function Base.convert(T::Type{PhysicalDeviceProtectedMemoryProperties}, vk_struct::VkPhysicalDeviceProtectedMemoryProperties)
    PhysicalDeviceProtectedMemoryProperties(vk_struct.sType, vk_struct.pNext, vk_struct.protectedNoFault)
end

function Base.convert(T::Type{SamplerYcbcrConversionImageFormatProperties}, vk_struct::VkSamplerYcbcrConversionImageFormatProperties)
    SamplerYcbcrConversionImageFormatProperties(vk_struct.sType, vk_struct.pNext, vk_struct.combinedImageSamplerDescriptorCount)
end

function Base.convert(T::Type{ExternalMemoryProperties}, vk_struct::VkExternalMemoryProperties)
    ExternalMemoryProperties(vk_struct.externalMemoryFeatures, vk_struct.exportFromImportedHandleTypes, vk_struct.compatibleHandleTypes)
end

function Base.convert(T::Type{ExternalImageFormatProperties}, vk_struct::VkExternalImageFormatProperties)
    ExternalImageFormatProperties(vk_struct.sType, vk_struct.pNext, vk_struct.externalMemoryProperties)
end

function Base.convert(T::Type{ExternalBufferProperties}, vk_struct::VkExternalBufferProperties)
    ExternalBufferProperties(vk_struct.sType, vk_struct.pNext, vk_struct.externalMemoryProperties)
end

function Base.convert(T::Type{PhysicalDeviceIDProperties}, vk_struct::VkPhysicalDeviceIDProperties)
    deviceUUID = convert_vk(String, vk_struct.deviceUUID)    # VulkanGen.TranslateVkTypes
    driverUUID = convert_vk(String, vk_struct.driverUUID)    # VulkanGen.TranslateVkTypes
    deviceLUID = convert_vk(String, vk_struct.deviceLUID)    # VulkanGen.TranslateVkTypes
    PhysicalDeviceIDProperties(vk_struct.sType, vk_struct.pNext, deviceUUID, driverUUID, deviceLUID, vk_struct.deviceNodeMask, vk_struct.deviceLUIDValid)
end

function Base.convert(T::Type{ExternalFenceProperties}, vk_struct::VkExternalFenceProperties)
    ExternalFenceProperties(vk_struct.sType, vk_struct.pNext, vk_struct.exportFromImportedHandleTypes, vk_struct.compatibleHandleTypes, vk_struct.externalFenceFeatures)
end

function Base.convert(T::Type{ExternalSemaphoreProperties}, vk_struct::VkExternalSemaphoreProperties)
    ExternalSemaphoreProperties(vk_struct.sType, vk_struct.pNext, vk_struct.exportFromImportedHandleTypes, vk_struct.compatibleHandleTypes, vk_struct.externalSemaphoreFeatures)
end

function Base.convert(T::Type{PhysicalDeviceMaintenance3Properties}, vk_struct::VkPhysicalDeviceMaintenance3Properties)
    PhysicalDeviceMaintenance3Properties(vk_struct.sType, vk_struct.pNext, vk_struct.maxPerSetDescriptors, vk_struct.maxMemoryAllocationSize)
end

function Base.convert(T::Type{PhysicalDeviceVulkan11Properties}, vk_struct::VkPhysicalDeviceVulkan11Properties)
    deviceUUID = convert_vk(String, vk_struct.deviceUUID)    # VulkanGen.TranslateVkTypes
    driverUUID = convert_vk(String, vk_struct.driverUUID)    # VulkanGen.TranslateVkTypes
    deviceLUID = convert_vk(String, vk_struct.deviceLUID)    # VulkanGen.TranslateVkTypes
    PhysicalDeviceVulkan11Properties(vk_struct.sType, vk_struct.pNext, deviceUUID, driverUUID, deviceLUID, vk_struct.deviceNodeMask, vk_struct.deviceLUIDValid, vk_struct.subgroupSize,
                                     vk_struct.subgroupSupportedStages, vk_struct.subgroupSupportedOperations, vk_struct.subgroupQuadOperationsInAllStages, vk_struct.pointClippingBehavior,
                                     vk_struct.maxMultiviewViewCount, vk_struct.maxMultiviewInstanceIndex, vk_struct.protectedNoFault, vk_struct.maxPerSetDescriptors,
                                     vk_struct.maxMemoryAllocationSize)
end

function Base.convert(T::Type{PhysicalDeviceVulkan12Properties}, vk_struct::VkPhysicalDeviceVulkan12Properties)
    driverName = convert_vk(String, vk_struct.driverName)    # VulkanGen.TranslateVkTypes
    driverInfo = convert_vk(String, vk_struct.driverInfo)    # VulkanGen.TranslateVkTypes
    PhysicalDeviceVulkan12Properties(vk_struct.sType, vk_struct.pNext, vk_struct.driverID, driverName, driverInfo, vk_struct.conformanceVersion, vk_struct.denormBehaviorIndependence,
                                     vk_struct.roundingModeIndependence, vk_struct.shaderSignedZeroInfNanPreserveFloat16, vk_struct.shaderSignedZeroInfNanPreserveFloat32,
                                     vk_struct.shaderSignedZeroInfNanPreserveFloat64, vk_struct.shaderDenormPreserveFloat16, vk_struct.shaderDenormPreserveFloat32,
                                     vk_struct.shaderDenormPreserveFloat64, vk_struct.shaderDenormFlushToZeroFloat16, vk_struct.shaderDenormFlushToZeroFloat32,
                                     vk_struct.shaderDenormFlushToZeroFloat64, vk_struct.shaderRoundingModeRTEFloat16, vk_struct.shaderRoundingModeRTEFloat32, vk_struct.shaderRoundingModeRTEFloat64,
                                     vk_struct.shaderRoundingModeRTZFloat16, vk_struct.shaderRoundingModeRTZFloat32, vk_struct.shaderRoundingModeRTZFloat64,
                                     vk_struct.maxUpdateAfterBindDescriptorsInAllPools, vk_struct.shaderUniformBufferArrayNonUniformIndexingNative,
                                     vk_struct.shaderSampledImageArrayNonUniformIndexingNative, vk_struct.shaderStorageBufferArrayNonUniformIndexingNative,
                                     vk_struct.shaderStorageImageArrayNonUniformIndexingNative, vk_struct.shaderInputAttachmentArrayNonUniformIndexingNative,
                                     vk_struct.robustBufferAccessUpdateAfterBind, vk_struct.quadDivergentImplicitLod, vk_struct.maxPerStageDescriptorUpdateAfterBindSamplers,
                                     vk_struct.maxPerStageDescriptorUpdateAfterBindUniformBuffers, vk_struct.maxPerStageDescriptorUpdateAfterBindStorageBuffers,
                                     vk_struct.maxPerStageDescriptorUpdateAfterBindSampledImages, vk_struct.maxPerStageDescriptorUpdateAfterBindStorageImages,
                                     vk_struct.maxPerStageDescriptorUpdateAfterBindInputAttachments, vk_struct.maxPerStageUpdateAfterBindResources, vk_struct.maxDescriptorSetUpdateAfterBindSamplers,
                                     vk_struct.maxDescriptorSetUpdateAfterBindUniformBuffers, vk_struct.maxDescriptorSetUpdateAfterBindUniformBuffersDynamic,
                                     vk_struct.maxDescriptorSetUpdateAfterBindStorageBuffers, vk_struct.maxDescriptorSetUpdateAfterBindStorageBuffersDynamic,
                                     vk_struct.maxDescriptorSetUpdateAfterBindSampledImages, vk_struct.maxDescriptorSetUpdateAfterBindStorageImages,
                                     vk_struct.maxDescriptorSetUpdateAfterBindInputAttachments, vk_struct.supportedDepthResolveModes, vk_struct.supportedStencilResolveModes,
                                     vk_struct.independentResolveNone, vk_struct.independentResolve, vk_struct.filterMinmaxSingleComponentFormats, vk_struct.filterMinmaxImageComponentMapping,
                                     vk_struct.maxTimelineSemaphoreValueDifference, vk_struct.framebufferIntegerColorSampleCounts)
end

function Base.convert(T::Type{PhysicalDeviceDriverProperties}, vk_struct::VkPhysicalDeviceDriverProperties)
    driverName = convert_vk(String, vk_struct.driverName)    # VulkanGen.TranslateVkTypes
    driverInfo = convert_vk(String, vk_struct.driverInfo)    # VulkanGen.TranslateVkTypes
    PhysicalDeviceDriverProperties(vk_struct.sType, vk_struct.pNext, vk_struct.driverID, driverName, driverInfo, vk_struct.conformanceVersion)
end

function Base.convert(T::Type{PhysicalDeviceFloatControlsProperties}, vk_struct::VkPhysicalDeviceFloatControlsProperties)
    PhysicalDeviceFloatControlsProperties(vk_struct.sType, vk_struct.pNext, vk_struct.denormBehaviorIndependence, vk_struct.roundingModeIndependence, vk_struct.shaderSignedZeroInfNanPreserveFloat16,
                                          vk_struct.shaderSignedZeroInfNanPreserveFloat32, vk_struct.shaderSignedZeroInfNanPreserveFloat64, vk_struct.shaderDenormPreserveFloat16,
                                          vk_struct.shaderDenormPreserveFloat32, vk_struct.shaderDenormPreserveFloat64, vk_struct.shaderDenormFlushToZeroFloat16,
                                          vk_struct.shaderDenormFlushToZeroFloat32, vk_struct.shaderDenormFlushToZeroFloat64, vk_struct.shaderRoundingModeRTEFloat16,
                                          vk_struct.shaderRoundingModeRTEFloat32, vk_struct.shaderRoundingModeRTEFloat64, vk_struct.shaderRoundingModeRTZFloat16,
                                          vk_struct.shaderRoundingModeRTZFloat32, vk_struct.shaderRoundingModeRTZFloat64)
end

function Base.convert(T::Type{PhysicalDeviceDescriptorIndexingProperties}, vk_struct::VkPhysicalDeviceDescriptorIndexingProperties)
    PhysicalDeviceDescriptorIndexingProperties(vk_struct.sType, vk_struct.pNext, vk_struct.maxUpdateAfterBindDescriptorsInAllPools, vk_struct.shaderUniformBufferArrayNonUniformIndexingNative,
                                               vk_struct.shaderSampledImageArrayNonUniformIndexingNative, vk_struct.shaderStorageBufferArrayNonUniformIndexingNative,
                                               vk_struct.shaderStorageImageArrayNonUniformIndexingNative, vk_struct.shaderInputAttachmentArrayNonUniformIndexingNative,
                                               vk_struct.robustBufferAccessUpdateAfterBind, vk_struct.quadDivergentImplicitLod, vk_struct.maxPerStageDescriptorUpdateAfterBindSamplers,
                                               vk_struct.maxPerStageDescriptorUpdateAfterBindUniformBuffers, vk_struct.maxPerStageDescriptorUpdateAfterBindStorageBuffers,
                                               vk_struct.maxPerStageDescriptorUpdateAfterBindSampledImages, vk_struct.maxPerStageDescriptorUpdateAfterBindStorageImages,
                                               vk_struct.maxPerStageDescriptorUpdateAfterBindInputAttachments, vk_struct.maxPerStageUpdateAfterBindResources,
                                               vk_struct.maxDescriptorSetUpdateAfterBindSamplers, vk_struct.maxDescriptorSetUpdateAfterBindUniformBuffers,
                                               vk_struct.maxDescriptorSetUpdateAfterBindUniformBuffersDynamic, vk_struct.maxDescriptorSetUpdateAfterBindStorageBuffers,
                                               vk_struct.maxDescriptorSetUpdateAfterBindStorageBuffersDynamic, vk_struct.maxDescriptorSetUpdateAfterBindSampledImages,
                                               vk_struct.maxDescriptorSetUpdateAfterBindStorageImages, vk_struct.maxDescriptorSetUpdateAfterBindInputAttachments)
end

function Base.convert(T::Type{PhysicalDeviceDepthStencilResolveProperties}, vk_struct::VkPhysicalDeviceDepthStencilResolveProperties)
    PhysicalDeviceDepthStencilResolveProperties(vk_struct.sType, vk_struct.pNext, vk_struct.supportedDepthResolveModes, vk_struct.supportedStencilResolveModes, vk_struct.independentResolveNone,
                                                vk_struct.independentResolve)
end

function Base.convert(T::Type{PhysicalDeviceSamplerFilterMinmaxProperties}, vk_struct::VkPhysicalDeviceSamplerFilterMinmaxProperties)
    PhysicalDeviceSamplerFilterMinmaxProperties(vk_struct.sType, vk_struct.pNext, vk_struct.filterMinmaxSingleComponentFormats, vk_struct.filterMinmaxImageComponentMapping)
end

function Base.convert(T::Type{PhysicalDeviceTimelineSemaphoreProperties}, vk_struct::VkPhysicalDeviceTimelineSemaphoreProperties)
    PhysicalDeviceTimelineSemaphoreProperties(vk_struct.sType, vk_struct.pNext, vk_struct.maxTimelineSemaphoreValueDifference)
end

function Base.convert(T::Type{SurfaceFormatKHR}, vk_struct::VkSurfaceFormatKHR)
    SurfaceFormatKHR(vk_struct.format, vk_struct.colorSpace)
end

function Base.convert(T::Type{DisplayModePropertiesKHR}, vk_struct::VkDisplayModePropertiesKHR)
    DisplayModePropertiesKHR(vk_struct.displayMode, vk_struct.parameters)
end

function Base.convert(T::Type{DisplayPlanePropertiesKHR}, vk_struct::VkDisplayPlanePropertiesKHR)
    DisplayPlanePropertiesKHR(vk_struct.currentDisplay, vk_struct.currentStackIndex)
end

function Base.convert(T::Type{DisplayPropertiesKHR}, vk_struct::VkDisplayPropertiesKHR)
    DisplayPropertiesKHR(vk_struct.display, vk_struct.displayName, vk_struct.physicalDimensions, vk_struct.physicalResolution, vk_struct.supportedTransforms, vk_struct.planeReorderPossible,
                         vk_struct.persistentContent)
end

function Base.convert(T::Type{MemoryFdPropertiesKHR}, vk_struct::VkMemoryFdPropertiesKHR)
    MemoryFdPropertiesKHR(vk_struct.sType, vk_struct.pNext, vk_struct.memoryTypeBits)
end

function Base.convert(T::Type{PhysicalDevicePushDescriptorPropertiesKHR}, vk_struct::VkPhysicalDevicePushDescriptorPropertiesKHR)
    PhysicalDevicePushDescriptorPropertiesKHR(vk_struct.sType, vk_struct.pNext, vk_struct.maxPushDescriptors)
end

function Base.convert(T::Type{PhysicalDevicePerformanceQueryPropertiesKHR}, vk_struct::VkPhysicalDevicePerformanceQueryPropertiesKHR)
    PhysicalDevicePerformanceQueryPropertiesKHR(vk_struct.sType, vk_struct.pNext, vk_struct.allowCommandBufferQueryCopies)
end

function Base.convert(T::Type{PerformanceCounterKHR}, vk_struct::VkPerformanceCounterKHR)
    uuid = convert_vk(String, vk_struct.uuid)    # VulkanGen.TranslateVkTypes
    PerformanceCounterKHR(vk_struct.sType, vk_struct.pNext, vk_struct.unit, vk_struct.scope, vk_struct.storage, uuid)
end

function Base.convert(T::Type{SurfaceFormat2KHR}, vk_struct::VkSurfaceFormat2KHR)
    SurfaceFormat2KHR(vk_struct.sType, vk_struct.pNext, vk_struct.surfaceFormat)
end

function Base.convert(T::Type{DisplayProperties2KHR}, vk_struct::VkDisplayProperties2KHR)
    DisplayProperties2KHR(vk_struct.sType, vk_struct.pNext, vk_struct.displayProperties)
end

function Base.convert(T::Type{DisplayPlaneProperties2KHR}, vk_struct::VkDisplayPlaneProperties2KHR)
    DisplayPlaneProperties2KHR(vk_struct.sType, vk_struct.pNext, vk_struct.displayPlaneProperties)
end

function Base.convert(T::Type{DisplayModeProperties2KHR}, vk_struct::VkDisplayModeProperties2KHR)
    DisplayModeProperties2KHR(vk_struct.sType, vk_struct.pNext, vk_struct.displayModeProperties)
end

function Base.convert(T::Type{PhysicalDevicePipelineExecutablePropertiesFeaturesKHR}, vk_struct::VkPhysicalDevicePipelineExecutablePropertiesFeaturesKHR)
    PhysicalDevicePipelineExecutablePropertiesFeaturesKHR(vk_struct.sType, vk_struct.pNext, vk_struct.pipelineExecutableInfo)
end

function Base.convert(T::Type{PipelineExecutablePropertiesKHR}, vk_struct::VkPipelineExecutablePropertiesKHR)
    name = convert_vk(String, vk_struct.name)    # VulkanGen.TranslateVkTypes
    description = convert_vk(String, vk_struct.description)    # VulkanGen.TranslateVkTypes
    PipelineExecutablePropertiesKHR(vk_struct.sType, vk_struct.pNext, vk_struct.stages, name, description, vk_struct.subgroupSize)
end

function Base.convert(T::Type{PipelineExecutableStatisticKHR}, vk_struct::VkPipelineExecutableStatisticKHR)
    name = convert_vk(String, vk_struct.name)    # VulkanGen.TranslateVkTypes
    description = convert_vk(String, vk_struct.description)    # VulkanGen.TranslateVkTypes
    PipelineExecutableStatisticKHR(vk_struct.sType, vk_struct.pNext, name, description, vk_struct.format, vk_struct.value)
end

function Base.convert(T::Type{PipelineExecutableInternalRepresentationKHR}, vk_struct::VkPipelineExecutableInternalRepresentationKHR)
    name = convert_vk(String, vk_struct.name)    # VulkanGen.TranslateVkTypes
    description = convert_vk(String, vk_struct.description)    # VulkanGen.TranslateVkTypes
    PipelineExecutableInternalRepresentationKHR(vk_struct.sType, vk_struct.pNext, name, description, vk_struct.isText, vk_struct.dataSize, vk_struct.pData)
end

function Base.convert(T::Type{PhysicalDeviceTransformFeedbackPropertiesEXT}, vk_struct::VkPhysicalDeviceTransformFeedbackPropertiesEXT)
    PhysicalDeviceTransformFeedbackPropertiesEXT(vk_struct.sType, vk_struct.pNext, vk_struct.maxTransformFeedbackStreams, vk_struct.maxTransformFeedbackBuffers,
                                                 vk_struct.maxTransformFeedbackBufferSize, vk_struct.maxTransformFeedbackStreamDataSize, vk_struct.maxTransformFeedbackBufferDataSize,
                                                 vk_struct.maxTransformFeedbackBufferDataStride, vk_struct.transformFeedbackQueries, vk_struct.transformFeedbackStreamsLinesTriangles,
                                                 vk_struct.transformFeedbackRasterizationStreamSelect, vk_struct.transformFeedbackDraw)
end

function Base.convert(T::Type{ImageViewAddressPropertiesNVX}, vk_struct::VkImageViewAddressPropertiesNVX)
    ImageViewAddressPropertiesNVX(vk_struct.sType, vk_struct.pNext, vk_struct.deviceAddress, vk_struct.size)
end

function Base.convert(T::Type{TextureLODGatherFormatPropertiesAMD}, vk_struct::VkTextureLODGatherFormatPropertiesAMD)
    TextureLODGatherFormatPropertiesAMD(vk_struct.sType, vk_struct.pNext, vk_struct.supportsTextureGatherLODBiasAMD)
end

function Base.convert(T::Type{ExternalImageFormatPropertiesNV}, vk_struct::VkExternalImageFormatPropertiesNV)
    ExternalImageFormatPropertiesNV(vk_struct.imageFormatProperties, vk_struct.externalMemoryFeatures, vk_struct.exportFromImportedHandleTypes, vk_struct.compatibleHandleTypes)
end

function Base.convert(T::Type{PastPresentationTimingGOOGLE}, vk_struct::VkPastPresentationTimingGOOGLE)
    PastPresentationTimingGOOGLE(vk_struct.presentID, vk_struct.desiredPresentTime, vk_struct.actualPresentTime, vk_struct.earliestPresentTime, vk_struct.presentMargin)
end

function Base.convert(T::Type{PhysicalDeviceMultiviewPerViewAttributesPropertiesNVX}, vk_struct::VkPhysicalDeviceMultiviewPerViewAttributesPropertiesNVX)
    PhysicalDeviceMultiviewPerViewAttributesPropertiesNVX(vk_struct.sType, vk_struct.pNext, vk_struct.perViewPositionAllComponents)
end

function Base.convert(T::Type{PhysicalDeviceDiscardRectanglePropertiesEXT}, vk_struct::VkPhysicalDeviceDiscardRectanglePropertiesEXT)
    PhysicalDeviceDiscardRectanglePropertiesEXT(vk_struct.sType, vk_struct.pNext, vk_struct.maxDiscardRectangles)
end

function Base.convert(T::Type{PhysicalDeviceConservativeRasterizationPropertiesEXT}, vk_struct::VkPhysicalDeviceConservativeRasterizationPropertiesEXT)
    PhysicalDeviceConservativeRasterizationPropertiesEXT(vk_struct.sType, vk_struct.pNext, vk_struct.primitiveOverestimationSize, vk_struct.maxExtraPrimitiveOverestimationSize,
                                                         vk_struct.extraPrimitiveOverestimationSizeGranularity, vk_struct.primitiveUnderestimation, vk_struct.conservativePointAndLineRasterization,
                                                         vk_struct.degenerateTrianglesRasterized, vk_struct.degenerateLinesRasterized, vk_struct.fullyCoveredFragmentShaderInputVariable,
                                                         vk_struct.conservativeRasterizationPostDepthCoverage)
end

function Base.convert(T::Type{PhysicalDeviceInlineUniformBlockPropertiesEXT}, vk_struct::VkPhysicalDeviceInlineUniformBlockPropertiesEXT)
    PhysicalDeviceInlineUniformBlockPropertiesEXT(vk_struct.sType, vk_struct.pNext, vk_struct.maxInlineUniformBlockSize, vk_struct.maxPerStageDescriptorInlineUniformBlocks,
                                                  vk_struct.maxPerStageDescriptorUpdateAfterBindInlineUniformBlocks, vk_struct.maxDescriptorSetInlineUniformBlocks,
                                                  vk_struct.maxDescriptorSetUpdateAfterBindInlineUniformBlocks)
end

function Base.convert(T::Type{PhysicalDeviceSampleLocationsPropertiesEXT}, vk_struct::VkPhysicalDeviceSampleLocationsPropertiesEXT)
    PhysicalDeviceSampleLocationsPropertiesEXT(vk_struct.sType, vk_struct.pNext, vk_struct.sampleLocationSampleCounts, vk_struct.maxSampleLocationGridSize, vk_struct.sampleLocationCoordinateRange,
                                               vk_struct.sampleLocationSubPixelBits, vk_struct.variableSampleLocations)
end

function Base.convert(T::Type{MultisamplePropertiesEXT}, vk_struct::VkMultisamplePropertiesEXT)
    MultisamplePropertiesEXT(vk_struct.sType, vk_struct.pNext, vk_struct.maxSampleLocationGridSize)
end

function Base.convert(T::Type{PhysicalDeviceBlendOperationAdvancedPropertiesEXT}, vk_struct::VkPhysicalDeviceBlendOperationAdvancedPropertiesEXT)
    PhysicalDeviceBlendOperationAdvancedPropertiesEXT(vk_struct.sType, vk_struct.pNext, vk_struct.advancedBlendMaxColorAttachments, vk_struct.advancedBlendIndependentBlend,
                                                      vk_struct.advancedBlendNonPremultipliedSrcColor, vk_struct.advancedBlendNonPremultipliedDstColor, vk_struct.advancedBlendCorrelatedOverlap,
                                                      vk_struct.advancedBlendAllOperations)
end

function Base.convert(T::Type{PhysicalDeviceShaderSMBuiltinsPropertiesNV}, vk_struct::VkPhysicalDeviceShaderSMBuiltinsPropertiesNV)
    PhysicalDeviceShaderSMBuiltinsPropertiesNV(vk_struct.sType, vk_struct.pNext, vk_struct.shaderSMCount, vk_struct.shaderWarpsPerSM)
end

function Base.convert(T::Type{DrmFormatModifierPropertiesEXT}, vk_struct::VkDrmFormatModifierPropertiesEXT)
    DrmFormatModifierPropertiesEXT(vk_struct.drmFormatModifier, vk_struct.drmFormatModifierPlaneCount, vk_struct.drmFormatModifierTilingFeatures)
end

function Base.convert(T::Type{DrmFormatModifierPropertiesListEXT}, vk_struct::VkDrmFormatModifierPropertiesListEXT)
    DrmFormatModifierPropertiesListEXT(vk_struct.sType, vk_struct.pNext, vk_struct.drmFormatModifierCount, vk_struct.pDrmFormatModifierProperties)
end

function Base.convert(T::Type{ImageDrmFormatModifierPropertiesEXT}, vk_struct::VkImageDrmFormatModifierPropertiesEXT)
    ImageDrmFormatModifierPropertiesEXT(vk_struct.sType, vk_struct.pNext, vk_struct.drmFormatModifier)
end

function Base.convert(T::Type{PhysicalDeviceShadingRateImagePropertiesNV}, vk_struct::VkPhysicalDeviceShadingRateImagePropertiesNV)
    PhysicalDeviceShadingRateImagePropertiesNV(vk_struct.sType, vk_struct.pNext, vk_struct.shadingRateTexelSize, vk_struct.shadingRatePaletteSize, vk_struct.shadingRateMaxCoarseSamples)
end

function Base.convert(T::Type{PhysicalDeviceRayTracingPropertiesNV}, vk_struct::VkPhysicalDeviceRayTracingPropertiesNV)
    PhysicalDeviceRayTracingPropertiesNV(vk_struct.sType, vk_struct.pNext, vk_struct.shaderGroupHandleSize, vk_struct.maxRecursionDepth, vk_struct.maxShaderGroupStride,
                                         vk_struct.shaderGroupBaseAlignment, vk_struct.maxGeometryCount, vk_struct.maxInstanceCount, vk_struct.maxTriangleCount,
                                         vk_struct.maxDescriptorSetAccelerationStructures)
end

function Base.convert(T::Type{FilterCubicImageViewImageFormatPropertiesEXT}, vk_struct::VkFilterCubicImageViewImageFormatPropertiesEXT)
    FilterCubicImageViewImageFormatPropertiesEXT(vk_struct.sType, vk_struct.pNext, vk_struct.filterCubic, vk_struct.filterCubicMinmax)
end

function Base.convert(T::Type{MemoryHostPointerPropertiesEXT}, vk_struct::VkMemoryHostPointerPropertiesEXT)
    MemoryHostPointerPropertiesEXT(vk_struct.sType, vk_struct.pNext, vk_struct.memoryTypeBits)
end

function Base.convert(T::Type{PhysicalDeviceExternalMemoryHostPropertiesEXT}, vk_struct::VkPhysicalDeviceExternalMemoryHostPropertiesEXT)
    PhysicalDeviceExternalMemoryHostPropertiesEXT(vk_struct.sType, vk_struct.pNext, vk_struct.minImportedHostPointerAlignment)
end

function Base.convert(T::Type{PhysicalDeviceShaderCorePropertiesAMD}, vk_struct::VkPhysicalDeviceShaderCorePropertiesAMD)
    PhysicalDeviceShaderCorePropertiesAMD(vk_struct.sType, vk_struct.pNext, vk_struct.shaderEngineCount, vk_struct.shaderArraysPerEngineCount, vk_struct.computeUnitsPerShaderArray,
                                          vk_struct.simdPerComputeUnit, vk_struct.wavefrontsPerSimd, vk_struct.wavefrontSize, vk_struct.sgprsPerSimd, vk_struct.minSgprAllocation,
                                          vk_struct.maxSgprAllocation, vk_struct.sgprAllocationGranularity, vk_struct.vgprsPerSimd, vk_struct.minVgprAllocation, vk_struct.maxVgprAllocation,
                                          vk_struct.vgprAllocationGranularity)
end

function Base.convert(T::Type{PhysicalDeviceVertexAttributeDivisorPropertiesEXT}, vk_struct::VkPhysicalDeviceVertexAttributeDivisorPropertiesEXT)
    PhysicalDeviceVertexAttributeDivisorPropertiesEXT(vk_struct.sType, vk_struct.pNext, vk_struct.maxVertexAttribDivisor)
end

function Base.convert(T::Type{PhysicalDeviceMeshShaderPropertiesNV}, vk_struct::VkPhysicalDeviceMeshShaderPropertiesNV)
    PhysicalDeviceMeshShaderPropertiesNV(vk_struct.sType, vk_struct.pNext, vk_struct.maxDrawMeshTasksCount, vk_struct.maxTaskWorkGroupInvocations, vk_struct.maxTaskWorkGroupSize,
                                         vk_struct.maxTaskTotalMemorySize, vk_struct.maxTaskOutputCount, vk_struct.maxMeshWorkGroupInvocations, vk_struct.maxMeshWorkGroupSize,
                                         vk_struct.maxMeshTotalMemorySize, vk_struct.maxMeshOutputVertices, vk_struct.maxMeshOutputPrimitives, vk_struct.maxMeshMultiviewViewCount,
                                         vk_struct.meshOutputPerVertexGranularity, vk_struct.meshOutputPerPrimitiveGranularity)
end

function Base.convert(T::Type{QueueFamilyCheckpointPropertiesNV}, vk_struct::VkQueueFamilyCheckpointPropertiesNV)
    QueueFamilyCheckpointPropertiesNV(vk_struct.sType, vk_struct.pNext, vk_struct.checkpointExecutionStageMask)
end

function Base.convert(T::Type{CheckpointDataNV}, vk_struct::VkCheckpointDataNV)
    CheckpointDataNV(vk_struct.sType, vk_struct.pNext, vk_struct.stage, vk_struct.pCheckpointMarker)
end

function Base.convert(T::Type{PhysicalDevicePCIBusInfoPropertiesEXT}, vk_struct::VkPhysicalDevicePCIBusInfoPropertiesEXT)
    PhysicalDevicePCIBusInfoPropertiesEXT(vk_struct.sType, vk_struct.pNext, vk_struct.pciDomain, vk_struct.pciBus, vk_struct.pciDevice, vk_struct.pciFunction)
end

function Base.convert(T::Type{PhysicalDeviceFragmentDensityMapPropertiesEXT}, vk_struct::VkPhysicalDeviceFragmentDensityMapPropertiesEXT)
    PhysicalDeviceFragmentDensityMapPropertiesEXT(vk_struct.sType, vk_struct.pNext, vk_struct.minFragmentDensityTexelSize, vk_struct.maxFragmentDensityTexelSize, vk_struct.fragmentDensityInvocations)
end

function Base.convert(T::Type{PhysicalDeviceSubgroupSizeControlPropertiesEXT}, vk_struct::VkPhysicalDeviceSubgroupSizeControlPropertiesEXT)
    PhysicalDeviceSubgroupSizeControlPropertiesEXT(vk_struct.sType, vk_struct.pNext, vk_struct.minSubgroupSize, vk_struct.maxSubgroupSize, vk_struct.maxComputeWorkgroupSubgroups,
                                                   vk_struct.requiredSubgroupSizeStages)
end

function Base.convert(T::Type{PhysicalDeviceShaderCoreProperties2AMD}, vk_struct::VkPhysicalDeviceShaderCoreProperties2AMD)
    PhysicalDeviceShaderCoreProperties2AMD(vk_struct.sType, vk_struct.pNext, vk_struct.shaderCoreFeatures, vk_struct.activeComputeUnitCount)
end

function Base.convert(T::Type{PhysicalDeviceMemoryBudgetPropertiesEXT}, vk_struct::VkPhysicalDeviceMemoryBudgetPropertiesEXT)
    PhysicalDeviceMemoryBudgetPropertiesEXT(vk_struct.sType, vk_struct.pNext, vk_struct.heapBudget, vk_struct.heapUsage)
end

function Base.convert(T::Type{PhysicalDeviceToolPropertiesEXT}, vk_struct::VkPhysicalDeviceToolPropertiesEXT)
    name = convert_vk(String, vk_struct.name)    # VulkanGen.TranslateVkTypes
    version = convert_vk(String, vk_struct.version)    # VulkanGen.TranslateVkTypes
    description = convert_vk(String, vk_struct.description)    # VulkanGen.TranslateVkTypes
    layer = convert_vk(String, vk_struct.layer)    # VulkanGen.TranslateVkTypes
    PhysicalDeviceToolPropertiesEXT(vk_struct.sType, vk_struct.pNext, name, version, vk_struct.purposes, description, layer)
end

function Base.convert(T::Type{CooperativeMatrixPropertiesNV}, vk_struct::VkCooperativeMatrixPropertiesNV)
    CooperativeMatrixPropertiesNV(vk_struct.sType, vk_struct.pNext, vk_struct.MSize, vk_struct.NSize, vk_struct.KSize, vk_struct.AType, vk_struct.BType, vk_struct.CType, vk_struct.DType,
                                  vk_struct.scope)
end

function Base.convert(T::Type{PhysicalDeviceCooperativeMatrixPropertiesNV}, vk_struct::VkPhysicalDeviceCooperativeMatrixPropertiesNV)
    PhysicalDeviceCooperativeMatrixPropertiesNV(vk_struct.sType, vk_struct.pNext, vk_struct.cooperativeMatrixSupportedStages)
end

function Base.convert(T::Type{FramebufferMixedSamplesCombinationNV}, vk_struct::VkFramebufferMixedSamplesCombinationNV)
    FramebufferMixedSamplesCombinationNV(vk_struct.sType, vk_struct.pNext, vk_struct.coverageReductionMode, vk_struct.rasterizationSamples, vk_struct.depthStencilSamples, vk_struct.colorSamples)
end

function Base.convert(T::Type{PhysicalDeviceLineRasterizationPropertiesEXT}, vk_struct::VkPhysicalDeviceLineRasterizationPropertiesEXT)
    PhysicalDeviceLineRasterizationPropertiesEXT(vk_struct.sType, vk_struct.pNext, vk_struct.lineSubPixelPrecisionBits)
end

function Base.convert(T::Type{PhysicalDeviceDeviceGeneratedCommandsPropertiesNV}, vk_struct::VkPhysicalDeviceDeviceGeneratedCommandsPropertiesNV)
    PhysicalDeviceDeviceGeneratedCommandsPropertiesNV(vk_struct.sType, vk_struct.pNext, vk_struct.maxGraphicsShaderGroupCount, vk_struct.maxIndirectSequenceCount,
                                                      vk_struct.maxIndirectCommandsTokenCount, vk_struct.maxIndirectCommandsStreamCount, vk_struct.maxIndirectCommandsTokenOffset,
                                                      vk_struct.maxIndirectCommandsStreamStride, vk_struct.minSequencesCountBufferOffsetAlignment, vk_struct.minSequencesIndexBufferOffsetAlignment,
                                                      vk_struct.minIndirectCommandsBufferOffsetAlignment)
end

function Base.convert(T::Type{PhysicalDeviceTexelBufferAlignmentPropertiesEXT}, vk_struct::VkPhysicalDeviceTexelBufferAlignmentPropertiesEXT)
    PhysicalDeviceTexelBufferAlignmentPropertiesEXT(vk_struct.sType, vk_struct.pNext, vk_struct.storageTexelBufferOffsetAlignmentBytes, vk_struct.storageTexelBufferOffsetSingleTexelAlignment,
                                                    vk_struct.uniformTexelBufferOffsetAlignmentBytes, vk_struct.uniformTexelBufferOffsetSingleTexelAlignment)
end

function Base.convert(T::Type{PhysicalDeviceRobustness2PropertiesEXT}, vk_struct::VkPhysicalDeviceRobustness2PropertiesEXT)
    PhysicalDeviceRobustness2PropertiesEXT(vk_struct.sType, vk_struct.pNext, vk_struct.robustStorageBufferAccessSizeAlignment, vk_struct.robustUniformBufferAccessSizeAlignment)
end

function Base.convert(T::Type{PhysicalDeviceCustomBorderColorPropertiesEXT}, vk_struct::VkPhysicalDeviceCustomBorderColorPropertiesEXT)
    PhysicalDeviceCustomBorderColorPropertiesEXT(vk_struct.sType, vk_struct.pNext, vk_struct.maxCustomBorderColorSamplers)
end

function Base.convert(T::Type{PhysicalDeviceFragmentDensityMap2PropertiesEXT}, vk_struct::VkPhysicalDeviceFragmentDensityMap2PropertiesEXT)
    PhysicalDeviceFragmentDensityMap2PropertiesEXT(vk_struct.sType, vk_struct.pNext, vk_struct.subsampledLoads, vk_struct.subsampledCoarseReconstructionEarlyAccess, vk_struct.maxSubsampledArrayLayers,
                                                   vk_struct.maxDescriptorSetSubsampledSamplers)
end

function Base.convert(T::Type{PhysicalDeviceRayTracingPropertiesKHR}, vk_struct::VkPhysicalDeviceRayTracingPropertiesKHR)
    PhysicalDeviceRayTracingPropertiesKHR(vk_struct.sType, vk_struct.pNext, vk_struct.shaderGroupHandleSize, vk_struct.maxRecursionDepth, vk_struct.maxShaderGroupStride,
                                          vk_struct.shaderGroupBaseAlignment, vk_struct.maxGeometryCount, vk_struct.maxInstanceCount, vk_struct.maxPrimitiveCount,
                                          vk_struct.maxDescriptorSetAccelerationStructures, vk_struct.shaderGroupHandleCaptureReplaySize)
end

Base.convert(T::Type{Buffer}, vk_handle::VkBuffer) = Buffer(vk_handle)
Base.convert(T::Type{Image}, vk_handle::VkImage) = Image(vk_handle)
Base.convert(T::Type{Instance}, vk_handle::VkInstance) = Instance(vk_handle)
Base.convert(T::Type{PhysicalDevice}, vk_handle::VkPhysicalDevice) = PhysicalDevice(vk_handle)
Base.convert(T::Type{Device}, vk_handle::VkDevice) = Device(vk_handle)
Base.convert(T::Type{Queue}, vk_handle::VkQueue) = Queue(vk_handle)
Base.convert(T::Type{Semaphore}, vk_handle::VkSemaphore) = Semaphore(vk_handle)
Base.convert(T::Type{CommandBuffer}, vk_handle::VkCommandBuffer) = CommandBuffer(vk_handle)
Base.convert(T::Type{Fence}, vk_handle::VkFence) = Fence(vk_handle)
Base.convert(T::Type{DeviceMemory}, vk_handle::VkDeviceMemory) = DeviceMemory(vk_handle)
Base.convert(T::Type{Event}, vk_handle::VkEvent) = Event(vk_handle)
Base.convert(T::Type{QueryPool}, vk_handle::VkQueryPool) = QueryPool(vk_handle)
Base.convert(T::Type{BufferView}, vk_handle::VkBufferView) = BufferView(vk_handle)
Base.convert(T::Type{ImageView}, vk_handle::VkImageView) = ImageView(vk_handle)
Base.convert(T::Type{ShaderModule}, vk_handle::VkShaderModule) = ShaderModule(vk_handle)
Base.convert(T::Type{PipelineCache}, vk_handle::VkPipelineCache) = PipelineCache(vk_handle)
Base.convert(T::Type{PipelineLayout}, vk_handle::VkPipelineLayout) = PipelineLayout(vk_handle)
Base.convert(T::Type{Pipeline}, vk_handle::VkPipeline) = Pipeline(vk_handle)
Base.convert(T::Type{RenderPass}, vk_handle::VkRenderPass) = RenderPass(vk_handle)
Base.convert(T::Type{DescriptorSetLayout}, vk_handle::VkDescriptorSetLayout) = DescriptorSetLayout(vk_handle)
Base.convert(T::Type{Sampler}, vk_handle::VkSampler) = Sampler(vk_handle)
Base.convert(T::Type{DescriptorSet}, vk_handle::VkDescriptorSet) = DescriptorSet(vk_handle)
Base.convert(T::Type{DescriptorPool}, vk_handle::VkDescriptorPool) = DescriptorPool(vk_handle)
Base.convert(T::Type{Framebuffer}, vk_handle::VkFramebuffer) = Framebuffer(vk_handle)
Base.convert(T::Type{CommandPool}, vk_handle::VkCommandPool) = CommandPool(vk_handle)
Base.convert(T::Type{SamplerYcbcrConversion}, vk_handle::VkSamplerYcbcrConversion) = SamplerYcbcrConversion(vk_handle)
Base.convert(T::Type{DescriptorUpdateTemplate}, vk_handle::VkDescriptorUpdateTemplate) = DescriptorUpdateTemplate(vk_handle)
Base.convert(T::Type{SurfaceKHR}, vk_handle::VkSurfaceKHR) = SurfaceKHR(vk_handle)
Base.convert(T::Type{DisplayKHR}, vk_handle::VkDisplayKHR) = DisplayKHR(vk_handle)
Base.convert(T::Type{DisplayModeKHR}, vk_handle::VkDisplayModeKHR) = DisplayModeKHR(vk_handle)
Base.convert(T::Type{DescriptorUpdateTemplateKHR}, vk_handle::VkDescriptorUpdateTemplateKHR) = DescriptorUpdateTemplateKHR(vk_handle)
Base.convert(T::Type{SamplerYcbcrConversionKHR}, vk_handle::VkSamplerYcbcrConversionKHR) = SamplerYcbcrConversionKHR(vk_handle)
Base.convert(T::Type{DebugReportCallbackEXT}, vk_handle::VkDebugReportCallbackEXT) = DebugReportCallbackEXT(vk_handle)
Base.convert(T::Type{DebugUtilsMessengerEXT}, vk_handle::VkDebugUtilsMessengerEXT) = DebugUtilsMessengerEXT(vk_handle)
Base.convert(T::Type{ValidationCacheEXT}, vk_handle::VkValidationCacheEXT) = ValidationCacheEXT(vk_handle)
Base.convert(T::Type{AccelerationStructureKHR}, vk_handle::VkAccelerationStructureKHR) = AccelerationStructureKHR(vk_handle)
Base.convert(T::Type{AccelerationStructureNV}, vk_handle::VkAccelerationStructureNV) = AccelerationStructureNV(vk_handle)
Base.convert(T::Type{PerformanceConfigurationINTEL}, vk_handle::VkPerformanceConfigurationINTEL) = PerformanceConfigurationINTEL(vk_handle)
Base.convert(T::Type{IndirectCommandsLayoutNV}, vk_handle::VkIndirectCommandsLayoutNV) = IndirectCommandsLayoutNV(vk_handle)
Base.convert(T::Type{PrivateDataSlotEXT}, vk_handle::VkPrivateDataSlotEXT) = PrivateDataSlotEXT(vk_handle)
function create_instance(pCreateInfo, pAllocator, pInstance)
    ccall((:vkCreateInstance, libvulkan), VkResult, (Ptr{VkInstanceCreateInfo}, Ptr{VkAllocationCallbacks}, Ptr{VkInstance}), pCreateInfo, pAllocator, pInstance)
end

function destroy_instance(instance, pAllocator)
    ccall((:vkDestroyInstance, libvulkan), Cvoid, (VkInstance, Ptr{VkAllocationCallbacks}), instance, pAllocator)
end

function enumerate_physical_devices(instance)
    count = Ref{UInt32}(0)
    @check vkEnumeratePhysicalDevices(instance, count, C_NULL)
    arr = Array{VkPhysicalDevice}(undef, count[])
    @check vkEnumeratePhysicalDevices(instance, count, arr)
    arr
end

function get_physical_device_features(physicalDevice, pFeatures)
    ccall((:vkGetPhysicalDeviceFeatures, libvulkan), Cvoid, (VkPhysicalDevice, Ptr{VkPhysicalDeviceFeatures}), physicalDevice, pFeatures)
end

function get_physical_device_format_properties(physicalDevice, format, pFormatProperties)
    ccall((:vkGetPhysicalDeviceFormatProperties, libvulkan), Cvoid, (VkPhysicalDevice, VkFormat, Ptr{VkFormatProperties}), physicalDevice, format, pFormatProperties)
end

function get_physical_device_image_format_properties(physicalDevice, format, type, tiling, usage, flags, pImageFormatProperties)
    ccall((:vkGetPhysicalDeviceImageFormatProperties, libvulkan), VkResult,
          (VkPhysicalDevice, VkFormat, VkImageType, VkImageTiling, VkImageUsageFlags, VkImageCreateFlags, Ptr{VkImageFormatProperties}), physicalDevice, format, type, tiling, usage, flags,
          pImageFormatProperties)
end

function get_physical_device_properties(physicalDevice, pProperties)
    ccall((:vkGetPhysicalDeviceProperties, libvulkan), Cvoid, (VkPhysicalDevice, Ptr{VkPhysicalDeviceProperties}), physicalDevice, pProperties)
end

function get_physical_device_queue_family_properties(physical_device)
    count = Ref{UInt32}(0)
    @check vkGetPhysicalDeviceQueueFamilyProperties(physical_device, count, C_NULL)
    arr = Array{VkQueueFamilyProperties}(undef, count[])
    @check vkGetPhysicalDeviceQueueFamilyProperties(physical_device, count, arr)
    Base.convert.(Ref(QueueFamilyProperties), arr)
end

function get_physical_device_memory_properties(physicalDevice, pMemoryProperties)
    ccall((:vkGetPhysicalDeviceMemoryProperties, libvulkan), Cvoid, (VkPhysicalDevice, Ptr{VkPhysicalDeviceMemoryProperties}), physicalDevice, pMemoryProperties)
end

function get_instance_proc_addr(instance, pName)
    ccall((:vkGetInstanceProcAddr, libvulkan), vk.PFN_vkVoidFunction, (VkInstance, Cstring), instance, pName)
end

function get_device_proc_addr(device, pName)
    ccall((:vkGetDeviceProcAddr, libvulkan), vk.PFN_vkVoidFunction, (VkDevice, Cstring), device, pName)
end

function create_device(physicalDevice, pCreateInfo, pAllocator, pDevice)
    ccall((:vkCreateDevice, libvulkan), VkResult, (VkPhysicalDevice, Ptr{VkDeviceCreateInfo}, Ptr{VkAllocationCallbacks}, Ptr{VkDevice}), physicalDevice, pCreateInfo, pAllocator, pDevice)
end

function destroy_device(device, pAllocator)
    ccall((:vkDestroyDevice, libvulkan), Cvoid, (VkDevice, Ptr{VkAllocationCallbacks}), device, pAllocator)
end

function enumerate_instance_extension_properties(p_layer_name)
    count = Ref{UInt32}(0)
    @check vkEnumerateInstanceExtensionProperties(p_layer_name, count, C_NULL)
    arr = Array{VkExtensionProperties}(undef, count[])
    @check vkEnumerateInstanceExtensionProperties(p_layer_name, count, arr)
    Base.convert.(Ref(ExtensionProperties), arr)
end

function enumerate_device_extension_properties(physical_device)
    count = Ref{UInt32}(0)
    @check vkEnumerateDeviceExtensionProperties(physical_device, count, C_NULL)
    arr = Array{VkExtensionProperties}(undef, count[])
    @check vkEnumerateDeviceExtensionProperties(physical_device, count, arr)
    Base.convert.(Ref(ExtensionProperties), arr)
end

function enumerate_instance_layer_properties()
    count = Ref{UInt32}(0)
    @check vkEnumerateInstanceLayerProperties(count, C_NULL)
    arr = Array{VkLayerProperties}(undef, count[])
    @check vkEnumerateInstanceLayerProperties(count, arr)
    Base.convert.(Ref(LayerProperties), arr)
end

function enumerate_device_layer_properties(physical_device)
    count = Ref{UInt32}(0)
    @check vkEnumerateDeviceLayerProperties(physical_device, count, C_NULL)
    arr = Array{VkLayerProperties}(undef, count[])
    @check vkEnumerateDeviceLayerProperties(physical_device, count, arr)
    Base.convert.(Ref(LayerProperties), arr)
end

function get_device_queue(device, queueFamilyIndex, queueIndex, pQueue)
    ccall((:vkGetDeviceQueue, libvulkan), Cvoid, (VkDevice, UInt32, UInt32, Ptr{VkQueue}), device, queueFamilyIndex, queueIndex, pQueue)
end

function queue_submit(queue, submitCount, pSubmits, fence)
    ccall((:vkQueueSubmit, libvulkan), VkResult, (VkQueue, UInt32, Ptr{VkSubmitInfo}, VkFence), queue, submitCount, pSubmits, fence)
end

function queue_wait_idle(queue)
    ccall((:vkQueueWaitIdle, libvulkan), VkResult, (VkQueue,), queue)
end

function device_wait_idle(device)
    ccall((:vkDeviceWaitIdle, libvulkan), VkResult, (VkDevice,), device)
end

function allocate_memory(device, pAllocateInfo, pAllocator, pMemory)
    ccall((:vkAllocateMemory, libvulkan), VkResult, (VkDevice, Ptr{VkMemoryAllocateInfo}, Ptr{VkAllocationCallbacks}, Ptr{VkDeviceMemory}), device, pAllocateInfo, pAllocator, pMemory)
end

function free_memory(device, memory, pAllocator)
    ccall((:vkFreeMemory, libvulkan), Cvoid, (VkDevice, VkDeviceMemory, Ptr{VkAllocationCallbacks}), device, memory, pAllocator)
end

function map_memory(device, memory, offset, size, flags, ppData)
    ccall((:vkMapMemory, libvulkan), VkResult, (VkDevice, VkDeviceMemory, VkDeviceSize, VkDeviceSize, VkMemoryMapFlags, Ptr{Ptr{Cvoid}}), device, memory, offset, size, flags, ppData)
end

function unmap_memory(device, memory)
    ccall((:vkUnmapMemory, libvulkan), Cvoid, (VkDevice, VkDeviceMemory), device, memory)
end

function flush_mapped_memory_ranges(device, memoryRangeCount, pMemoryRanges)
    ccall((:vkFlushMappedMemoryRanges, libvulkan), VkResult, (VkDevice, UInt32, Ptr{VkMappedMemoryRange}), device, memoryRangeCount, pMemoryRanges)
end

function invalidate_mapped_memory_ranges(device, memoryRangeCount, pMemoryRanges)
    ccall((:vkInvalidateMappedMemoryRanges, libvulkan), VkResult, (VkDevice, UInt32, Ptr{VkMappedMemoryRange}), device, memoryRangeCount, pMemoryRanges)
end

function get_device_memory_commitment(device, memory, pCommittedMemoryInBytes)
    ccall((:vkGetDeviceMemoryCommitment, libvulkan), Cvoid, (VkDevice, VkDeviceMemory, Ptr{VkDeviceSize}), device, memory, pCommittedMemoryInBytes)
end

function bind_buffer_memory(device, buffer, memory, memoryOffset)
    ccall((:vkBindBufferMemory, libvulkan), VkResult, (VkDevice, VkBuffer, VkDeviceMemory, VkDeviceSize), device, buffer, memory, memoryOffset)
end

function bind_image_memory(device, image, memory, memoryOffset)
    ccall((:vkBindImageMemory, libvulkan), VkResult, (VkDevice, VkImage, VkDeviceMemory, VkDeviceSize), device, image, memory, memoryOffset)
end

function get_buffer_memory_requirements(device, buffer, pMemoryRequirements)
    ccall((:vkGetBufferMemoryRequirements, libvulkan), Cvoid, (VkDevice, VkBuffer, Ptr{VkMemoryRequirements}), device, buffer, pMemoryRequirements)
end

function get_image_memory_requirements(device, image, pMemoryRequirements)
    ccall((:vkGetImageMemoryRequirements, libvulkan), Cvoid, (VkDevice, VkImage, Ptr{VkMemoryRequirements}), device, image, pMemoryRequirements)
end

function get_image_sparse_memory_requirements(device)
    count = Ref{UInt32}(0)
    @check vkGetImageSparseMemoryRequirements(device, count, C_NULL)
    arr = Array{VkSparseImageMemoryRequirements}(undef, count[])
    @check vkGetImageSparseMemoryRequirements(device, count, arr)
    Base.convert.(Ref(SparseImageMemoryRequirements), arr)
end

function get_physical_device_sparse_image_format_properties(physical_device)
    count = Ref{UInt32}(0)
    @check vkGetPhysicalDeviceSparseImageFormatProperties(physical_device, count, C_NULL)
    arr = Array{VkSparseImageFormatProperties}(undef, count[])
    @check vkGetPhysicalDeviceSparseImageFormatProperties(physical_device, count, arr)
    Base.convert.(Ref(SparseImageFormatProperties), arr)
end

function queue_bind_sparse(queue, bindInfoCount, pBindInfo, fence)
    ccall((:vkQueueBindSparse, libvulkan), VkResult, (VkQueue, UInt32, Ptr{VkBindSparseInfo}, VkFence), queue, bindInfoCount, pBindInfo, fence)
end

function create_fence(device, pCreateInfo, pAllocator, pFence)
    ccall((:vkCreateFence, libvulkan), VkResult, (VkDevice, Ptr{VkFenceCreateInfo}, Ptr{VkAllocationCallbacks}, Ptr{VkFence}), device, pCreateInfo, pAllocator, pFence)
end

function destroy_fence(device, fence, pAllocator)
    ccall((:vkDestroyFence, libvulkan), Cvoid, (VkDevice, VkFence, Ptr{VkAllocationCallbacks}), device, fence, pAllocator)
end

function reset_fences(device, fenceCount, pFences)
    ccall((:vkResetFences, libvulkan), VkResult, (VkDevice, UInt32, Ptr{VkFence}), device, fenceCount, pFences)
end

function get_fence_status(device, fence)
    ccall((:vkGetFenceStatus, libvulkan), VkResult, (VkDevice, VkFence), device, fence)
end

function wait_for_fences(device, fenceCount, pFences, waitAll, timeout)
    ccall((:vkWaitForFences, libvulkan), VkResult, (VkDevice, UInt32, Ptr{VkFence}, VkBool32, UInt64), device, fenceCount, pFences, waitAll, timeout)
end

function create_semaphore(device, pCreateInfo, pAllocator, pSemaphore)
    ccall((:vkCreateSemaphore, libvulkan), VkResult, (VkDevice, Ptr{VkSemaphoreCreateInfo}, Ptr{VkAllocationCallbacks}, Ptr{VkSemaphore}), device, pCreateInfo, pAllocator, pSemaphore)
end

function destroy_semaphore(device, semaphore, pAllocator)
    ccall((:vkDestroySemaphore, libvulkan), Cvoid, (VkDevice, VkSemaphore, Ptr{VkAllocationCallbacks}), device, semaphore, pAllocator)
end

function create_event(device, pCreateInfo, pAllocator, pEvent)
    ccall((:vkCreateEvent, libvulkan), VkResult, (VkDevice, Ptr{VkEventCreateInfo}, Ptr{VkAllocationCallbacks}, Ptr{VkEvent}), device, pCreateInfo, pAllocator, pEvent)
end

function destroy_event(device, event, pAllocator)
    ccall((:vkDestroyEvent, libvulkan), Cvoid, (VkDevice, VkEvent, Ptr{VkAllocationCallbacks}), device, event, pAllocator)
end

function get_event_status(device, event)
    ccall((:vkGetEventStatus, libvulkan), VkResult, (VkDevice, VkEvent), device, event)
end

function set_event(device, event)
    ccall((:vkSetEvent, libvulkan), VkResult, (VkDevice, VkEvent), device, event)
end

function reset_event(device, event)
    ccall((:vkResetEvent, libvulkan), VkResult, (VkDevice, VkEvent), device, event)
end

function create_query_pool(device, pCreateInfo, pAllocator, pQueryPool)
    ccall((:vkCreateQueryPool, libvulkan), VkResult, (VkDevice, Ptr{VkQueryPoolCreateInfo}, Ptr{VkAllocationCallbacks}, Ptr{VkQueryPool}), device, pCreateInfo, pAllocator, pQueryPool)
end

function destroy_query_pool(device, queryPool, pAllocator)
    ccall((:vkDestroyQueryPool, libvulkan), Cvoid, (VkDevice, VkQueryPool, Ptr{VkAllocationCallbacks}), device, queryPool, pAllocator)
end

function get_query_pool_results(device, queryPool, firstQuery, queryCount, dataSize, pData, stride, flags)
    ccall((:vkGetQueryPoolResults, libvulkan), VkResult, (VkDevice, VkQueryPool, UInt32, UInt32, Csize_t, Ptr{Cvoid}, VkDeviceSize, VkQueryResultFlags), device, queryPool, firstQuery, queryCount,
          dataSize, pData, stride, flags)
end

function create_buffer(device, pCreateInfo, pAllocator, pBuffer)
    ccall((:vkCreateBuffer, libvulkan), VkResult, (VkDevice, Ptr{VkBufferCreateInfo}, Ptr{VkAllocationCallbacks}, Ptr{VkBuffer}), device, pCreateInfo, pAllocator, pBuffer)
end

function destroy_buffer(device, buffer, pAllocator)
    ccall((:vkDestroyBuffer, libvulkan), Cvoid, (VkDevice, VkBuffer, Ptr{VkAllocationCallbacks}), device, buffer, pAllocator)
end

function create_buffer_view(device, pCreateInfo, pAllocator, pView)
    ccall((:vkCreateBufferView, libvulkan), VkResult, (VkDevice, Ptr{VkBufferViewCreateInfo}, Ptr{VkAllocationCallbacks}, Ptr{VkBufferView}), device, pCreateInfo, pAllocator, pView)
end

function destroy_buffer_view(device, bufferView, pAllocator)
    ccall((:vkDestroyBufferView, libvulkan), Cvoid, (VkDevice, VkBufferView, Ptr{VkAllocationCallbacks}), device, bufferView, pAllocator)
end

function create_image(device, pCreateInfo, pAllocator, pImage)
    ccall((:vkCreateImage, libvulkan), VkResult, (VkDevice, Ptr{VkImageCreateInfo}, Ptr{VkAllocationCallbacks}, Ptr{VkImage}), device, pCreateInfo, pAllocator, pImage)
end

function destroy_image(device, image, pAllocator)
    ccall((:vkDestroyImage, libvulkan), Cvoid, (VkDevice, VkImage, Ptr{VkAllocationCallbacks}), device, image, pAllocator)
end

function get_image_subresource_layout(device, image, pSubresource, pLayout)
    ccall((:vkGetImageSubresourceLayout, libvulkan), Cvoid, (VkDevice, VkImage, Ptr{VkImageSubresource}, Ptr{VkSubresourceLayout}), device, image, pSubresource, pLayout)
end

function create_image_view(device, pCreateInfo, pAllocator, pView)
    ccall((:vkCreateImageView, libvulkan), VkResult, (VkDevice, Ptr{VkImageViewCreateInfo}, Ptr{VkAllocationCallbacks}, Ptr{VkImageView}), device, pCreateInfo, pAllocator, pView)
end

function destroy_image_view(device, imageView, pAllocator)
    ccall((:vkDestroyImageView, libvulkan), Cvoid, (VkDevice, VkImageView, Ptr{VkAllocationCallbacks}), device, imageView, pAllocator)
end

function create_shader_module(device, pCreateInfo, pAllocator, pShaderModule)
    ccall((:vkCreateShaderModule, libvulkan), VkResult, (VkDevice, Ptr{VkShaderModuleCreateInfo}, Ptr{VkAllocationCallbacks}, Ptr{VkShaderModule}), device, pCreateInfo, pAllocator, pShaderModule)
end

function destroy_shader_module(device, shaderModule, pAllocator)
    ccall((:vkDestroyShaderModule, libvulkan), Cvoid, (VkDevice, VkShaderModule, Ptr{VkAllocationCallbacks}), device, shaderModule, pAllocator)
end

function create_pipeline_cache(device, pCreateInfo, pAllocator, pPipelineCache)
    ccall((:vkCreatePipelineCache, libvulkan), VkResult, (VkDevice, Ptr{VkPipelineCacheCreateInfo}, Ptr{VkAllocationCallbacks}, Ptr{VkPipelineCache}), device, pCreateInfo, pAllocator, pPipelineCache)
end

function destroy_pipeline_cache(device, pipelineCache, pAllocator)
    ccall((:vkDestroyPipelineCache, libvulkan), Cvoid, (VkDevice, VkPipelineCache, Ptr{VkAllocationCallbacks}), device, pipelineCache, pAllocator)
end

function get_pipeline_cache_data(device)
    count = Ref{UInt32}(0)
    @check vkGetPipelineCacheData(device, count, C_NULL)
    arr = Array{void}(undef, count[])
    @check vkGetPipelineCacheData(device, count, arr)
    arr
end

function merge_pipeline_caches(device, dstCache, srcCacheCount, pSrcCaches)
    ccall((:vkMergePipelineCaches, libvulkan), VkResult, (VkDevice, VkPipelineCache, UInt32, Ptr{VkPipelineCache}), device, dstCache, srcCacheCount, pSrcCaches)
end

function create_graphics_pipelines(device, pipelineCache, createInfoCount, pCreateInfos, pAllocator, pPipelines)
    ccall((:vkCreateGraphicsPipelines, libvulkan), VkResult, (VkDevice, VkPipelineCache, UInt32, Ptr{VkGraphicsPipelineCreateInfo}, Ptr{VkAllocationCallbacks}, Ptr{VkPipeline}), device, pipelineCache,
          createInfoCount, pCreateInfos, pAllocator, pPipelines)
end

function create_compute_pipelines(device, pipelineCache, createInfoCount, pCreateInfos, pAllocator, pPipelines)
    ccall((:vkCreateComputePipelines, libvulkan), VkResult, (VkDevice, VkPipelineCache, UInt32, Ptr{VkComputePipelineCreateInfo}, Ptr{VkAllocationCallbacks}, Ptr{VkPipeline}), device, pipelineCache,
          createInfoCount, pCreateInfos, pAllocator, pPipelines)
end

function destroy_pipeline(device, pipeline, pAllocator)
    ccall((:vkDestroyPipeline, libvulkan), Cvoid, (VkDevice, VkPipeline, Ptr{VkAllocationCallbacks}), device, pipeline, pAllocator)
end

function create_pipeline_layout(device, pCreateInfo, pAllocator, pPipelineLayout)
    ccall((:vkCreatePipelineLayout, libvulkan), VkResult, (VkDevice, Ptr{VkPipelineLayoutCreateInfo}, Ptr{VkAllocationCallbacks}, Ptr{VkPipelineLayout}), device, pCreateInfo, pAllocator,
          pPipelineLayout)
end

function destroy_pipeline_layout(device, pipelineLayout, pAllocator)
    ccall((:vkDestroyPipelineLayout, libvulkan), Cvoid, (VkDevice, VkPipelineLayout, Ptr{VkAllocationCallbacks}), device, pipelineLayout, pAllocator)
end

function create_sampler(device, pCreateInfo, pAllocator, pSampler)
    ccall((:vkCreateSampler, libvulkan), VkResult, (VkDevice, Ptr{VkSamplerCreateInfo}, Ptr{VkAllocationCallbacks}, Ptr{VkSampler}), device, pCreateInfo, pAllocator, pSampler)
end

function destroy_sampler(device, sampler, pAllocator)
    ccall((:vkDestroySampler, libvulkan), Cvoid, (VkDevice, VkSampler, Ptr{VkAllocationCallbacks}), device, sampler, pAllocator)
end

function create_descriptor_set_layout(device, pCreateInfo, pAllocator, pSetLayout)
    ccall((:vkCreateDescriptorSetLayout, libvulkan), VkResult, (VkDevice, Ptr{VkDescriptorSetLayoutCreateInfo}, Ptr{VkAllocationCallbacks}, Ptr{VkDescriptorSetLayout}), device, pCreateInfo,
          pAllocator, pSetLayout)
end

function destroy_descriptor_set_layout(device, descriptorSetLayout, pAllocator)
    ccall((:vkDestroyDescriptorSetLayout, libvulkan), Cvoid, (VkDevice, VkDescriptorSetLayout, Ptr{VkAllocationCallbacks}), device, descriptorSetLayout, pAllocator)
end

function create_descriptor_pool(device, pCreateInfo, pAllocator, pDescriptorPool)
    ccall((:vkCreateDescriptorPool, libvulkan), VkResult, (VkDevice, Ptr{VkDescriptorPoolCreateInfo}, Ptr{VkAllocationCallbacks}, Ptr{VkDescriptorPool}), device, pCreateInfo, pAllocator,
          pDescriptorPool)
end

function destroy_descriptor_pool(device, descriptorPool, pAllocator)
    ccall((:vkDestroyDescriptorPool, libvulkan), Cvoid, (VkDevice, VkDescriptorPool, Ptr{VkAllocationCallbacks}), device, descriptorPool, pAllocator)
end

function reset_descriptor_pool(device, descriptorPool, flags)
    ccall((:vkResetDescriptorPool, libvulkan), VkResult, (VkDevice, VkDescriptorPool, VkDescriptorPoolResetFlags), device, descriptorPool, flags)
end

function allocate_descriptor_sets(device, pAllocateInfo, pDescriptorSets)
    ccall((:vkAllocateDescriptorSets, libvulkan), VkResult, (VkDevice, Ptr{VkDescriptorSetAllocateInfo}, Ptr{VkDescriptorSet}), device, pAllocateInfo, pDescriptorSets)
end

function free_descriptor_sets(device, descriptorPool, descriptorSetCount, pDescriptorSets)
    ccall((:vkFreeDescriptorSets, libvulkan), VkResult, (VkDevice, VkDescriptorPool, UInt32, Ptr{VkDescriptorSet}), device, descriptorPool, descriptorSetCount, pDescriptorSets)
end

function update_descriptor_sets(device, descriptorWriteCount, pDescriptorWrites, descriptorCopyCount, pDescriptorCopies)
    ccall((:vkUpdateDescriptorSets, libvulkan), Cvoid, (VkDevice, UInt32, Ptr{VkWriteDescriptorSet}, UInt32, Ptr{VkCopyDescriptorSet}), device, descriptorWriteCount, pDescriptorWrites,
          descriptorCopyCount, pDescriptorCopies)
end

function create_framebuffer(device, pCreateInfo, pAllocator, pFramebuffer)
    ccall((:vkCreateFramebuffer, libvulkan), VkResult, (VkDevice, Ptr{VkFramebufferCreateInfo}, Ptr{VkAllocationCallbacks}, Ptr{VkFramebuffer}), device, pCreateInfo, pAllocator, pFramebuffer)
end

function destroy_framebuffer(device, framebuffer, pAllocator)
    ccall((:vkDestroyFramebuffer, libvulkan), Cvoid, (VkDevice, VkFramebuffer, Ptr{VkAllocationCallbacks}), device, framebuffer, pAllocator)
end

function create_render_pass(device, pCreateInfo, pAllocator, pRenderPass)
    ccall((:vkCreateRenderPass, libvulkan), VkResult, (VkDevice, Ptr{VkRenderPassCreateInfo}, Ptr{VkAllocationCallbacks}, Ptr{VkRenderPass}), device, pCreateInfo, pAllocator, pRenderPass)
end

function destroy_render_pass(device, renderPass, pAllocator)
    ccall((:vkDestroyRenderPass, libvulkan), Cvoid, (VkDevice, VkRenderPass, Ptr{VkAllocationCallbacks}), device, renderPass, pAllocator)
end

function get_render_area_granularity(device, renderPass, pGranularity)
    ccall((:vkGetRenderAreaGranularity, libvulkan), Cvoid, (VkDevice, VkRenderPass, Ptr{VkExtent2D}), device, renderPass, pGranularity)
end

function create_command_pool(device, pCreateInfo, pAllocator, pCommandPool)
    ccall((:vkCreateCommandPool, libvulkan), VkResult, (VkDevice, Ptr{VkCommandPoolCreateInfo}, Ptr{VkAllocationCallbacks}, Ptr{VkCommandPool}), device, pCreateInfo, pAllocator, pCommandPool)
end

function destroy_command_pool(device, commandPool, pAllocator)
    ccall((:vkDestroyCommandPool, libvulkan), Cvoid, (VkDevice, VkCommandPool, Ptr{VkAllocationCallbacks}), device, commandPool, pAllocator)
end

function reset_command_pool(device, commandPool, flags)
    ccall((:vkResetCommandPool, libvulkan), VkResult, (VkDevice, VkCommandPool, VkCommandPoolResetFlags), device, commandPool, flags)
end

function allocate_command_buffers(device, pAllocateInfo, pCommandBuffers)
    ccall((:vkAllocateCommandBuffers, libvulkan), VkResult, (VkDevice, Ptr{VkCommandBufferAllocateInfo}, Ptr{VkCommandBuffer}), device, pAllocateInfo, pCommandBuffers)
end

function free_command_buffers(device, commandPool, commandBufferCount, pCommandBuffers)
    ccall((:vkFreeCommandBuffers, libvulkan), Cvoid, (VkDevice, VkCommandPool, UInt32, Ptr{VkCommandBuffer}), device, commandPool, commandBufferCount, pCommandBuffers)
end

function begin_command_buffer(commandBuffer, pBeginInfo)
    ccall((:vkBeginCommandBuffer, libvulkan), VkResult, (VkCommandBuffer, Ptr{VkCommandBufferBeginInfo}), commandBuffer, pBeginInfo)
end

function end_command_buffer(commandBuffer)
    ccall((:vkEndCommandBuffer, libvulkan), VkResult, (VkCommandBuffer,), commandBuffer)
end

function reset_command_buffer(commandBuffer, flags)
    ccall((:vkResetCommandBuffer, libvulkan), VkResult, (VkCommandBuffer, VkCommandBufferResetFlags), commandBuffer, flags)
end

function cmd_bind_pipeline(commandBuffer, pipelineBindPoint, pipeline)
    ccall((:vkCmdBindPipeline, libvulkan), Cvoid, (VkCommandBuffer, VkPipelineBindPoint, VkPipeline), commandBuffer, pipelineBindPoint, pipeline)
end

function cmd_set_viewport(commandBuffer, firstViewport, viewportCount, pViewports)
    ccall((:vkCmdSetViewport, libvulkan), Cvoid, (VkCommandBuffer, UInt32, UInt32, Ptr{VkViewport}), commandBuffer, firstViewport, viewportCount, pViewports)
end

function cmd_set_scissor(commandBuffer, firstScissor, scissorCount, pScissors)
    ccall((:vkCmdSetScissor, libvulkan), Cvoid, (VkCommandBuffer, UInt32, UInt32, Ptr{VkRect2D}), commandBuffer, firstScissor, scissorCount, pScissors)
end

function cmd_set_line_width(commandBuffer, lineWidth)
    ccall((:vkCmdSetLineWidth, libvulkan), Cvoid, (VkCommandBuffer, Cfloat), commandBuffer, lineWidth)
end

function cmd_set_depth_bias(commandBuffer, depthBiasConstantFactor, depthBiasClamp, depthBiasSlopeFactor)
    ccall((:vkCmdSetDepthBias, libvulkan), Cvoid, (VkCommandBuffer, Cfloat, Cfloat, Cfloat), commandBuffer, depthBiasConstantFactor, depthBiasClamp, depthBiasSlopeFactor)
end

function cmd_set_blend_constants(commandBuffer, blendConstants)
    ccall((:vkCmdSetBlendConstants, libvulkan), Cvoid, (VkCommandBuffer, Ptr{Cfloat}), commandBuffer, blendConstants)
end

function cmd_set_depth_bounds(commandBuffer, minDepthBounds, maxDepthBounds)
    ccall((:vkCmdSetDepthBounds, libvulkan), Cvoid, (VkCommandBuffer, Cfloat, Cfloat), commandBuffer, minDepthBounds, maxDepthBounds)
end

function cmd_set_stencil_compare_mask(commandBuffer, faceMask, compareMask)
    ccall((:vkCmdSetStencilCompareMask, libvulkan), Cvoid, (VkCommandBuffer, VkStencilFaceFlags, UInt32), commandBuffer, faceMask, compareMask)
end

function cmd_set_stencil_write_mask(commandBuffer, faceMask, writeMask)
    ccall((:vkCmdSetStencilWriteMask, libvulkan), Cvoid, (VkCommandBuffer, VkStencilFaceFlags, UInt32), commandBuffer, faceMask, writeMask)
end

function cmd_set_stencil_reference(commandBuffer, faceMask, reference)
    ccall((:vkCmdSetStencilReference, libvulkan), Cvoid, (VkCommandBuffer, VkStencilFaceFlags, UInt32), commandBuffer, faceMask, reference)
end

function cmd_bind_descriptor_sets(commandBuffer, pipelineBindPoint, layout, firstSet, descriptorSetCount, pDescriptorSets, dynamicOffsetCount, pDynamicOffsets)
    ccall((:vkCmdBindDescriptorSets, libvulkan), Cvoid, (VkCommandBuffer, VkPipelineBindPoint, VkPipelineLayout, UInt32, UInt32, Ptr{VkDescriptorSet}, UInt32, Ptr{UInt32}), commandBuffer,
          pipelineBindPoint, layout, firstSet, descriptorSetCount, pDescriptorSets, dynamicOffsetCount, pDynamicOffsets)
end

function cmd_bind_index_buffer(commandBuffer, buffer, offset, indexType)
    ccall((:vkCmdBindIndexBuffer, libvulkan), Cvoid, (VkCommandBuffer, VkBuffer, VkDeviceSize, VkIndexType), commandBuffer, buffer, offset, indexType)
end

function cmd_bind_vertex_buffers(commandBuffer, firstBinding, bindingCount, pBuffers, pOffsets)
    ccall((:vkCmdBindVertexBuffers, libvulkan), Cvoid, (VkCommandBuffer, UInt32, UInt32, Ptr{VkBuffer}, Ptr{VkDeviceSize}), commandBuffer, firstBinding, bindingCount, pBuffers, pOffsets)
end

function cmd_draw(commandBuffer, vertexCount, instanceCount, firstVertex, firstInstance)
    ccall((:vkCmdDraw, libvulkan), Cvoid, (VkCommandBuffer, UInt32, UInt32, UInt32, UInt32), commandBuffer, vertexCount, instanceCount, firstVertex, firstInstance)
end

function cmd_draw_indexed(commandBuffer, indexCount, instanceCount, firstIndex, vertexOffset, firstInstance)
    ccall((:vkCmdDrawIndexed, libvulkan), Cvoid, (VkCommandBuffer, UInt32, UInt32, UInt32, Int32, UInt32), commandBuffer, indexCount, instanceCount, firstIndex, vertexOffset, firstInstance)
end

function cmd_draw_indirect(commandBuffer, buffer, offset, drawCount, stride)
    ccall((:vkCmdDrawIndirect, libvulkan), Cvoid, (VkCommandBuffer, VkBuffer, VkDeviceSize, UInt32, UInt32), commandBuffer, buffer, offset, drawCount, stride)
end

function cmd_draw_indexed_indirect(commandBuffer, buffer, offset, drawCount, stride)
    ccall((:vkCmdDrawIndexedIndirect, libvulkan), Cvoid, (VkCommandBuffer, VkBuffer, VkDeviceSize, UInt32, UInt32), commandBuffer, buffer, offset, drawCount, stride)
end

function cmd_dispatch(commandBuffer, groupCountX, groupCountY, groupCountZ)
    ccall((:vkCmdDispatch, libvulkan), Cvoid, (VkCommandBuffer, UInt32, UInt32, UInt32), commandBuffer, groupCountX, groupCountY, groupCountZ)
end

function cmd_dispatch_indirect(commandBuffer, buffer, offset)
    ccall((:vkCmdDispatchIndirect, libvulkan), Cvoid, (VkCommandBuffer, VkBuffer, VkDeviceSize), commandBuffer, buffer, offset)
end

function cmd_copy_buffer(commandBuffer, srcBuffer, dstBuffer, regionCount, pRegions)
    ccall((:vkCmdCopyBuffer, libvulkan), Cvoid, (VkCommandBuffer, VkBuffer, VkBuffer, UInt32, Ptr{VkBufferCopy}), commandBuffer, srcBuffer, dstBuffer, regionCount, pRegions)
end

function cmd_copy_image(commandBuffer, srcImage, srcImageLayout, dstImage, dstImageLayout, regionCount, pRegions)
    ccall((:vkCmdCopyImage, libvulkan), Cvoid, (VkCommandBuffer, VkImage, VkImageLayout, VkImage, VkImageLayout, UInt32, Ptr{VkImageCopy}), commandBuffer, srcImage, srcImageLayout, dstImage,
          dstImageLayout, regionCount, pRegions)
end

function cmd_blit_image(commandBuffer, srcImage, srcImageLayout, dstImage, dstImageLayout, regionCount, pRegions, filter)
    ccall((:vkCmdBlitImage, libvulkan), Cvoid, (VkCommandBuffer, VkImage, VkImageLayout, VkImage, VkImageLayout, UInt32, Ptr{VkImageBlit}, VkFilter), commandBuffer, srcImage, srcImageLayout, dstImage,
          dstImageLayout, regionCount, pRegions, filter)
end

function cmd_copy_buffer_to_image(commandBuffer, srcBuffer, dstImage, dstImageLayout, regionCount, pRegions)
    ccall((:vkCmdCopyBufferToImage, libvulkan), Cvoid, (VkCommandBuffer, VkBuffer, VkImage, VkImageLayout, UInt32, Ptr{VkBufferImageCopy}), commandBuffer, srcBuffer, dstImage, dstImageLayout,
          regionCount, pRegions)
end

function cmd_copy_image_to_buffer(commandBuffer, srcImage, srcImageLayout, dstBuffer, regionCount, pRegions)
    ccall((:vkCmdCopyImageToBuffer, libvulkan), Cvoid, (VkCommandBuffer, VkImage, VkImageLayout, VkBuffer, UInt32, Ptr{VkBufferImageCopy}), commandBuffer, srcImage, srcImageLayout, dstBuffer,
          regionCount, pRegions)
end

function cmd_update_buffer(commandBuffer, dstBuffer, dstOffset, dataSize, pData)
    ccall((:vkCmdUpdateBuffer, libvulkan), Cvoid, (VkCommandBuffer, VkBuffer, VkDeviceSize, VkDeviceSize, Ptr{Cvoid}), commandBuffer, dstBuffer, dstOffset, dataSize, pData)
end

function cmd_fill_buffer(commandBuffer, dstBuffer, dstOffset, size, data)
    ccall((:vkCmdFillBuffer, libvulkan), Cvoid, (VkCommandBuffer, VkBuffer, VkDeviceSize, VkDeviceSize, UInt32), commandBuffer, dstBuffer, dstOffset, size, data)
end

function cmd_clear_color_image(commandBuffer, image, imageLayout, pColor, rangeCount, pRanges)
    ccall((:vkCmdClearColorImage, libvulkan), Cvoid, (VkCommandBuffer, VkImage, VkImageLayout, Ptr{VkClearColorValue}, UInt32, Ptr{VkImageSubresourceRange}), commandBuffer, image, imageLayout, pColor,
          rangeCount, pRanges)
end

function cmd_clear_depth_stencil_image(commandBuffer, image, imageLayout, pDepthStencil, rangeCount, pRanges)
    ccall((:vkCmdClearDepthStencilImage, libvulkan), Cvoid, (VkCommandBuffer, VkImage, VkImageLayout, Ptr{VkClearDepthStencilValue}, UInt32, Ptr{VkImageSubresourceRange}), commandBuffer, image,
          imageLayout, pDepthStencil, rangeCount, pRanges)
end

function cmd_clear_attachments(commandBuffer, attachmentCount, pAttachments, rectCount, pRects)
    ccall((:vkCmdClearAttachments, libvulkan), Cvoid, (VkCommandBuffer, UInt32, Ptr{VkClearAttachment}, UInt32, Ptr{VkClearRect}), commandBuffer, attachmentCount, pAttachments, rectCount, pRects)
end

function cmd_resolve_image(commandBuffer, srcImage, srcImageLayout, dstImage, dstImageLayout, regionCount, pRegions)
    ccall((:vkCmdResolveImage, libvulkan), Cvoid, (VkCommandBuffer, VkImage, VkImageLayout, VkImage, VkImageLayout, UInt32, Ptr{VkImageResolve}), commandBuffer, srcImage, srcImageLayout, dstImage,
          dstImageLayout, regionCount, pRegions)
end

function cmd_set_event(commandBuffer, event, stageMask)
    ccall((:vkCmdSetEvent, libvulkan), Cvoid, (VkCommandBuffer, VkEvent, VkPipelineStageFlags), commandBuffer, event, stageMask)
end

function cmd_reset_event(commandBuffer, event, stageMask)
    ccall((:vkCmdResetEvent, libvulkan), Cvoid, (VkCommandBuffer, VkEvent, VkPipelineStageFlags), commandBuffer, event, stageMask)
end

function cmd_wait_events(commandBuffer, eventCount, pEvents, srcStageMask, dstStageMask, memoryBarrierCount, pMemoryBarriers, bufferMemoryBarrierCount, pBufferMemoryBarriers, imageMemoryBarrierCount,
                         pImageMemoryBarriers)
    ccall((:vkCmdWaitEvents, libvulkan), Cvoid,
          (VkCommandBuffer, UInt32, Ptr{VkEvent}, VkPipelineStageFlags, VkPipelineStageFlags, UInt32, Ptr{VkMemoryBarrier}, UInt32, Ptr{VkBufferMemoryBarrier}, UInt32, Ptr{VkImageMemoryBarrier}),
          commandBuffer, eventCount, pEvents, srcStageMask, dstStageMask, memoryBarrierCount, pMemoryBarriers, bufferMemoryBarrierCount, pBufferMemoryBarriers, imageMemoryBarrierCount,
          pImageMemoryBarriers)
end

function cmd_pipeline_barrier(commandBuffer, srcStageMask, dstStageMask, dependencyFlags, memoryBarrierCount, pMemoryBarriers, bufferMemoryBarrierCount, pBufferMemoryBarriers, imageMemoryBarrierCount,
                              pImageMemoryBarriers)
    ccall((:vkCmdPipelineBarrier, libvulkan), Cvoid,
          (VkCommandBuffer, VkPipelineStageFlags, VkPipelineStageFlags, VkDependencyFlags, UInt32, Ptr{VkMemoryBarrier}, UInt32, Ptr{VkBufferMemoryBarrier}, UInt32, Ptr{VkImageMemoryBarrier}),
          commandBuffer, srcStageMask, dstStageMask, dependencyFlags, memoryBarrierCount, pMemoryBarriers, bufferMemoryBarrierCount, pBufferMemoryBarriers, imageMemoryBarrierCount,
          pImageMemoryBarriers)
end

function cmd_begin_query(commandBuffer, queryPool, query, flags)
    ccall((:vkCmdBeginQuery, libvulkan), Cvoid, (VkCommandBuffer, VkQueryPool, UInt32, VkQueryControlFlags), commandBuffer, queryPool, query, flags)
end

function cmd_end_query(commandBuffer, queryPool, query)
    ccall((:vkCmdEndQuery, libvulkan), Cvoid, (VkCommandBuffer, VkQueryPool, UInt32), commandBuffer, queryPool, query)
end

function cmd_reset_query_pool(commandBuffer, queryPool, firstQuery, queryCount)
    ccall((:vkCmdResetQueryPool, libvulkan), Cvoid, (VkCommandBuffer, VkQueryPool, UInt32, UInt32), commandBuffer, queryPool, firstQuery, queryCount)
end

function cmd_write_timestamp(commandBuffer, pipelineStage, queryPool, query)
    ccall((:vkCmdWriteTimestamp, libvulkan), Cvoid, (VkCommandBuffer, VkPipelineStageFlagBits, VkQueryPool, UInt32), commandBuffer, pipelineStage, queryPool, query)
end

function cmd_copy_query_pool_results(commandBuffer, queryPool, firstQuery, queryCount, dstBuffer, dstOffset, stride, flags)
    ccall((:vkCmdCopyQueryPoolResults, libvulkan), Cvoid, (VkCommandBuffer, VkQueryPool, UInt32, UInt32, VkBuffer, VkDeviceSize, VkDeviceSize, VkQueryResultFlags), commandBuffer, queryPool,
          firstQuery, queryCount, dstBuffer, dstOffset, stride, flags)
end

function cmd_push_constants(commandBuffer, layout, stageFlags, offset, size, pValues)
    ccall((:vkCmdPushConstants, libvulkan), Cvoid, (VkCommandBuffer, VkPipelineLayout, VkShaderStageFlags, UInt32, UInt32, Ptr{Cvoid}), commandBuffer, layout, stageFlags, offset, size, pValues)
end

function cmd_begin_render_pass(commandBuffer, pRenderPassBegin, contents)
    ccall((:vkCmdBeginRenderPass, libvulkan), Cvoid, (VkCommandBuffer, Ptr{VkRenderPassBeginInfo}, VkSubpassContents), commandBuffer, pRenderPassBegin, contents)
end

function cmd_next_subpass(commandBuffer, contents)
    ccall((:vkCmdNextSubpass, libvulkan), Cvoid, (VkCommandBuffer, VkSubpassContents), commandBuffer, contents)
end

function cmd_end_render_pass(commandBuffer)
    ccall((:vkCmdEndRenderPass, libvulkan), Cvoid, (VkCommandBuffer,), commandBuffer)
end

function cmd_execute_commands(commandBuffer, commandBufferCount, pCommandBuffers)
    ccall((:vkCmdExecuteCommands, libvulkan), Cvoid, (VkCommandBuffer, UInt32, Ptr{VkCommandBuffer}), commandBuffer, commandBufferCount, pCommandBuffers)
end

function enumerate_instance_version(pApiVersion)
    ccall((:vkEnumerateInstanceVersion, libvulkan), VkResult, (Ptr{UInt32},), pApiVersion)
end

function bind_buffer_memory_2(device, bindInfoCount, pBindInfos)
    ccall((:vkBindBufferMemory2, libvulkan), VkResult, (VkDevice, UInt32, Ptr{VkBindBufferMemoryInfo}), device, bindInfoCount, pBindInfos)
end

function bind_image_memory_2(device, bindInfoCount, pBindInfos)
    ccall((:vkBindImageMemory2, libvulkan), VkResult, (VkDevice, UInt32, Ptr{VkBindImageMemoryInfo}), device, bindInfoCount, pBindInfos)
end

function get_device_group_peer_memory_features(device, heapIndex, localDeviceIndex, remoteDeviceIndex, pPeerMemoryFeatures)
    ccall((:vkGetDeviceGroupPeerMemoryFeatures, libvulkan), Cvoid, (VkDevice, UInt32, UInt32, UInt32, Ptr{VkPeerMemoryFeatureFlags}), device, heapIndex, localDeviceIndex, remoteDeviceIndex,
          pPeerMemoryFeatures)
end

function cmd_set_device_mask(commandBuffer, deviceMask)
    ccall((:vkCmdSetDeviceMask, libvulkan), Cvoid, (VkCommandBuffer, UInt32), commandBuffer, deviceMask)
end

function cmd_dispatch_base(commandBuffer, baseGroupX, baseGroupY, baseGroupZ, groupCountX, groupCountY, groupCountZ)
    ccall((:vkCmdDispatchBase, libvulkan), Cvoid, (VkCommandBuffer, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32), commandBuffer, baseGroupX, baseGroupY, baseGroupZ, groupCountX, groupCountY,
          groupCountZ)
end

function enumerate_physical_device_groups(instance)
    count = Ref{UInt32}(0)
    @check vkEnumeratePhysicalDeviceGroups(instance, count, C_NULL)
    arr = Array{VkPhysicalDeviceGroupProperties}(undef, count[])
    @check vkEnumeratePhysicalDeviceGroups(instance, count, arr)
    Base.convert.(Ref(PhysicalDeviceGroupProperties), arr)
end

function get_image_memory_requirements_2(device, pInfo, pMemoryRequirements)
    ccall((:vkGetImageMemoryRequirements2, libvulkan), Cvoid, (VkDevice, Ptr{VkImageMemoryRequirementsInfo2}, Ptr{VkMemoryRequirements2}), device, pInfo, pMemoryRequirements)
end

function get_buffer_memory_requirements_2(device, pInfo, pMemoryRequirements)
    ccall((:vkGetBufferMemoryRequirements2, libvulkan), Cvoid, (VkDevice, Ptr{VkBufferMemoryRequirementsInfo2}, Ptr{VkMemoryRequirements2}), device, pInfo, pMemoryRequirements)
end

function get_image_sparse_memory_requirements_2(device)
    count = Ref{UInt32}(0)
    @check vkGetImageSparseMemoryRequirements2(device, count, C_NULL)
    arr = Array{VkSparseImageMemoryRequirements2}(undef, count[])
    @check vkGetImageSparseMemoryRequirements2(device, count, arr)
    Base.convert.(Ref(SparseImageMemoryRequirements2), arr)
end

function get_physical_device_features_2(physicalDevice, pFeatures)
    ccall((:vkGetPhysicalDeviceFeatures2, libvulkan), Cvoid, (VkPhysicalDevice, Ptr{VkPhysicalDeviceFeatures2}), physicalDevice, pFeatures)
end

function get_physical_device_properties_2(physicalDevice, pProperties)
    ccall((:vkGetPhysicalDeviceProperties2, libvulkan), Cvoid, (VkPhysicalDevice, Ptr{VkPhysicalDeviceProperties2}), physicalDevice, pProperties)
end

function get_physical_device_format_properties_2(physicalDevice, format, pFormatProperties)
    ccall((:vkGetPhysicalDeviceFormatProperties2, libvulkan), Cvoid, (VkPhysicalDevice, VkFormat, Ptr{VkFormatProperties2}), physicalDevice, format, pFormatProperties)
end

function get_physical_device_image_format_properties_2(physicalDevice, pImageFormatInfo, pImageFormatProperties)
    ccall((:vkGetPhysicalDeviceImageFormatProperties2, libvulkan), VkResult, (VkPhysicalDevice, Ptr{VkPhysicalDeviceImageFormatInfo2}, Ptr{VkImageFormatProperties2}), physicalDevice, pImageFormatInfo,
          pImageFormatProperties)
end

function get_physical_device_queue_family_properties_2(physical_device)
    count = Ref{UInt32}(0)
    @check vkGetPhysicalDeviceQueueFamilyProperties2(physical_device, count, C_NULL)
    arr = Array{VkQueueFamilyProperties2}(undef, count[])
    @check vkGetPhysicalDeviceQueueFamilyProperties2(physical_device, count, arr)
    Base.convert.(Ref(QueueFamilyProperties2), arr)
end

function get_physical_device_memory_properties_2(physicalDevice, pMemoryProperties)
    ccall((:vkGetPhysicalDeviceMemoryProperties2, libvulkan), Cvoid, (VkPhysicalDevice, Ptr{VkPhysicalDeviceMemoryProperties2}), physicalDevice, pMemoryProperties)
end

function get_physical_device_sparse_image_format_properties_2(physical_device)
    count = Ref{UInt32}(0)
    @check vkGetPhysicalDeviceSparseImageFormatProperties2(physical_device, count, C_NULL)
    arr = Array{VkSparseImageFormatProperties2}(undef, count[])
    @check vkGetPhysicalDeviceSparseImageFormatProperties2(physical_device, count, arr)
    Base.convert.(Ref(SparseImageFormatProperties2), arr)
end

function trim_command_pool(device, commandPool, flags)
    ccall((:vkTrimCommandPool, libvulkan), Cvoid, (VkDevice, VkCommandPool, VkCommandPoolTrimFlags), device, commandPool, flags)
end

function get_device_queue_2(device, pQueueInfo, pQueue)
    ccall((:vkGetDeviceQueue2, libvulkan), Cvoid, (VkDevice, Ptr{VkDeviceQueueInfo2}, Ptr{VkQueue}), device, pQueueInfo, pQueue)
end

function create_sampler_ycbcr_conversion(device, pCreateInfo, pAllocator, pYcbcrConversion)
    ccall((:vkCreateSamplerYcbcrConversion, libvulkan), VkResult, (VkDevice, Ptr{VkSamplerYcbcrConversionCreateInfo}, Ptr{VkAllocationCallbacks}, Ptr{VkSamplerYcbcrConversion}), device, pCreateInfo,
          pAllocator, pYcbcrConversion)
end

function destroy_sampler_ycbcr_conversion(device, ycbcrConversion, pAllocator)
    ccall((:vkDestroySamplerYcbcrConversion, libvulkan), Cvoid, (VkDevice, VkSamplerYcbcrConversion, Ptr{VkAllocationCallbacks}), device, ycbcrConversion, pAllocator)
end

function create_descriptor_update_template(device, pCreateInfo, pAllocator, pDescriptorUpdateTemplate)
    ccall((:vkCreateDescriptorUpdateTemplate, libvulkan), VkResult, (VkDevice, Ptr{VkDescriptorUpdateTemplateCreateInfo}, Ptr{VkAllocationCallbacks}, Ptr{VkDescriptorUpdateTemplate}), device,
          pCreateInfo, pAllocator, pDescriptorUpdateTemplate)
end

function destroy_descriptor_update_template(device, descriptorUpdateTemplate, pAllocator)
    ccall((:vkDestroyDescriptorUpdateTemplate, libvulkan), Cvoid, (VkDevice, VkDescriptorUpdateTemplate, Ptr{VkAllocationCallbacks}), device, descriptorUpdateTemplate, pAllocator)
end

function update_descriptor_set_with_template(device, descriptorSet, descriptorUpdateTemplate, pData)
    ccall((:vkUpdateDescriptorSetWithTemplate, libvulkan), Cvoid, (VkDevice, VkDescriptorSet, VkDescriptorUpdateTemplate, Ptr{Cvoid}), device, descriptorSet, descriptorUpdateTemplate, pData)
end

function get_physical_device_external_buffer_properties(physicalDevice, pExternalBufferInfo, pExternalBufferProperties)
    ccall((:vkGetPhysicalDeviceExternalBufferProperties, libvulkan), Cvoid, (VkPhysicalDevice, Ptr{VkPhysicalDeviceExternalBufferInfo}, Ptr{VkExternalBufferProperties}), physicalDevice,
          pExternalBufferInfo, pExternalBufferProperties)
end

function get_physical_device_external_fence_properties(physicalDevice, pExternalFenceInfo, pExternalFenceProperties)
    ccall((:vkGetPhysicalDeviceExternalFenceProperties, libvulkan), Cvoid, (VkPhysicalDevice, Ptr{VkPhysicalDeviceExternalFenceInfo}, Ptr{VkExternalFenceProperties}), physicalDevice,
          pExternalFenceInfo, pExternalFenceProperties)
end

function get_physical_device_external_semaphore_properties(physicalDevice, pExternalSemaphoreInfo, pExternalSemaphoreProperties)
    ccall((:vkGetPhysicalDeviceExternalSemaphoreProperties, libvulkan), Cvoid, (VkPhysicalDevice, Ptr{VkPhysicalDeviceExternalSemaphoreInfo}, Ptr{VkExternalSemaphoreProperties}), physicalDevice,
          pExternalSemaphoreInfo, pExternalSemaphoreProperties)
end

function get_descriptor_set_layout_support(device, pCreateInfo, pSupport)
    ccall((:vkGetDescriptorSetLayoutSupport, libvulkan), Cvoid, (VkDevice, Ptr{VkDescriptorSetLayoutCreateInfo}, Ptr{VkDescriptorSetLayoutSupport}), device, pCreateInfo, pSupport)
end

function cmd_draw_indirect_count(commandBuffer, buffer, offset, countBuffer, countBufferOffset, maxDrawCount, stride)
    ccall((:vkCmdDrawIndirectCount, libvulkan), Cvoid, (VkCommandBuffer, VkBuffer, VkDeviceSize, VkBuffer, VkDeviceSize, UInt32, UInt32), commandBuffer, buffer, offset, countBuffer, countBufferOffset,
          maxDrawCount, stride)
end

function cmd_draw_indexed_indirect_count(commandBuffer, buffer, offset, countBuffer, countBufferOffset, maxDrawCount, stride)
    ccall((:vkCmdDrawIndexedIndirectCount, libvulkan), Cvoid, (VkCommandBuffer, VkBuffer, VkDeviceSize, VkBuffer, VkDeviceSize, UInt32, UInt32), commandBuffer, buffer, offset, countBuffer,
          countBufferOffset, maxDrawCount, stride)
end

function create_render_pass_2(device, pCreateInfo, pAllocator, pRenderPass)
    ccall((:vkCreateRenderPass2, libvulkan), VkResult, (VkDevice, Ptr{VkRenderPassCreateInfo2}, Ptr{VkAllocationCallbacks}, Ptr{VkRenderPass}), device, pCreateInfo, pAllocator, pRenderPass)
end

function cmd_begin_render_pass_2(commandBuffer, pRenderPassBegin, pSubpassBeginInfo)
    ccall((:vkCmdBeginRenderPass2, libvulkan), Cvoid, (VkCommandBuffer, Ptr{VkRenderPassBeginInfo}, Ptr{VkSubpassBeginInfo}), commandBuffer, pRenderPassBegin, pSubpassBeginInfo)
end

function cmd_next_subpass_2(commandBuffer, pSubpassBeginInfo, pSubpassEndInfo)
    ccall((:vkCmdNextSubpass2, libvulkan), Cvoid, (VkCommandBuffer, Ptr{VkSubpassBeginInfo}, Ptr{VkSubpassEndInfo}), commandBuffer, pSubpassBeginInfo, pSubpassEndInfo)
end

function cmd_end_render_pass_2(commandBuffer, pSubpassEndInfo)
    ccall((:vkCmdEndRenderPass2, libvulkan), Cvoid, (VkCommandBuffer, Ptr{VkSubpassEndInfo}), commandBuffer, pSubpassEndInfo)
end

function reset_query_pool(device, queryPool, firstQuery, queryCount)
    ccall((:vkResetQueryPool, libvulkan), Cvoid, (VkDevice, VkQueryPool, UInt32, UInt32), device, queryPool, firstQuery, queryCount)
end

function get_semaphore_counter_value(device, semaphore, pValue)
    ccall((:vkGetSemaphoreCounterValue, libvulkan), VkResult, (VkDevice, VkSemaphore, Ptr{UInt64}), device, semaphore, pValue)
end

function wait_semaphores(device, pWaitInfo, timeout)
    ccall((:vkWaitSemaphores, libvulkan), VkResult, (VkDevice, Ptr{VkSemaphoreWaitInfo}, UInt64), device, pWaitInfo, timeout)
end

function signal_semaphore(device, pSignalInfo)
    ccall((:vkSignalSemaphore, libvulkan), VkResult, (VkDevice, Ptr{VkSemaphoreSignalInfo}), device, pSignalInfo)
end

function get_buffer_device_address(device, pInfo)
    ccall((:vkGetBufferDeviceAddress, libvulkan), VkDeviceAddress, (VkDevice, Ptr{VkBufferDeviceAddressInfo}), device, pInfo)
end

function get_buffer_opaque_capture_address(device, pInfo)
    ccall((:vkGetBufferOpaqueCaptureAddress, libvulkan), UInt64, (VkDevice, Ptr{VkBufferDeviceAddressInfo}), device, pInfo)
end

function get_device_memory_opaque_capture_address(device, pInfo)
    ccall((:vkGetDeviceMemoryOpaqueCaptureAddress, libvulkan), UInt64, (VkDevice, Ptr{VkDeviceMemoryOpaqueCaptureAddressInfo}), device, pInfo)
end

function destroy_surface_khr(instance, surface, pAllocator)
    ccall((:vkDestroySurfaceKHR, libvulkan), Cvoid, (VkInstance, VkSurfaceKHR, Ptr{VkAllocationCallbacks}), instance, surface, pAllocator)
end

function get_physical_device_surface_support_khr(physicalDevice, queueFamilyIndex, surface, pSupported)
    ccall((:vkGetPhysicalDeviceSurfaceSupportKHR, libvulkan), VkResult, (VkPhysicalDevice, UInt32, VkSurfaceKHR, Ptr{VkBool32}), physicalDevice, queueFamilyIndex, surface, pSupported)
end

function get_physical_device_surface_capabilities_khr(physicalDevice, surface, pSurfaceCapabilities)
    ccall((:vkGetPhysicalDeviceSurfaceCapabilitiesKHR, libvulkan), VkResult, (VkPhysicalDevice, VkSurfaceKHR, Ptr{VkSurfaceCapabilitiesKHR}), physicalDevice, surface, pSurfaceCapabilities)
end

function get_physical_device_surface_formats_khr(physical_device)
    count = Ref{UInt32}(0)
    @check vkGetPhysicalDeviceSurfaceFormatsKHR(physical_device, count, C_NULL)
    arr = Array{VkSurfaceFormatKHR}(undef, count[])
    @check vkGetPhysicalDeviceSurfaceFormatsKHR(physical_device, count, arr)
    Base.convert.(Ref(SurfaceFormatKHR), arr)
end

function get_physical_device_surface_present_modes_khr(physical_device)
    count = Ref{UInt32}(0)
    @check vkGetPhysicalDeviceSurfacePresentModesKHR(physical_device, count, C_NULL)
    arr = Array{VkPresentModeKHR}(undef, count[])
    @check vkGetPhysicalDeviceSurfacePresentModesKHR(physical_device, count, arr)
    Base.convert.(Ref(PresentModeKHR), arr)
end

function create_swapchain_khr(device, pCreateInfo, pAllocator, pSwapchain)
    ccall((:vkCreateSwapchainKHR, libvulkan), VkResult, (VkDevice, Ptr{VkSwapchainCreateInfoKHR}, Ptr{VkAllocationCallbacks}, Ptr{VkSwapchainKHR}), device, pCreateInfo, pAllocator, pSwapchain)
end

function destroy_swapchain_khr(device, swapchain, pAllocator)
    ccall((:vkDestroySwapchainKHR, libvulkan), Cvoid, (VkDevice, VkSwapchainKHR, Ptr{VkAllocationCallbacks}), device, swapchain, pAllocator)
end

function get_swapchain_images_khr(device)
    count = Ref{UInt32}(0)
    @check vkGetSwapchainImagesKHR(device, count, C_NULL)
    arr = Array{VkImage}(undef, count[])
    @check vkGetSwapchainImagesKHR(device, count, arr)
    arr
end

function acquire_next_image_khr(device, swapchain, timeout, semaphore, fence, pImageIndex)
    ccall((:vkAcquireNextImageKHR, libvulkan), VkResult, (VkDevice, VkSwapchainKHR, UInt64, VkSemaphore, VkFence, Ptr{UInt32}), device, swapchain, timeout, semaphore, fence, pImageIndex)
end

function queue_present_khr(queue, pPresentInfo)
    ccall((:vkQueuePresentKHR, libvulkan), VkResult, (VkQueue, Ptr{VkPresentInfoKHR}), queue, pPresentInfo)
end

function get_device_group_present_capabilities_khr(device, pDeviceGroupPresentCapabilities)
    ccall((:vkGetDeviceGroupPresentCapabilitiesKHR, libvulkan), VkResult, (VkDevice, Ptr{VkDeviceGroupPresentCapabilitiesKHR}), device, pDeviceGroupPresentCapabilities)
end

function get_device_group_surface_present_modes_khr(device, surface, pModes)
    ccall((:vkGetDeviceGroupSurfacePresentModesKHR, libvulkan), VkResult, (VkDevice, VkSurfaceKHR, Ptr{VkDeviceGroupPresentModeFlagsKHR}), device, surface, pModes)
end

function get_physical_device_present_rectangles_khr(physical_device)
    count = Ref{UInt32}(0)
    @check vkGetPhysicalDevicePresentRectanglesKHR(physical_device, count, C_NULL)
    arr = Array{VkRect2D}(undef, count[])
    @check vkGetPhysicalDevicePresentRectanglesKHR(physical_device, count, arr)
    Base.convert.(Ref(Rect2D), arr)
end

function acquire_next_image_2_khr(device, pAcquireInfo, pImageIndex)
    ccall((:vkAcquireNextImage2KHR, libvulkan), VkResult, (VkDevice, Ptr{VkAcquireNextImageInfoKHR}, Ptr{UInt32}), device, pAcquireInfo, pImageIndex)
end

function get_physical_device_display_properties_khr(physical_device)
    count = Ref{UInt32}(0)
    @check vkGetPhysicalDeviceDisplayPropertiesKHR(physical_device, count, C_NULL)
    arr = Array{VkDisplayPropertiesKHR}(undef, count[])
    @check vkGetPhysicalDeviceDisplayPropertiesKHR(physical_device, count, arr)
    Base.convert.(Ref(DisplayPropertiesKHR), arr)
end

function get_physical_device_display_plane_properties_khr(physical_device)
    count = Ref{UInt32}(0)
    @check vkGetPhysicalDeviceDisplayPlanePropertiesKHR(physical_device, count, C_NULL)
    arr = Array{VkDisplayPlanePropertiesKHR}(undef, count[])
    @check vkGetPhysicalDeviceDisplayPlanePropertiesKHR(physical_device, count, arr)
    Base.convert.(Ref(DisplayPlanePropertiesKHR), arr)
end

function get_display_plane_supported_displays_khr(physical_device)
    count = Ref{UInt32}(0)
    @check vkGetDisplayPlaneSupportedDisplaysKHR(physical_device, count, C_NULL)
    arr = Array{VkDisplayKHR}(undef, count[])
    @check vkGetDisplayPlaneSupportedDisplaysKHR(physical_device, count, arr)
    arr
end

function get_display_mode_properties_khr(physical_device)
    count = Ref{UInt32}(0)
    @check vkGetDisplayModePropertiesKHR(physical_device, count, C_NULL)
    arr = Array{VkDisplayModePropertiesKHR}(undef, count[])
    @check vkGetDisplayModePropertiesKHR(physical_device, count, arr)
    Base.convert.(Ref(DisplayModePropertiesKHR), arr)
end

function create_display_mode_khr(physicalDevice, display, pCreateInfo, pAllocator, pMode)
    ccall((:vkCreateDisplayModeKHR, libvulkan), VkResult, (VkPhysicalDevice, VkDisplayKHR, Ptr{VkDisplayModeCreateInfoKHR}, Ptr{VkAllocationCallbacks}, Ptr{VkDisplayModeKHR}), physicalDevice, display,
          pCreateInfo, pAllocator, pMode)
end

function get_display_plane_capabilities_khr(physicalDevice, mode, planeIndex, pCapabilities)
    ccall((:vkGetDisplayPlaneCapabilitiesKHR, libvulkan), VkResult, (VkPhysicalDevice, VkDisplayModeKHR, UInt32, Ptr{VkDisplayPlaneCapabilitiesKHR}), physicalDevice, mode, planeIndex, pCapabilities)
end

function create_display_plane_surface_khr(instance, pCreateInfo, pAllocator, pSurface)
    ccall((:vkCreateDisplayPlaneSurfaceKHR, libvulkan), VkResult, (VkInstance, Ptr{VkDisplaySurfaceCreateInfoKHR}, Ptr{VkAllocationCallbacks}, Ptr{VkSurfaceKHR}), instance, pCreateInfo, pAllocator,
          pSurface)
end

function create_shared_swapchains_khr(device, swapchainCount, pCreateInfos, pAllocator, pSwapchains)
    ccall((:vkCreateSharedSwapchainsKHR, libvulkan), VkResult, (VkDevice, UInt32, Ptr{VkSwapchainCreateInfoKHR}, Ptr{VkAllocationCallbacks}, Ptr{VkSwapchainKHR}), device, swapchainCount, pCreateInfos,
          pAllocator, pSwapchains)
end

function get_physical_device_features_2_khr(physicalDevice, pFeatures)
    ccall((:vkGetPhysicalDeviceFeatures2KHR, libvulkan), Cvoid, (VkPhysicalDevice, Ptr{VkPhysicalDeviceFeatures2}), physicalDevice, pFeatures)
end

function get_physical_device_properties_2_khr(physicalDevice, pProperties)
    ccall((:vkGetPhysicalDeviceProperties2KHR, libvulkan), Cvoid, (VkPhysicalDevice, Ptr{VkPhysicalDeviceProperties2}), physicalDevice, pProperties)
end

function get_physical_device_format_properties_2_khr(physicalDevice, format, pFormatProperties)
    ccall((:vkGetPhysicalDeviceFormatProperties2KHR, libvulkan), Cvoid, (VkPhysicalDevice, VkFormat, Ptr{VkFormatProperties2}), physicalDevice, format, pFormatProperties)
end

function get_physical_device_image_format_properties_2_khr(physicalDevice, pImageFormatInfo, pImageFormatProperties)
    ccall((:vkGetPhysicalDeviceImageFormatProperties2KHR, libvulkan), VkResult, (VkPhysicalDevice, Ptr{VkPhysicalDeviceImageFormatInfo2}, Ptr{VkImageFormatProperties2}), physicalDevice,
          pImageFormatInfo, pImageFormatProperties)
end

function get_physical_device_queue_family_properties_2_khr(physicalDevice, pQueueFamilyPropertyCount, pQueueFamilyProperties)
    ccall((:vkGetPhysicalDeviceQueueFamilyProperties2KHR, libvulkan), Cvoid, (VkPhysicalDevice, Ptr{UInt32}, Ptr{VkQueueFamilyProperties2}), physicalDevice, pQueueFamilyPropertyCount,
          pQueueFamilyProperties)
end

function get_physical_device_memory_properties_2_khr(physicalDevice, pMemoryProperties)
    ccall((:vkGetPhysicalDeviceMemoryProperties2KHR, libvulkan), Cvoid, (VkPhysicalDevice, Ptr{VkPhysicalDeviceMemoryProperties2}), physicalDevice, pMemoryProperties)
end

function get_physical_device_sparse_image_format_properties_2_khr(physicalDevice, pFormatInfo, pPropertyCount, pProperties)
    ccall((:vkGetPhysicalDeviceSparseImageFormatProperties2KHR, libvulkan), Cvoid, (VkPhysicalDevice, Ptr{VkPhysicalDeviceSparseImageFormatInfo2}, Ptr{UInt32}, Ptr{VkSparseImageFormatProperties2}),
          physicalDevice, pFormatInfo, pPropertyCount, pProperties)
end

function get_device_group_peer_memory_features_khr(device, heapIndex, localDeviceIndex, remoteDeviceIndex, pPeerMemoryFeatures)
    ccall((:vkGetDeviceGroupPeerMemoryFeaturesKHR, libvulkan), Cvoid, (VkDevice, UInt32, UInt32, UInt32, Ptr{VkPeerMemoryFeatureFlags}), device, heapIndex, localDeviceIndex, remoteDeviceIndex,
          pPeerMemoryFeatures)
end

function cmd_set_device_mask_khr(commandBuffer, deviceMask)
    ccall((:vkCmdSetDeviceMaskKHR, libvulkan), Cvoid, (VkCommandBuffer, UInt32), commandBuffer, deviceMask)
end

function cmd_dispatch_base_khr(commandBuffer, baseGroupX, baseGroupY, baseGroupZ, groupCountX, groupCountY, groupCountZ)
    ccall((:vkCmdDispatchBaseKHR, libvulkan), Cvoid, (VkCommandBuffer, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32), commandBuffer, baseGroupX, baseGroupY, baseGroupZ, groupCountX, groupCountY,
          groupCountZ)
end

function trim_command_pool_khr(device, commandPool, flags)
    ccall((:vkTrimCommandPoolKHR, libvulkan), Cvoid, (VkDevice, VkCommandPool, VkCommandPoolTrimFlags), device, commandPool, flags)
end

function enumerate_physical_device_groups_khr(instance, pPhysicalDeviceGroupCount, pPhysicalDeviceGroupProperties)
    ccall((:vkEnumeratePhysicalDeviceGroupsKHR, libvulkan), VkResult, (VkInstance, Ptr{UInt32}, Ptr{VkPhysicalDeviceGroupProperties}), instance, pPhysicalDeviceGroupCount,
          pPhysicalDeviceGroupProperties)
end

function get_physical_device_external_buffer_properties_khr(physicalDevice, pExternalBufferInfo, pExternalBufferProperties)
    ccall((:vkGetPhysicalDeviceExternalBufferPropertiesKHR, libvulkan), Cvoid, (VkPhysicalDevice, Ptr{VkPhysicalDeviceExternalBufferInfo}, Ptr{VkExternalBufferProperties}), physicalDevice,
          pExternalBufferInfo, pExternalBufferProperties)
end

function get_memory_fd_khr(device, pGetFdInfo, pFd)
    ccall((:vkGetMemoryFdKHR, libvulkan), VkResult, (VkDevice, Ptr{VkMemoryGetFdInfoKHR}, Ptr{Cint}), device, pGetFdInfo, pFd)
end

function get_memory_fd_properties_khr(device, handleType, fd, pMemoryFdProperties)
    ccall((:vkGetMemoryFdPropertiesKHR, libvulkan), VkResult, (VkDevice, VkExternalMemoryHandleTypeFlagBits, Cint, Ptr{VkMemoryFdPropertiesKHR}), device, handleType, fd, pMemoryFdProperties)
end

function get_physical_device_external_semaphore_properties_khr(physicalDevice, pExternalSemaphoreInfo, pExternalSemaphoreProperties)
    ccall((:vkGetPhysicalDeviceExternalSemaphorePropertiesKHR, libvulkan), Cvoid, (VkPhysicalDevice, Ptr{VkPhysicalDeviceExternalSemaphoreInfo}, Ptr{VkExternalSemaphoreProperties}), physicalDevice,
          pExternalSemaphoreInfo, pExternalSemaphoreProperties)
end

function import_semaphore_fd_khr(device, pImportSemaphoreFdInfo)
    ccall((:vkImportSemaphoreFdKHR, libvulkan), VkResult, (VkDevice, Ptr{VkImportSemaphoreFdInfoKHR}), device, pImportSemaphoreFdInfo)
end

function get_semaphore_fd_khr(device, pGetFdInfo, pFd)
    ccall((:vkGetSemaphoreFdKHR, libvulkan), VkResult, (VkDevice, Ptr{VkSemaphoreGetFdInfoKHR}, Ptr{Cint}), device, pGetFdInfo, pFd)
end

function cmd_push_descriptor_set_khr(commandBuffer, pipelineBindPoint, layout, set, descriptorWriteCount, pDescriptorWrites)
    ccall((:vkCmdPushDescriptorSetKHR, libvulkan), Cvoid, (VkCommandBuffer, VkPipelineBindPoint, VkPipelineLayout, UInt32, UInt32, Ptr{VkWriteDescriptorSet}), commandBuffer, pipelineBindPoint, layout,
          set, descriptorWriteCount, pDescriptorWrites)
end

function cmd_push_descriptor_set_with_template_khr(commandBuffer, descriptorUpdateTemplate, layout, set, pData)
    ccall((:vkCmdPushDescriptorSetWithTemplateKHR, libvulkan), Cvoid, (VkCommandBuffer, VkDescriptorUpdateTemplate, VkPipelineLayout, UInt32, Ptr{Cvoid}), commandBuffer, descriptorUpdateTemplate,
          layout, set, pData)
end

function create_descriptor_update_template_khr(device, pCreateInfo, pAllocator, pDescriptorUpdateTemplate)
    ccall((:vkCreateDescriptorUpdateTemplateKHR, libvulkan), VkResult, (VkDevice, Ptr{VkDescriptorUpdateTemplateCreateInfo}, Ptr{VkAllocationCallbacks}, Ptr{VkDescriptorUpdateTemplate}), device,
          pCreateInfo, pAllocator, pDescriptorUpdateTemplate)
end

function destroy_descriptor_update_template_khr(device, descriptorUpdateTemplate, pAllocator)
    ccall((:vkDestroyDescriptorUpdateTemplateKHR, libvulkan), Cvoid, (VkDevice, VkDescriptorUpdateTemplate, Ptr{VkAllocationCallbacks}), device, descriptorUpdateTemplate, pAllocator)
end

function update_descriptor_set_with_template_khr(device, descriptorSet, descriptorUpdateTemplate, pData)
    ccall((:vkUpdateDescriptorSetWithTemplateKHR, libvulkan), Cvoid, (VkDevice, VkDescriptorSet, VkDescriptorUpdateTemplate, Ptr{Cvoid}), device, descriptorSet, descriptorUpdateTemplate, pData)
end

function create_render_pass_2_khr(device, pCreateInfo, pAllocator, pRenderPass)
    ccall((:vkCreateRenderPass2KHR, libvulkan), VkResult, (VkDevice, Ptr{VkRenderPassCreateInfo2}, Ptr{VkAllocationCallbacks}, Ptr{VkRenderPass}), device, pCreateInfo, pAllocator, pRenderPass)
end

function cmd_begin_render_pass_2_khr(commandBuffer, pRenderPassBegin, pSubpassBeginInfo)
    ccall((:vkCmdBeginRenderPass2KHR, libvulkan), Cvoid, (VkCommandBuffer, Ptr{VkRenderPassBeginInfo}, Ptr{VkSubpassBeginInfo}), commandBuffer, pRenderPassBegin, pSubpassBeginInfo)
end

function cmd_next_subpass_2_khr(commandBuffer, pSubpassBeginInfo, pSubpassEndInfo)
    ccall((:vkCmdNextSubpass2KHR, libvulkan), Cvoid, (VkCommandBuffer, Ptr{VkSubpassBeginInfo}, Ptr{VkSubpassEndInfo}), commandBuffer, pSubpassBeginInfo, pSubpassEndInfo)
end

function cmd_end_render_pass_2_khr(commandBuffer, pSubpassEndInfo)
    ccall((:vkCmdEndRenderPass2KHR, libvulkan), Cvoid, (VkCommandBuffer, Ptr{VkSubpassEndInfo}), commandBuffer, pSubpassEndInfo)
end

function get_swapchain_status_khr(device, swapchain)
    ccall((:vkGetSwapchainStatusKHR, libvulkan), VkResult, (VkDevice, VkSwapchainKHR), device, swapchain)
end

function get_physical_device_external_fence_properties_khr(physicalDevice, pExternalFenceInfo, pExternalFenceProperties)
    ccall((:vkGetPhysicalDeviceExternalFencePropertiesKHR, libvulkan), Cvoid, (VkPhysicalDevice, Ptr{VkPhysicalDeviceExternalFenceInfo}, Ptr{VkExternalFenceProperties}), physicalDevice,
          pExternalFenceInfo, pExternalFenceProperties)
end

function import_fence_fd_khr(device, pImportFenceFdInfo)
    ccall((:vkImportFenceFdKHR, libvulkan), VkResult, (VkDevice, Ptr{VkImportFenceFdInfoKHR}), device, pImportFenceFdInfo)
end

function get_fence_fd_khr(device, pGetFdInfo, pFd)
    ccall((:vkGetFenceFdKHR, libvulkan), VkResult, (VkDevice, Ptr{VkFenceGetFdInfoKHR}, Ptr{Cint}), device, pGetFdInfo, pFd)
end

function enumerate_physical_device_queue_family_performance_query_counters_khr(physical_device)
    count = Ref{UInt32}(0)
    @check vkEnumeratePhysicalDeviceQueueFamilyPerformanceQueryCountersKHR(physical_device, count, C_NULL)
    arr = Array{VkPerformanceCounterKHR}(undef, count[])
    @check vkEnumeratePhysicalDeviceQueueFamilyPerformanceQueryCountersKHR(physical_device, count, arr)
    Base.convert.(Ref(PerformanceCounterKHR), arr)
end

function get_physical_device_queue_family_performance_query_passes_khr(physicalDevice, pPerformanceQueryCreateInfo, pNumPasses)
    ccall((:vkGetPhysicalDeviceQueueFamilyPerformanceQueryPassesKHR, libvulkan), Cvoid, (VkPhysicalDevice, Ptr{VkQueryPoolPerformanceCreateInfoKHR}, Ptr{UInt32}), physicalDevice,
          pPerformanceQueryCreateInfo, pNumPasses)
end

function acquire_profiling_lock_khr(device, pInfo)
    ccall((:vkAcquireProfilingLockKHR, libvulkan), VkResult, (VkDevice, Ptr{VkAcquireProfilingLockInfoKHR}), device, pInfo)
end

function release_profiling_lock_khr(device)
    ccall((:vkReleaseProfilingLockKHR, libvulkan), Cvoid, (VkDevice,), device)
end

function get_physical_device_surface_capabilities_2_khr(physicalDevice, pSurfaceInfo, pSurfaceCapabilities)
    ccall((:vkGetPhysicalDeviceSurfaceCapabilities2KHR, libvulkan), VkResult, (VkPhysicalDevice, Ptr{VkPhysicalDeviceSurfaceInfo2KHR}, Ptr{VkSurfaceCapabilities2KHR}), physicalDevice, pSurfaceInfo,
          pSurfaceCapabilities)
end

function get_physical_device_surface_formats_2_khr(physical_device)
    count = Ref{UInt32}(0)
    @check vkGetPhysicalDeviceSurfaceFormats2KHR(physical_device, count, C_NULL)
    arr = Array{VkSurfaceFormat2KHR}(undef, count[])
    @check vkGetPhysicalDeviceSurfaceFormats2KHR(physical_device, count, arr)
    Base.convert.(Ref(SurfaceFormat2KHR), arr)
end

function get_physical_device_display_properties_2_khr(physical_device)
    count = Ref{UInt32}(0)
    @check vkGetPhysicalDeviceDisplayProperties2KHR(physical_device, count, C_NULL)
    arr = Array{VkDisplayProperties2KHR}(undef, count[])
    @check vkGetPhysicalDeviceDisplayProperties2KHR(physical_device, count, arr)
    Base.convert.(Ref(DisplayProperties2KHR), arr)
end

function get_physical_device_display_plane_properties_2_khr(physical_device)
    count = Ref{UInt32}(0)
    @check vkGetPhysicalDeviceDisplayPlaneProperties2KHR(physical_device, count, C_NULL)
    arr = Array{VkDisplayPlaneProperties2KHR}(undef, count[])
    @check vkGetPhysicalDeviceDisplayPlaneProperties2KHR(physical_device, count, arr)
    Base.convert.(Ref(DisplayPlaneProperties2KHR), arr)
end

function get_display_mode_properties_2_khr(physical_device)
    count = Ref{UInt32}(0)
    @check vkGetDisplayModeProperties2KHR(physical_device, count, C_NULL)
    arr = Array{VkDisplayModeProperties2KHR}(undef, count[])
    @check vkGetDisplayModeProperties2KHR(physical_device, count, arr)
    Base.convert.(Ref(DisplayModeProperties2KHR), arr)
end

function get_display_plane_capabilities_2_khr(physicalDevice, pDisplayPlaneInfo, pCapabilities)
    ccall((:vkGetDisplayPlaneCapabilities2KHR, libvulkan), VkResult, (VkPhysicalDevice, Ptr{VkDisplayPlaneInfo2KHR}, Ptr{VkDisplayPlaneCapabilities2KHR}), physicalDevice, pDisplayPlaneInfo,
          pCapabilities)
end

function get_image_memory_requirements_2_khr(device, pInfo, pMemoryRequirements)
    ccall((:vkGetImageMemoryRequirements2KHR, libvulkan), Cvoid, (VkDevice, Ptr{VkImageMemoryRequirementsInfo2}, Ptr{VkMemoryRequirements2}), device, pInfo, pMemoryRequirements)
end

function get_buffer_memory_requirements_2_khr(device, pInfo, pMemoryRequirements)
    ccall((:vkGetBufferMemoryRequirements2KHR, libvulkan), Cvoid, (VkDevice, Ptr{VkBufferMemoryRequirementsInfo2}, Ptr{VkMemoryRequirements2}), device, pInfo, pMemoryRequirements)
end

function get_image_sparse_memory_requirements_2_khr(device, pInfo, pSparseMemoryRequirementCount, pSparseMemoryRequirements)
    ccall((:vkGetImageSparseMemoryRequirements2KHR, libvulkan), Cvoid, (VkDevice, Ptr{VkImageSparseMemoryRequirementsInfo2}, Ptr{UInt32}, Ptr{VkSparseImageMemoryRequirements2}), device, pInfo,
          pSparseMemoryRequirementCount, pSparseMemoryRequirements)
end

function create_sampler_ycbcr_conversion_khr(device, pCreateInfo, pAllocator, pYcbcrConversion)
    ccall((:vkCreateSamplerYcbcrConversionKHR, libvulkan), VkResult, (VkDevice, Ptr{VkSamplerYcbcrConversionCreateInfo}, Ptr{VkAllocationCallbacks}, Ptr{VkSamplerYcbcrConversion}), device,
          pCreateInfo, pAllocator, pYcbcrConversion)
end

function destroy_sampler_ycbcr_conversion_khr(device, ycbcrConversion, pAllocator)
    ccall((:vkDestroySamplerYcbcrConversionKHR, libvulkan), Cvoid, (VkDevice, VkSamplerYcbcrConversion, Ptr{VkAllocationCallbacks}), device, ycbcrConversion, pAllocator)
end

function bind_buffer_memory_2_khr(device, bindInfoCount, pBindInfos)
    ccall((:vkBindBufferMemory2KHR, libvulkan), VkResult, (VkDevice, UInt32, Ptr{VkBindBufferMemoryInfo}), device, bindInfoCount, pBindInfos)
end

function bind_image_memory_2_khr(device, bindInfoCount, pBindInfos)
    ccall((:vkBindImageMemory2KHR, libvulkan), VkResult, (VkDevice, UInt32, Ptr{VkBindImageMemoryInfo}), device, bindInfoCount, pBindInfos)
end

function get_descriptor_set_layout_support_khr(device, pCreateInfo, pSupport)
    ccall((:vkGetDescriptorSetLayoutSupportKHR, libvulkan), Cvoid, (VkDevice, Ptr{VkDescriptorSetLayoutCreateInfo}, Ptr{VkDescriptorSetLayoutSupport}), device, pCreateInfo, pSupport)
end

function cmd_draw_indirect_count_khr(commandBuffer, buffer, offset, countBuffer, countBufferOffset, maxDrawCount, stride)
    ccall((:vkCmdDrawIndirectCountKHR, libvulkan), Cvoid, (VkCommandBuffer, VkBuffer, VkDeviceSize, VkBuffer, VkDeviceSize, UInt32, UInt32), commandBuffer, buffer, offset, countBuffer,
          countBufferOffset, maxDrawCount, stride)
end

function cmd_draw_indexed_indirect_count_khr(commandBuffer, buffer, offset, countBuffer, countBufferOffset, maxDrawCount, stride)
    ccall((:vkCmdDrawIndexedIndirectCountKHR, libvulkan), Cvoid, (VkCommandBuffer, VkBuffer, VkDeviceSize, VkBuffer, VkDeviceSize, UInt32, UInt32), commandBuffer, buffer, offset, countBuffer,
          countBufferOffset, maxDrawCount, stride)
end

function get_semaphore_counter_value_khr(device, semaphore, pValue)
    ccall((:vkGetSemaphoreCounterValueKHR, libvulkan), VkResult, (VkDevice, VkSemaphore, Ptr{UInt64}), device, semaphore, pValue)
end

function wait_semaphores_khr(device, pWaitInfo, timeout)
    ccall((:vkWaitSemaphoresKHR, libvulkan), VkResult, (VkDevice, Ptr{VkSemaphoreWaitInfo}, UInt64), device, pWaitInfo, timeout)
end

function signal_semaphore_khr(device, pSignalInfo)
    ccall((:vkSignalSemaphoreKHR, libvulkan), VkResult, (VkDevice, Ptr{VkSemaphoreSignalInfo}), device, pSignalInfo)
end

function get_buffer_device_address_khr(device, pInfo)
    ccall((:vkGetBufferDeviceAddressKHR, libvulkan), VkDeviceAddress, (VkDevice, Ptr{VkBufferDeviceAddressInfo}), device, pInfo)
end

function get_buffer_opaque_capture_address_khr(device, pInfo)
    ccall((:vkGetBufferOpaqueCaptureAddressKHR, libvulkan), UInt64, (VkDevice, Ptr{VkBufferDeviceAddressInfo}), device, pInfo)
end

function get_device_memory_opaque_capture_address_khr(device, pInfo)
    ccall((:vkGetDeviceMemoryOpaqueCaptureAddressKHR, libvulkan), UInt64, (VkDevice, Ptr{VkDeviceMemoryOpaqueCaptureAddressInfo}), device, pInfo)
end

function get_pipeline_executable_properties_khr(device)
    count = Ref{UInt32}(0)
    @check vkGetPipelineExecutablePropertiesKHR(device, count, C_NULL)
    arr = Array{VkPipelineExecutablePropertiesKHR}(undef, count[])
    @check vkGetPipelineExecutablePropertiesKHR(device, count, arr)
    Base.convert.(Ref(PipelineExecutablePropertiesKHR), arr)
end

function get_pipeline_executable_statistics_khr(device)
    count = Ref{UInt32}(0)
    @check vkGetPipelineExecutableStatisticsKHR(device, count, C_NULL)
    arr = Array{VkPipelineExecutableStatisticKHR}(undef, count[])
    @check vkGetPipelineExecutableStatisticsKHR(device, count, arr)
    Base.convert.(Ref(PipelineExecutableStatisticKHR), arr)
end

function get_pipeline_executable_internal_representations_khr(device)
    count = Ref{UInt32}(0)
    @check vkGetPipelineExecutableInternalRepresentationsKHR(device, count, C_NULL)
    arr = Array{VkPipelineExecutableInternalRepresentationKHR}(undef, count[])
    @check vkGetPipelineExecutableInternalRepresentationsKHR(device, count, arr)
    Base.convert.(Ref(PipelineExecutableInternalRepresentationKHR), arr)
end

function create_debug_report_callback_ext(instance, pCreateInfo, pAllocator, pCallback)
    ccall((:vkCreateDebugReportCallbackEXT, libvulkan), VkResult, (VkInstance, Ptr{VkDebugReportCallbackCreateInfoEXT}, Ptr{VkAllocationCallbacks}, Ptr{VkDebugReportCallbackEXT}), instance,
          pCreateInfo, pAllocator, pCallback)
end

function destroy_debug_report_callback_ext(instance, callback, pAllocator)
    ccall((:vkDestroyDebugReportCallbackEXT, libvulkan), Cvoid, (VkInstance, VkDebugReportCallbackEXT, Ptr{VkAllocationCallbacks}), instance, callback, pAllocator)
end

function debug_report_message_ext(instance, flags, objectType, object, location, messageCode, pLayerPrefix, pMessage)
    ccall((:vkDebugReportMessageEXT, libvulkan), Cvoid, (VkInstance, VkDebugReportFlagsEXT, VkDebugReportObjectTypeEXT, UInt64, Csize_t, Int32, Cstring, Cstring), instance, flags, objectType, object,
          location, messageCode, pLayerPrefix, pMessage)
end

function debug_marker_set_object_tag_ext(device, pTagInfo)
    ccall((:vkDebugMarkerSetObjectTagEXT, libvulkan), VkResult, (VkDevice, Ptr{VkDebugMarkerObjectTagInfoEXT}), device, pTagInfo)
end

function debug_marker_set_object_name_ext(device, pNameInfo)
    ccall((:vkDebugMarkerSetObjectNameEXT, libvulkan), VkResult, (VkDevice, Ptr{VkDebugMarkerObjectNameInfoEXT}), device, pNameInfo)
end

function cmd_debug_marker_begin_ext(commandBuffer, pMarkerInfo)
    ccall((:vkCmdDebugMarkerBeginEXT, libvulkan), Cvoid, (VkCommandBuffer, Ptr{VkDebugMarkerMarkerInfoEXT}), commandBuffer, pMarkerInfo)
end

function cmd_debug_marker_end_ext(commandBuffer)
    ccall((:vkCmdDebugMarkerEndEXT, libvulkan), Cvoid, (VkCommandBuffer,), commandBuffer)
end

function cmd_debug_marker_insert_ext(commandBuffer, pMarkerInfo)
    ccall((:vkCmdDebugMarkerInsertEXT, libvulkan), Cvoid, (VkCommandBuffer, Ptr{VkDebugMarkerMarkerInfoEXT}), commandBuffer, pMarkerInfo)
end

function cmd_bind_transform_feedback_buffers_ext(commandBuffer, firstBinding, bindingCount, pBuffers, pOffsets, pSizes)
    ccall((:vkCmdBindTransformFeedbackBuffersEXT, libvulkan), Cvoid, (VkCommandBuffer, UInt32, UInt32, Ptr{VkBuffer}, Ptr{VkDeviceSize}, Ptr{VkDeviceSize}), commandBuffer, firstBinding, bindingCount,
          pBuffers, pOffsets, pSizes)
end

function cmd_begin_transform_feedback_ext(commandBuffer, firstCounterBuffer, counterBufferCount, pCounterBuffers, pCounterBufferOffsets)
    ccall((:vkCmdBeginTransformFeedbackEXT, libvulkan), Cvoid, (VkCommandBuffer, UInt32, UInt32, Ptr{VkBuffer}, Ptr{VkDeviceSize}), commandBuffer, firstCounterBuffer, counterBufferCount,
          pCounterBuffers, pCounterBufferOffsets)
end

function cmd_end_transform_feedback_ext(commandBuffer, firstCounterBuffer, counterBufferCount, pCounterBuffers, pCounterBufferOffsets)
    ccall((:vkCmdEndTransformFeedbackEXT, libvulkan), Cvoid, (VkCommandBuffer, UInt32, UInt32, Ptr{VkBuffer}, Ptr{VkDeviceSize}), commandBuffer, firstCounterBuffer, counterBufferCount,
          pCounterBuffers, pCounterBufferOffsets)
end

function cmd_begin_query_indexed_ext(commandBuffer, queryPool, query, flags, index)
    ccall((:vkCmdBeginQueryIndexedEXT, libvulkan), Cvoid, (VkCommandBuffer, VkQueryPool, UInt32, VkQueryControlFlags, UInt32), commandBuffer, queryPool, query, flags, index)
end

function cmd_end_query_indexed_ext(commandBuffer, queryPool, query, index)
    ccall((:vkCmdEndQueryIndexedEXT, libvulkan), Cvoid, (VkCommandBuffer, VkQueryPool, UInt32, UInt32), commandBuffer, queryPool, query, index)
end

function cmd_draw_indirect_byte_count_ext(commandBuffer, instanceCount, firstInstance, counterBuffer, counterBufferOffset, counterOffset, vertexStride)
    ccall((:vkCmdDrawIndirectByteCountEXT, libvulkan), Cvoid, (VkCommandBuffer, UInt32, UInt32, VkBuffer, VkDeviceSize, UInt32, UInt32), commandBuffer, instanceCount, firstInstance, counterBuffer,
          counterBufferOffset, counterOffset, vertexStride)
end

function get_image_view_handle_nvx(device, pInfo)
    ccall((:vkGetImageViewHandleNVX, libvulkan), UInt32, (VkDevice, Ptr{VkImageViewHandleInfoNVX}), device, pInfo)
end

function get_image_view_address_nvx(device, imageView, pProperties)
    ccall((:vkGetImageViewAddressNVX, libvulkan), VkResult, (VkDevice, VkImageView, Ptr{VkImageViewAddressPropertiesNVX}), device, imageView, pProperties)
end

function cmd_draw_indirect_count_amd(commandBuffer, buffer, offset, countBuffer, countBufferOffset, maxDrawCount, stride)
    ccall((:vkCmdDrawIndirectCountAMD, libvulkan), Cvoid, (VkCommandBuffer, VkBuffer, VkDeviceSize, VkBuffer, VkDeviceSize, UInt32, UInt32), commandBuffer, buffer, offset, countBuffer,
          countBufferOffset, maxDrawCount, stride)
end

function cmd_draw_indexed_indirect_count_amd(commandBuffer, buffer, offset, countBuffer, countBufferOffset, maxDrawCount, stride)
    ccall((:vkCmdDrawIndexedIndirectCountAMD, libvulkan), Cvoid, (VkCommandBuffer, VkBuffer, VkDeviceSize, VkBuffer, VkDeviceSize, UInt32, UInt32), commandBuffer, buffer, offset, countBuffer,
          countBufferOffset, maxDrawCount, stride)
end

function get_shader_info_amd(device)
    count = Ref{UInt32}(0)
    @check vkGetShaderInfoAMD(device, count, C_NULL)
    arr = Array{void}(undef, count[])
    @check vkGetShaderInfoAMD(device, count, arr)
    arr
end

function get_physical_device_external_image_format_properties_nv(physicalDevice, format, type, tiling, usage, flags, externalHandleType, pExternalImageFormatProperties)
    ccall((:vkGetPhysicalDeviceExternalImageFormatPropertiesNV, libvulkan), VkResult,
          (VkPhysicalDevice, VkFormat, VkImageType, VkImageTiling, VkImageUsageFlags, VkImageCreateFlags, VkExternalMemoryHandleTypeFlagsNV, Ptr{VkExternalImageFormatPropertiesNV}), physicalDevice,
          format, type, tiling, usage, flags, externalHandleType, pExternalImageFormatProperties)
end

function cmd_begin_conditional_rendering_ext(commandBuffer, pConditionalRenderingBegin)
    ccall((:vkCmdBeginConditionalRenderingEXT, libvulkan), Cvoid, (VkCommandBuffer, Ptr{VkConditionalRenderingBeginInfoEXT}), commandBuffer, pConditionalRenderingBegin)
end

function cmd_end_conditional_rendering_ext(commandBuffer)
    ccall((:vkCmdEndConditionalRenderingEXT, libvulkan), Cvoid, (VkCommandBuffer,), commandBuffer)
end

function cmd_set_viewport_w_scaling_nv(commandBuffer, firstViewport, viewportCount, pViewportWScalings)
    ccall((:vkCmdSetViewportWScalingNV, libvulkan), Cvoid, (VkCommandBuffer, UInt32, UInt32, Ptr{VkViewportWScalingNV}), commandBuffer, firstViewport, viewportCount, pViewportWScalings)
end

function release_display_ext(physicalDevice, display)
    ccall((:vkReleaseDisplayEXT, libvulkan), VkResult, (VkPhysicalDevice, VkDisplayKHR), physicalDevice, display)
end

function get_physical_device_surface_capabilities_2_ext(physicalDevice, surface, pSurfaceCapabilities)
    ccall((:vkGetPhysicalDeviceSurfaceCapabilities2EXT, libvulkan), VkResult, (VkPhysicalDevice, VkSurfaceKHR, Ptr{VkSurfaceCapabilities2EXT}), physicalDevice, surface, pSurfaceCapabilities)
end

function display_power_control_ext(device, display, pDisplayPowerInfo)
    ccall((:vkDisplayPowerControlEXT, libvulkan), VkResult, (VkDevice, VkDisplayKHR, Ptr{VkDisplayPowerInfoEXT}), device, display, pDisplayPowerInfo)
end

function register_device_event_ext(device, pDeviceEventInfo, pAllocator, pFence)
    ccall((:vkRegisterDeviceEventEXT, libvulkan), VkResult, (VkDevice, Ptr{VkDeviceEventInfoEXT}, Ptr{VkAllocationCallbacks}, Ptr{VkFence}), device, pDeviceEventInfo, pAllocator, pFence)
end

function register_display_event_ext(device, display, pDisplayEventInfo, pAllocator, pFence)
    ccall((:vkRegisterDisplayEventEXT, libvulkan), VkResult, (VkDevice, VkDisplayKHR, Ptr{VkDisplayEventInfoEXT}, Ptr{VkAllocationCallbacks}, Ptr{VkFence}), device, display, pDisplayEventInfo,
          pAllocator, pFence)
end

function get_swapchain_counter_ext(device, swapchain, counter, pCounterValue)
    ccall((:vkGetSwapchainCounterEXT, libvulkan), VkResult, (VkDevice, VkSwapchainKHR, VkSurfaceCounterFlagBitsEXT, Ptr{UInt64}), device, swapchain, counter, pCounterValue)
end

function get_refresh_cycle_duration_google(device, swapchain, pDisplayTimingProperties)
    ccall((:vkGetRefreshCycleDurationGOOGLE, libvulkan), VkResult, (VkDevice, VkSwapchainKHR, Ptr{VkRefreshCycleDurationGOOGLE}), device, swapchain, pDisplayTimingProperties)
end

function get_past_presentation_timing_google(device)
    count = Ref{UInt32}(0)
    @check vkGetPastPresentationTimingGOOGLE(device, count, C_NULL)
    arr = Array{VkPastPresentationTimingGOOGLE}(undef, count[])
    @check vkGetPastPresentationTimingGOOGLE(device, count, arr)
    Base.convert.(Ref(PastPresentationTimingGOOGLE), arr)
end

function cmd_set_discard_rectangle_ext(commandBuffer, firstDiscardRectangle, discardRectangleCount, pDiscardRectangles)
    ccall((:vkCmdSetDiscardRectangleEXT, libvulkan), Cvoid, (VkCommandBuffer, UInt32, UInt32, Ptr{VkRect2D}), commandBuffer, firstDiscardRectangle, discardRectangleCount, pDiscardRectangles)
end

function set_hdr_metadata_ext(device, swapchainCount, pSwapchains, pMetadata)
    ccall((:vkSetHdrMetadataEXT, libvulkan), Cvoid, (VkDevice, UInt32, Ptr{VkSwapchainKHR}, Ptr{VkHdrMetadataEXT}), device, swapchainCount, pSwapchains, pMetadata)
end

function set_debug_utils_object_name_ext(device, pNameInfo)
    ccall((:vkSetDebugUtilsObjectNameEXT, libvulkan), VkResult, (VkDevice, Ptr{VkDebugUtilsObjectNameInfoEXT}), device, pNameInfo)
end

function set_debug_utils_object_tag_ext(device, pTagInfo)
    ccall((:vkSetDebugUtilsObjectTagEXT, libvulkan), VkResult, (VkDevice, Ptr{VkDebugUtilsObjectTagInfoEXT}), device, pTagInfo)
end

function queue_begin_debug_utils_label_ext(queue, pLabelInfo)
    ccall((:vkQueueBeginDebugUtilsLabelEXT, libvulkan), Cvoid, (VkQueue, Ptr{VkDebugUtilsLabelEXT}), queue, pLabelInfo)
end

function queue_end_debug_utils_label_ext(queue)
    ccall((:vkQueueEndDebugUtilsLabelEXT, libvulkan), Cvoid, (VkQueue,), queue)
end

function queue_insert_debug_utils_label_ext(queue, pLabelInfo)
    ccall((:vkQueueInsertDebugUtilsLabelEXT, libvulkan), Cvoid, (VkQueue, Ptr{VkDebugUtilsLabelEXT}), queue, pLabelInfo)
end

function cmd_begin_debug_utils_label_ext(commandBuffer, pLabelInfo)
    ccall((:vkCmdBeginDebugUtilsLabelEXT, libvulkan), Cvoid, (VkCommandBuffer, Ptr{VkDebugUtilsLabelEXT}), commandBuffer, pLabelInfo)
end

function cmd_end_debug_utils_label_ext(commandBuffer)
    ccall((:vkCmdEndDebugUtilsLabelEXT, libvulkan), Cvoid, (VkCommandBuffer,), commandBuffer)
end

function cmd_insert_debug_utils_label_ext(commandBuffer, pLabelInfo)
    ccall((:vkCmdInsertDebugUtilsLabelEXT, libvulkan), Cvoid, (VkCommandBuffer, Ptr{VkDebugUtilsLabelEXT}), commandBuffer, pLabelInfo)
end

function create_debug_utils_messenger_ext(instance, pCreateInfo, pAllocator, pMessenger)
    ccall((:vkCreateDebugUtilsMessengerEXT, libvulkan), VkResult, (VkInstance, Ptr{VkDebugUtilsMessengerCreateInfoEXT}, Ptr{VkAllocationCallbacks}, Ptr{VkDebugUtilsMessengerEXT}), instance,
          pCreateInfo, pAllocator, pMessenger)
end

function destroy_debug_utils_messenger_ext(instance, messenger, pAllocator)
    ccall((:vkDestroyDebugUtilsMessengerEXT, libvulkan), Cvoid, (VkInstance, VkDebugUtilsMessengerEXT, Ptr{VkAllocationCallbacks}), instance, messenger, pAllocator)
end

function submit_debug_utils_message_ext(instance, messageSeverity, messageTypes, pCallbackData)
    ccall((:vkSubmitDebugUtilsMessageEXT, libvulkan), Cvoid, (VkInstance, VkDebugUtilsMessageSeverityFlagBitsEXT, VkDebugUtilsMessageTypeFlagsEXT, Ptr{VkDebugUtilsMessengerCallbackDataEXT}), instance,
          messageSeverity, messageTypes, pCallbackData)
end

function cmd_set_sample_locations_ext(commandBuffer, pSampleLocationsInfo)
    ccall((:vkCmdSetSampleLocationsEXT, libvulkan), Cvoid, (VkCommandBuffer, Ptr{VkSampleLocationsInfoEXT}), commandBuffer, pSampleLocationsInfo)
end

function get_physical_device_multisample_properties_ext(physicalDevice, samples, pMultisampleProperties)
    ccall((:vkGetPhysicalDeviceMultisamplePropertiesEXT, libvulkan), Cvoid, (VkPhysicalDevice, VkSampleCountFlagBits, Ptr{VkMultisamplePropertiesEXT}), physicalDevice, samples, pMultisampleProperties)
end

function get_image_drm_format_modifier_properties_ext(device, image, pProperties)
    ccall((:vkGetImageDrmFormatModifierPropertiesEXT, libvulkan), VkResult, (VkDevice, VkImage, Ptr{VkImageDrmFormatModifierPropertiesEXT}), device, image, pProperties)
end

function create_validation_cache_ext(device, pCreateInfo, pAllocator, pValidationCache)
    ccall((:vkCreateValidationCacheEXT, libvulkan), VkResult, (VkDevice, Ptr{VkValidationCacheCreateInfoEXT}, Ptr{VkAllocationCallbacks}, Ptr{VkValidationCacheEXT}), device, pCreateInfo, pAllocator,
          pValidationCache)
end

function destroy_validation_cache_ext(device, validationCache, pAllocator)
    ccall((:vkDestroyValidationCacheEXT, libvulkan), Cvoid, (VkDevice, VkValidationCacheEXT, Ptr{VkAllocationCallbacks}), device, validationCache, pAllocator)
end

function merge_validation_caches_ext(device, dstCache, srcCacheCount, pSrcCaches)
    ccall((:vkMergeValidationCachesEXT, libvulkan), VkResult, (VkDevice, VkValidationCacheEXT, UInt32, Ptr{VkValidationCacheEXT}), device, dstCache, srcCacheCount, pSrcCaches)
end

function get_validation_cache_data_ext(device)
    count = Ref{UInt32}(0)
    @check vkGetValidationCacheDataEXT(device, count, C_NULL)
    arr = Array{void}(undef, count[])
    @check vkGetValidationCacheDataEXT(device, count, arr)
    arr
end

function cmd_bind_shading_rate_image_nv(commandBuffer, imageView, imageLayout)
    ccall((:vkCmdBindShadingRateImageNV, libvulkan), Cvoid, (VkCommandBuffer, VkImageView, VkImageLayout), commandBuffer, imageView, imageLayout)
end

function cmd_set_viewport_shading_rate_palette_nv(commandBuffer, firstViewport, viewportCount, pShadingRatePalettes)
    ccall((:vkCmdSetViewportShadingRatePaletteNV, libvulkan), Cvoid, (VkCommandBuffer, UInt32, UInt32, Ptr{VkShadingRatePaletteNV}), commandBuffer, firstViewport, viewportCount, pShadingRatePalettes)
end

function cmd_set_coarse_sample_order_nv(commandBuffer, sampleOrderType, customSampleOrderCount, pCustomSampleOrders)
    ccall((:vkCmdSetCoarseSampleOrderNV, libvulkan), Cvoid, (VkCommandBuffer, VkCoarseSampleOrderTypeNV, UInt32, Ptr{VkCoarseSampleOrderCustomNV}), commandBuffer, sampleOrderType,
          customSampleOrderCount, pCustomSampleOrders)
end

function create_acceleration_structure_nv(device, pCreateInfo, pAllocator, pAccelerationStructure)
    ccall((:vkCreateAccelerationStructureNV, libvulkan), VkResult, (VkDevice, Ptr{VkAccelerationStructureCreateInfoNV}, Ptr{VkAllocationCallbacks}, Ptr{VkAccelerationStructureNV}), device,
          pCreateInfo, pAllocator, pAccelerationStructure)
end

function destroy_acceleration_structure_khr(device, accelerationStructure, pAllocator)
    ccall((:vkDestroyAccelerationStructureKHR, libvulkan), Cvoid, (VkDevice, VkAccelerationStructureKHR, Ptr{VkAllocationCallbacks}), device, accelerationStructure, pAllocator)
end

function destroy_acceleration_structure_nv(device, accelerationStructure, pAllocator)
    ccall((:vkDestroyAccelerationStructureNV, libvulkan), Cvoid, (VkDevice, VkAccelerationStructureKHR, Ptr{VkAllocationCallbacks}), device, accelerationStructure, pAllocator)
end

function get_acceleration_structure_memory_requirements_nv(device, pInfo, pMemoryRequirements)
    ccall((:vkGetAccelerationStructureMemoryRequirementsNV, libvulkan), Cvoid, (VkDevice, Ptr{VkAccelerationStructureMemoryRequirementsInfoNV}, Ptr{VkMemoryRequirements2KHR}), device, pInfo,
          pMemoryRequirements)
end

function bind_acceleration_structure_memory_khr(device, bindInfoCount, pBindInfos)
    ccall((:vkBindAccelerationStructureMemoryKHR, libvulkan), VkResult, (VkDevice, UInt32, Ptr{VkBindAccelerationStructureMemoryInfoKHR}), device, bindInfoCount, pBindInfos)
end

function bind_acceleration_structure_memory_nv(device, bindInfoCount, pBindInfos)
    ccall((:vkBindAccelerationStructureMemoryNV, libvulkan), VkResult, (VkDevice, UInt32, Ptr{VkBindAccelerationStructureMemoryInfoKHR}), device, bindInfoCount, pBindInfos)
end

function cmd_build_acceleration_structure_nv(commandBuffer, pInfo, instanceData, instanceOffset, update, dst, src, scratch, scratchOffset)
    ccall((:vkCmdBuildAccelerationStructureNV, libvulkan), Cvoid,
          (VkCommandBuffer, Ptr{VkAccelerationStructureInfoNV}, VkBuffer, VkDeviceSize, VkBool32, VkAccelerationStructureKHR, VkAccelerationStructureKHR, VkBuffer, VkDeviceSize), commandBuffer, pInfo,
          instanceData, instanceOffset, update, dst, src, scratch, scratchOffset)
end

function cmd_copy_acceleration_structure_nv(commandBuffer, dst, src, mode)
    ccall((:vkCmdCopyAccelerationStructureNV, libvulkan), Cvoid, (VkCommandBuffer, VkAccelerationStructureKHR, VkAccelerationStructureKHR, VkCopyAccelerationStructureModeKHR), commandBuffer, dst, src,
          mode)
end

function cmd_trace_rays_nv(commandBuffer, raygenShaderBindingTableBuffer, raygenShaderBindingOffset, missShaderBindingTableBuffer, missShaderBindingOffset, missShaderBindingStride,
                           hitShaderBindingTableBuffer, hitShaderBindingOffset, hitShaderBindingStride, callableShaderBindingTableBuffer, callableShaderBindingOffset, callableShaderBindingStride,
                           width, height, depth)
    ccall((:vkCmdTraceRaysNV, libvulkan), Cvoid,
          (VkCommandBuffer, VkBuffer, VkDeviceSize, VkBuffer, VkDeviceSize, VkDeviceSize, VkBuffer, VkDeviceSize, VkDeviceSize, VkBuffer, VkDeviceSize, VkDeviceSize, UInt32, UInt32, UInt32),
          commandBuffer, raygenShaderBindingTableBuffer, raygenShaderBindingOffset, missShaderBindingTableBuffer, missShaderBindingOffset, missShaderBindingStride, hitShaderBindingTableBuffer,
          hitShaderBindingOffset, hitShaderBindingStride, callableShaderBindingTableBuffer, callableShaderBindingOffset, callableShaderBindingStride, width, height, depth)
end

function create_ray_tracing_pipelines_nv(device, pipelineCache, createInfoCount, pCreateInfos, pAllocator, pPipelines)
    ccall((:vkCreateRayTracingPipelinesNV, libvulkan), VkResult, (VkDevice, VkPipelineCache, UInt32, Ptr{VkRayTracingPipelineCreateInfoNV}, Ptr{VkAllocationCallbacks}, Ptr{VkPipeline}), device,
          pipelineCache, createInfoCount, pCreateInfos, pAllocator, pPipelines)
end

function get_ray_tracing_shader_group_handles_khr(device, pipeline, firstGroup, groupCount, dataSize, pData)
    ccall((:vkGetRayTracingShaderGroupHandlesKHR, libvulkan), VkResult, (VkDevice, VkPipeline, UInt32, UInt32, Csize_t, Ptr{Cvoid}), device, pipeline, firstGroup, groupCount, dataSize, pData)
end

function get_ray_tracing_shader_group_handles_nv(device, pipeline, firstGroup, groupCount, dataSize, pData)
    ccall((:vkGetRayTracingShaderGroupHandlesNV, libvulkan), VkResult, (VkDevice, VkPipeline, UInt32, UInt32, Csize_t, Ptr{Cvoid}), device, pipeline, firstGroup, groupCount, dataSize, pData)
end

function get_acceleration_structure_handle_nv(device, accelerationStructure, dataSize, pData)
    ccall((:vkGetAccelerationStructureHandleNV, libvulkan), VkResult, (VkDevice, VkAccelerationStructureKHR, Csize_t, Ptr{Cvoid}), device, accelerationStructure, dataSize, pData)
end

function cmd_write_acceleration_structures_properties_khr(commandBuffer, accelerationStructureCount, pAccelerationStructures, queryType, queryPool, firstQuery)
    ccall((:vkCmdWriteAccelerationStructuresPropertiesKHR, libvulkan), Cvoid, (VkCommandBuffer, UInt32, Ptr{VkAccelerationStructureKHR}, VkQueryType, VkQueryPool, UInt32), commandBuffer,
          accelerationStructureCount, pAccelerationStructures, queryType, queryPool, firstQuery)
end

function cmd_write_acceleration_structures_properties_nv(commandBuffer, accelerationStructureCount, pAccelerationStructures, queryType, queryPool, firstQuery)
    ccall((:vkCmdWriteAccelerationStructuresPropertiesNV, libvulkan), Cvoid, (VkCommandBuffer, UInt32, Ptr{VkAccelerationStructureKHR}, VkQueryType, VkQueryPool, UInt32), commandBuffer,
          accelerationStructureCount, pAccelerationStructures, queryType, queryPool, firstQuery)
end

function compile_deferred_nv(device, pipeline, shader)
    ccall((:vkCompileDeferredNV, libvulkan), VkResult, (VkDevice, VkPipeline, UInt32), device, pipeline, shader)
end

function get_memory_host_pointer_properties_ext(device, handleType, pHostPointer, pMemoryHostPointerProperties)
    ccall((:vkGetMemoryHostPointerPropertiesEXT, libvulkan), VkResult, (VkDevice, VkExternalMemoryHandleTypeFlagBits, Ptr{Cvoid}, Ptr{VkMemoryHostPointerPropertiesEXT}), device, handleType,
          pHostPointer, pMemoryHostPointerProperties)
end

function cmd_write_buffer_marker_amd(commandBuffer, pipelineStage, dstBuffer, dstOffset, marker)
    ccall((:vkCmdWriteBufferMarkerAMD, libvulkan), Cvoid, (VkCommandBuffer, VkPipelineStageFlagBits, VkBuffer, VkDeviceSize, UInt32), commandBuffer, pipelineStage, dstBuffer, dstOffset, marker)
end

function get_physical_device_calibrateable_time_domains_ext(physical_device)
    count = Ref{UInt32}(0)
    @check vkGetPhysicalDeviceCalibrateableTimeDomainsEXT(physical_device, count, C_NULL)
    arr = Array{VkTimeDomainEXT}(undef, count[])
    @check vkGetPhysicalDeviceCalibrateableTimeDomainsEXT(physical_device, count, arr)
    Base.convert.(Ref(TimeDomainEXT), arr)
end

function get_calibrated_timestamps_ext(device, timestampCount, pTimestampInfos, pTimestamps, pMaxDeviation)
    ccall((:vkGetCalibratedTimestampsEXT, libvulkan), VkResult, (VkDevice, UInt32, Ptr{VkCalibratedTimestampInfoEXT}, Ptr{UInt64}, Ptr{UInt64}), device, timestampCount, pTimestampInfos, pTimestamps,
          pMaxDeviation)
end

function cmd_draw_mesh_tasks_nv(commandBuffer, taskCount, firstTask)
    ccall((:vkCmdDrawMeshTasksNV, libvulkan), Cvoid, (VkCommandBuffer, UInt32, UInt32), commandBuffer, taskCount, firstTask)
end

function cmd_draw_mesh_tasks_indirect_nv(commandBuffer, buffer, offset, drawCount, stride)
    ccall((:vkCmdDrawMeshTasksIndirectNV, libvulkan), Cvoid, (VkCommandBuffer, VkBuffer, VkDeviceSize, UInt32, UInt32), commandBuffer, buffer, offset, drawCount, stride)
end

function cmd_draw_mesh_tasks_indirect_count_nv(commandBuffer, buffer, offset, countBuffer, countBufferOffset, maxDrawCount, stride)
    ccall((:vkCmdDrawMeshTasksIndirectCountNV, libvulkan), Cvoid, (VkCommandBuffer, VkBuffer, VkDeviceSize, VkBuffer, VkDeviceSize, UInt32, UInt32), commandBuffer, buffer, offset, countBuffer,
          countBufferOffset, maxDrawCount, stride)
end

function cmd_set_exclusive_scissor_nv(commandBuffer, firstExclusiveScissor, exclusiveScissorCount, pExclusiveScissors)
    ccall((:vkCmdSetExclusiveScissorNV, libvulkan), Cvoid, (VkCommandBuffer, UInt32, UInt32, Ptr{VkRect2D}), commandBuffer, firstExclusiveScissor, exclusiveScissorCount, pExclusiveScissors)
end

function cmd_set_checkpoint_nv(commandBuffer, pCheckpointMarker)
    ccall((:vkCmdSetCheckpointNV, libvulkan), Cvoid, (VkCommandBuffer, Ptr{Cvoid}), commandBuffer, pCheckpointMarker)
end

function get_queue_checkpoint_data_nv(queue)
    count = Ref{UInt32}(0)
    @check vkGetQueueCheckpointDataNV(queue, count, C_NULL)
    arr = Array{VkCheckpointDataNV}(undef, count[])
    @check vkGetQueueCheckpointDataNV(queue, count, arr)
    Base.convert.(Ref(CheckpointDataNV), arr)
end

function initialize_performance_api_intel(device, pInitializeInfo)
    ccall((:vkInitializePerformanceApiINTEL, libvulkan), VkResult, (VkDevice, Ptr{VkInitializePerformanceApiInfoINTEL}), device, pInitializeInfo)
end

function uninitialize_performance_api_intel(device)
    ccall((:vkUninitializePerformanceApiINTEL, libvulkan), Cvoid, (VkDevice,), device)
end

function cmd_set_performance_marker_intel(commandBuffer, pMarkerInfo)
    ccall((:vkCmdSetPerformanceMarkerINTEL, libvulkan), VkResult, (VkCommandBuffer, Ptr{VkPerformanceMarkerInfoINTEL}), commandBuffer, pMarkerInfo)
end

function cmd_set_performance_stream_marker_intel(commandBuffer, pMarkerInfo)
    ccall((:vkCmdSetPerformanceStreamMarkerINTEL, libvulkan), VkResult, (VkCommandBuffer, Ptr{VkPerformanceStreamMarkerInfoINTEL}), commandBuffer, pMarkerInfo)
end

function cmd_set_performance_override_intel(commandBuffer, pOverrideInfo)
    ccall((:vkCmdSetPerformanceOverrideINTEL, libvulkan), VkResult, (VkCommandBuffer, Ptr{VkPerformanceOverrideInfoINTEL}), commandBuffer, pOverrideInfo)
end

function acquire_performance_configuration_intel(device, pAcquireInfo, pConfiguration)
    ccall((:vkAcquirePerformanceConfigurationINTEL, libvulkan), VkResult, (VkDevice, Ptr{VkPerformanceConfigurationAcquireInfoINTEL}, Ptr{VkPerformanceConfigurationINTEL}), device, pAcquireInfo,
          pConfiguration)
end

function release_performance_configuration_intel(device, configuration)
    ccall((:vkReleasePerformanceConfigurationINTEL, libvulkan), VkResult, (VkDevice, VkPerformanceConfigurationINTEL), device, configuration)
end

function queue_set_performance_configuration_intel(queue, configuration)
    ccall((:vkQueueSetPerformanceConfigurationINTEL, libvulkan), VkResult, (VkQueue, VkPerformanceConfigurationINTEL), queue, configuration)
end

function get_performance_parameter_intel(device, parameter, pValue)
    ccall((:vkGetPerformanceParameterINTEL, libvulkan), VkResult, (VkDevice, VkPerformanceParameterTypeINTEL, Ptr{VkPerformanceValueINTEL}), device, parameter, pValue)
end

function set_local_dimming_amd(device, swapChain, localDimmingEnable)
    ccall((:vkSetLocalDimmingAMD, libvulkan), Cvoid, (VkDevice, VkSwapchainKHR, VkBool32), device, swapChain, localDimmingEnable)
end

function get_buffer_device_address_ext(device, pInfo)
    ccall((:vkGetBufferDeviceAddressEXT, libvulkan), VkDeviceAddress, (VkDevice, Ptr{VkBufferDeviceAddressInfo}), device, pInfo)
end

function get_physical_device_tool_properties_ext(physical_device)
    count = Ref{UInt32}(0)
    @check vkGetPhysicalDeviceToolPropertiesEXT(physical_device, count, C_NULL)
    arr = Array{VkPhysicalDeviceToolPropertiesEXT}(undef, count[])
    @check vkGetPhysicalDeviceToolPropertiesEXT(physical_device, count, arr)
    Base.convert.(Ref(PhysicalDeviceToolPropertiesEXT), arr)
end

function get_physical_device_cooperative_matrix_properties_nv(physical_device)
    count = Ref{UInt32}(0)
    @check vkGetPhysicalDeviceCooperativeMatrixPropertiesNV(physical_device, count, C_NULL)
    arr = Array{VkCooperativeMatrixPropertiesNV}(undef, count[])
    @check vkGetPhysicalDeviceCooperativeMatrixPropertiesNV(physical_device, count, arr)
    Base.convert.(Ref(CooperativeMatrixPropertiesNV), arr)
end

function get_physical_device_supported_framebuffer_mixed_samples_combinations_nv(physical_device)
    count = Ref{UInt32}(0)
    @check vkGetPhysicalDeviceSupportedFramebufferMixedSamplesCombinationsNV(physical_device, count, C_NULL)
    arr = Array{VkFramebufferMixedSamplesCombinationNV}(undef, count[])
    @check vkGetPhysicalDeviceSupportedFramebufferMixedSamplesCombinationsNV(physical_device, count, arr)
    Base.convert.(Ref(FramebufferMixedSamplesCombinationNV), arr)
end

function create_headless_surface_ext(instance, pCreateInfo, pAllocator, pSurface)
    ccall((:vkCreateHeadlessSurfaceEXT, libvulkan), VkResult, (VkInstance, Ptr{VkHeadlessSurfaceCreateInfoEXT}, Ptr{VkAllocationCallbacks}, Ptr{VkSurfaceKHR}), instance, pCreateInfo, pAllocator,
          pSurface)
end

function cmd_set_line_stipple_ext(commandBuffer, lineStippleFactor, lineStipplePattern)
    ccall((:vkCmdSetLineStippleEXT, libvulkan), Cvoid, (VkCommandBuffer, UInt32, UInt16), commandBuffer, lineStippleFactor, lineStipplePattern)
end

function reset_query_pool_ext(device, queryPool, firstQuery, queryCount)
    ccall((:vkResetQueryPoolEXT, libvulkan), Cvoid, (VkDevice, VkQueryPool, UInt32, UInt32), device, queryPool, firstQuery, queryCount)
end

function cmd_set_cull_mode_ext(commandBuffer, cullMode)
    ccall((:vkCmdSetCullModeEXT, libvulkan), Cvoid, (VkCommandBuffer, VkCullModeFlags), commandBuffer, cullMode)
end

function cmd_set_front_face_ext(commandBuffer, frontFace)
    ccall((:vkCmdSetFrontFaceEXT, libvulkan), Cvoid, (VkCommandBuffer, VkFrontFace), commandBuffer, frontFace)
end

function cmd_set_primitive_topology_ext(commandBuffer, primitiveTopology)
    ccall((:vkCmdSetPrimitiveTopologyEXT, libvulkan), Cvoid, (VkCommandBuffer, VkPrimitiveTopology), commandBuffer, primitiveTopology)
end

function cmd_set_viewport_with_count_ext(commandBuffer, viewportCount, pViewports)
    ccall((:vkCmdSetViewportWithCountEXT, libvulkan), Cvoid, (VkCommandBuffer, UInt32, Ptr{VkViewport}), commandBuffer, viewportCount, pViewports)
end

function cmd_set_scissor_with_count_ext(commandBuffer, scissorCount, pScissors)
    ccall((:vkCmdSetScissorWithCountEXT, libvulkan), Cvoid, (VkCommandBuffer, UInt32, Ptr{VkRect2D}), commandBuffer, scissorCount, pScissors)
end

function cmd_bind_vertex_buffers_2_ext(commandBuffer, firstBinding, bindingCount, pBuffers, pOffsets, pSizes, pStrides)
    ccall((:vkCmdBindVertexBuffers2EXT, libvulkan), Cvoid, (VkCommandBuffer, UInt32, UInt32, Ptr{VkBuffer}, Ptr{VkDeviceSize}, Ptr{VkDeviceSize}, Ptr{VkDeviceSize}), commandBuffer, firstBinding,
          bindingCount, pBuffers, pOffsets, pSizes, pStrides)
end

function cmd_set_depth_test_enable_ext(commandBuffer, depthTestEnable)
    ccall((:vkCmdSetDepthTestEnableEXT, libvulkan), Cvoid, (VkCommandBuffer, VkBool32), commandBuffer, depthTestEnable)
end

function cmd_set_depth_write_enable_ext(commandBuffer, depthWriteEnable)
    ccall((:vkCmdSetDepthWriteEnableEXT, libvulkan), Cvoid, (VkCommandBuffer, VkBool32), commandBuffer, depthWriteEnable)
end

function cmd_set_depth_compare_op_ext(commandBuffer, depthCompareOp)
    ccall((:vkCmdSetDepthCompareOpEXT, libvulkan), Cvoid, (VkCommandBuffer, VkCompareOp), commandBuffer, depthCompareOp)
end

function cmd_set_depth_bounds_test_enable_ext(commandBuffer, depthBoundsTestEnable)
    ccall((:vkCmdSetDepthBoundsTestEnableEXT, libvulkan), Cvoid, (VkCommandBuffer, VkBool32), commandBuffer, depthBoundsTestEnable)
end

function cmd_set_stencil_test_enable_ext(commandBuffer, stencilTestEnable)
    ccall((:vkCmdSetStencilTestEnableEXT, libvulkan), Cvoid, (VkCommandBuffer, VkBool32), commandBuffer, stencilTestEnable)
end

function cmd_set_stencil_op_ext(commandBuffer, faceMask, failOp, passOp, depthFailOp, compareOp)
    ccall((:vkCmdSetStencilOpEXT, libvulkan), Cvoid, (VkCommandBuffer, VkStencilFaceFlags, VkStencilOp, VkStencilOp, VkStencilOp, VkCompareOp), commandBuffer, faceMask, failOp, passOp, depthFailOp,
          compareOp)
end

function get_generated_commands_memory_requirements_nv(device, pInfo, pMemoryRequirements)
    ccall((:vkGetGeneratedCommandsMemoryRequirementsNV, libvulkan), Cvoid, (VkDevice, Ptr{VkGeneratedCommandsMemoryRequirementsInfoNV}, Ptr{VkMemoryRequirements2}), device, pInfo, pMemoryRequirements)
end

function cmd_preprocess_generated_commands_nv(commandBuffer, pGeneratedCommandsInfo)
    ccall((:vkCmdPreprocessGeneratedCommandsNV, libvulkan), Cvoid, (VkCommandBuffer, Ptr{VkGeneratedCommandsInfoNV}), commandBuffer, pGeneratedCommandsInfo)
end

function cmd_execute_generated_commands_nv(commandBuffer, isPreprocessed, pGeneratedCommandsInfo)
    ccall((:vkCmdExecuteGeneratedCommandsNV, libvulkan), Cvoid, (VkCommandBuffer, VkBool32, Ptr{VkGeneratedCommandsInfoNV}), commandBuffer, isPreprocessed, pGeneratedCommandsInfo)
end

function cmd_bind_pipeline_shader_group_nv(commandBuffer, pipelineBindPoint, pipeline, groupIndex)
    ccall((:vkCmdBindPipelineShaderGroupNV, libvulkan), Cvoid, (VkCommandBuffer, VkPipelineBindPoint, VkPipeline, UInt32), commandBuffer, pipelineBindPoint, pipeline, groupIndex)
end

function create_indirect_commands_layout_nv(device, pCreateInfo, pAllocator, pIndirectCommandsLayout)
    ccall((:vkCreateIndirectCommandsLayoutNV, libvulkan), VkResult, (VkDevice, Ptr{VkIndirectCommandsLayoutCreateInfoNV}, Ptr{VkAllocationCallbacks}, Ptr{VkIndirectCommandsLayoutNV}), device,
          pCreateInfo, pAllocator, pIndirectCommandsLayout)
end

function destroy_indirect_commands_layout_nv(device, indirectCommandsLayout, pAllocator)
    ccall((:vkDestroyIndirectCommandsLayoutNV, libvulkan), Cvoid, (VkDevice, VkIndirectCommandsLayoutNV, Ptr{VkAllocationCallbacks}), device, indirectCommandsLayout, pAllocator)
end

function create_private_data_slot_ext(device, pCreateInfo, pAllocator, pPrivateDataSlot)
    ccall((:vkCreatePrivateDataSlotEXT, libvulkan), VkResult, (VkDevice, Ptr{VkPrivateDataSlotCreateInfoEXT}, Ptr{VkAllocationCallbacks}, Ptr{VkPrivateDataSlotEXT}), device, pCreateInfo, pAllocator,
          pPrivateDataSlot)
end

function destroy_private_data_slot_ext(device, privateDataSlot, pAllocator)
    ccall((:vkDestroyPrivateDataSlotEXT, libvulkan), Cvoid, (VkDevice, VkPrivateDataSlotEXT, Ptr{VkAllocationCallbacks}), device, privateDataSlot, pAllocator)
end

function set_private_data_ext(device, objectType, objectHandle, privateDataSlot, data)
    ccall((:vkSetPrivateDataEXT, libvulkan), VkResult, (VkDevice, VkObjectType, UInt64, VkPrivateDataSlotEXT, UInt64), device, objectType, objectHandle, privateDataSlot, data)
end

function get_private_data_ext(device, objectType, objectHandle, privateDataSlot, pData)
    ccall((:vkGetPrivateDataEXT, libvulkan), Cvoid, (VkDevice, VkObjectType, UInt64, VkPrivateDataSlotEXT, Ptr{UInt64}), device, objectType, objectHandle, privateDataSlot, pData)
end

Base.convert(T::Type{Result}, e::VkResult) = T(UInt(e))
Base.convert(T::Type{StructureType}, e::VkStructureType) = T(UInt(e))
Base.convert(T::Type{ImageLayout}, e::VkImageLayout) = T(UInt(e))
Base.convert(T::Type{ObjectType}, e::VkObjectType) = T(UInt(e))
Base.convert(T::Type{VendorId}, e::VkVendorId) = T(UInt(e))
Base.convert(T::Type{PipelineCacheHeaderVersion}, e::VkPipelineCacheHeaderVersion) = T(UInt(e))
Base.convert(T::Type{SystemAllocationScope}, e::VkSystemAllocationScope) = T(UInt(e))
Base.convert(T::Type{InternalAllocationType}, e::VkInternalAllocationType) = T(UInt(e))
Base.convert(T::Type{Format}, e::VkFormat) = T(UInt(e))
Base.convert(T::Type{ImageTiling}, e::VkImageTiling) = T(UInt(e))
Base.convert(T::Type{ImageType}, e::VkImageType) = T(UInt(e))
Base.convert(T::Type{PhysicalDeviceType}, e::VkPhysicalDeviceType) = T(UInt(e))
Base.convert(T::Type{QueryType}, e::VkQueryType) = T(UInt(e))
Base.convert(T::Type{SharingMode}, e::VkSharingMode) = T(UInt(e))
Base.convert(T::Type{ComponentSwizzle}, e::VkComponentSwizzle) = T(UInt(e))
Base.convert(T::Type{ImageViewType}, e::VkImageViewType) = T(UInt(e))
Base.convert(T::Type{BlendFactor}, e::VkBlendFactor) = T(UInt(e))
Base.convert(T::Type{BlendOp}, e::VkBlendOp) = T(UInt(e))
Base.convert(T::Type{CompareOp}, e::VkCompareOp) = T(UInt(e))
Base.convert(T::Type{DynamicState}, e::VkDynamicState) = T(UInt(e))
Base.convert(T::Type{FrontFace}, e::VkFrontFace) = T(UInt(e))
Base.convert(T::Type{VertexInputRate}, e::VkVertexInputRate) = T(UInt(e))
Base.convert(T::Type{PrimitiveTopology}, e::VkPrimitiveTopology) = T(UInt(e))
Base.convert(T::Type{PolygonMode}, e::VkPolygonMode) = T(UInt(e))
Base.convert(T::Type{StencilOp}, e::VkStencilOp) = T(UInt(e))
Base.convert(T::Type{LogicOp}, e::VkLogicOp) = T(UInt(e))
Base.convert(T::Type{BorderColor}, e::VkBorderColor) = T(UInt(e))
Base.convert(T::Type{Filter}, e::VkFilter) = T(UInt(e))
Base.convert(T::Type{SamplerAddressMode}, e::VkSamplerAddressMode) = T(UInt(e))
Base.convert(T::Type{SamplerMipmapMode}, e::VkSamplerMipmapMode) = T(UInt(e))
Base.convert(T::Type{DescriptorType}, e::VkDescriptorType) = T(UInt(e))
Base.convert(T::Type{AttachmentLoadOp}, e::VkAttachmentLoadOp) = T(UInt(e))
Base.convert(T::Type{AttachmentStoreOp}, e::VkAttachmentStoreOp) = T(UInt(e))
Base.convert(T::Type{PipelineBindPoint}, e::VkPipelineBindPoint) = T(UInt(e))
Base.convert(T::Type{CommandBufferLevel}, e::VkCommandBufferLevel) = T(UInt(e))
Base.convert(T::Type{IndexType}, e::VkIndexType) = T(UInt(e))
Base.convert(T::Type{SubpassContents}, e::VkSubpassContents) = T(UInt(e))
Base.convert(T::Type{AccessFlagBits}, e::VkAccessFlagBits) = T(UInt(e))
Base.convert(T::Type{ImageAspectFlagBits}, e::VkImageAspectFlagBits) = T(UInt(e))
Base.convert(T::Type{FormatFeatureFlagBits}, e::VkFormatFeatureFlagBits) = T(UInt(e))
Base.convert(T::Type{ImageCreateFlagBits}, e::VkImageCreateFlagBits) = T(UInt(e))
Base.convert(T::Type{SampleCountFlagBits}, e::VkSampleCountFlagBits) = T(UInt(e))
Base.convert(T::Type{ImageUsageFlagBits}, e::VkImageUsageFlagBits) = T(UInt(e))
Base.convert(T::Type{MemoryHeapFlagBits}, e::VkMemoryHeapFlagBits) = T(UInt(e))
Base.convert(T::Type{MemoryPropertyFlagBits}, e::VkMemoryPropertyFlagBits) = T(UInt(e))
Base.convert(T::Type{QueueFlagBits}, e::VkQueueFlagBits) = T(UInt(e))
Base.convert(T::Type{DeviceQueueCreateFlagBits}, e::VkDeviceQueueCreateFlagBits) = T(UInt(e))
Base.convert(T::Type{PipelineStageFlagBits}, e::VkPipelineStageFlagBits) = T(UInt(e))
Base.convert(T::Type{SparseMemoryBindFlagBits}, e::VkSparseMemoryBindFlagBits) = T(UInt(e))
Base.convert(T::Type{SparseImageFormatFlagBits}, e::VkSparseImageFormatFlagBits) = T(UInt(e))
Base.convert(T::Type{FenceCreateFlagBits}, e::VkFenceCreateFlagBits) = T(UInt(e))
Base.convert(T::Type{QueryPipelineStatisticFlagBits}, e::VkQueryPipelineStatisticFlagBits) = T(UInt(e))
Base.convert(T::Type{QueryResultFlagBits}, e::VkQueryResultFlagBits) = T(UInt(e))
Base.convert(T::Type{BufferCreateFlagBits}, e::VkBufferCreateFlagBits) = T(UInt(e))
Base.convert(T::Type{BufferUsageFlagBits}, e::VkBufferUsageFlagBits) = T(UInt(e))
Base.convert(T::Type{ImageViewCreateFlagBits}, e::VkImageViewCreateFlagBits) = T(UInt(e))
Base.convert(T::Type{ShaderModuleCreateFlagBits}, e::VkShaderModuleCreateFlagBits) = T(UInt(e))
Base.convert(T::Type{PipelineCacheCreateFlagBits}, e::VkPipelineCacheCreateFlagBits) = T(UInt(e))
Base.convert(T::Type{ColorComponentFlagBits}, e::VkColorComponentFlagBits) = T(UInt(e))
Base.convert(T::Type{PipelineCreateFlagBits}, e::VkPipelineCreateFlagBits) = T(UInt(e))
Base.convert(T::Type{PipelineShaderStageCreateFlagBits}, e::VkPipelineShaderStageCreateFlagBits) = T(UInt(e))
Base.convert(T::Type{ShaderStageFlagBits}, e::VkShaderStageFlagBits) = T(UInt(e))
Base.convert(T::Type{CullModeFlagBits}, e::VkCullModeFlagBits) = T(UInt(e))
Base.convert(T::Type{SamplerCreateFlagBits}, e::VkSamplerCreateFlagBits) = T(UInt(e))
Base.convert(T::Type{DescriptorPoolCreateFlagBits}, e::VkDescriptorPoolCreateFlagBits) = T(UInt(e))
Base.convert(T::Type{DescriptorSetLayoutCreateFlagBits}, e::VkDescriptorSetLayoutCreateFlagBits) = T(UInt(e))
Base.convert(T::Type{AttachmentDescriptionFlagBits}, e::VkAttachmentDescriptionFlagBits) = T(UInt(e))
Base.convert(T::Type{DependencyFlagBits}, e::VkDependencyFlagBits) = T(UInt(e))
Base.convert(T::Type{FramebufferCreateFlagBits}, e::VkFramebufferCreateFlagBits) = T(UInt(e))
Base.convert(T::Type{RenderPassCreateFlagBits}, e::VkRenderPassCreateFlagBits) = T(UInt(e))
Base.convert(T::Type{SubpassDescriptionFlagBits}, e::VkSubpassDescriptionFlagBits) = T(UInt(e))
Base.convert(T::Type{CommandPoolCreateFlagBits}, e::VkCommandPoolCreateFlagBits) = T(UInt(e))
Base.convert(T::Type{CommandPoolResetFlagBits}, e::VkCommandPoolResetFlagBits) = T(UInt(e))
Base.convert(T::Type{CommandBufferUsageFlagBits}, e::VkCommandBufferUsageFlagBits) = T(UInt(e))
Base.convert(T::Type{QueryControlFlagBits}, e::VkQueryControlFlagBits) = T(UInt(e))
Base.convert(T::Type{CommandBufferResetFlagBits}, e::VkCommandBufferResetFlagBits) = T(UInt(e))
Base.convert(T::Type{StencilFaceFlagBits}, e::VkStencilFaceFlagBits) = T(UInt(e))
Base.convert(T::Type{PointClippingBehavior}, e::VkPointClippingBehavior) = T(UInt(e))
Base.convert(T::Type{TessellationDomainOrigin}, e::VkTessellationDomainOrigin) = T(UInt(e))
Base.convert(T::Type{SamplerYcbcrModelConversion}, e::VkSamplerYcbcrModelConversion) = T(UInt(e))
Base.convert(T::Type{SamplerYcbcrRange}, e::VkSamplerYcbcrRange) = T(UInt(e))
Base.convert(T::Type{ChromaLocation}, e::VkChromaLocation) = T(UInt(e))
Base.convert(T::Type{DescriptorUpdateTemplateType}, e::VkDescriptorUpdateTemplateType) = T(UInt(e))
Base.convert(T::Type{SubgroupFeatureFlagBits}, e::VkSubgroupFeatureFlagBits) = T(UInt(e))
Base.convert(T::Type{PeerMemoryFeatureFlagBits}, e::VkPeerMemoryFeatureFlagBits) = T(UInt(e))
Base.convert(T::Type{MemoryAllocateFlagBits}, e::VkMemoryAllocateFlagBits) = T(UInt(e))
Base.convert(T::Type{ExternalMemoryHandleTypeFlagBits}, e::VkExternalMemoryHandleTypeFlagBits) = T(UInt(e))
Base.convert(T::Type{ExternalMemoryFeatureFlagBits}, e::VkExternalMemoryFeatureFlagBits) = T(UInt(e))
Base.convert(T::Type{ExternalFenceHandleTypeFlagBits}, e::VkExternalFenceHandleTypeFlagBits) = T(UInt(e))
Base.convert(T::Type{ExternalFenceFeatureFlagBits}, e::VkExternalFenceFeatureFlagBits) = T(UInt(e))
Base.convert(T::Type{FenceImportFlagBits}, e::VkFenceImportFlagBits) = T(UInt(e))
Base.convert(T::Type{SemaphoreImportFlagBits}, e::VkSemaphoreImportFlagBits) = T(UInt(e))
Base.convert(T::Type{ExternalSemaphoreHandleTypeFlagBits}, e::VkExternalSemaphoreHandleTypeFlagBits) = T(UInt(e))
Base.convert(T::Type{ExternalSemaphoreFeatureFlagBits}, e::VkExternalSemaphoreFeatureFlagBits) = T(UInt(e))
Base.convert(T::Type{DriverId}, e::VkDriverId) = T(UInt(e))
Base.convert(T::Type{ShaderFloatControlsIndependence}, e::VkShaderFloatControlsIndependence) = T(UInt(e))
Base.convert(T::Type{SamplerReductionMode}, e::VkSamplerReductionMode) = T(UInt(e))
Base.convert(T::Type{SemaphoreType}, e::VkSemaphoreType) = T(UInt(e))
Base.convert(T::Type{ResolveModeFlagBits}, e::VkResolveModeFlagBits) = T(UInt(e))
Base.convert(T::Type{DescriptorBindingFlagBits}, e::VkDescriptorBindingFlagBits) = T(UInt(e))
Base.convert(T::Type{SemaphoreWaitFlagBits}, e::VkSemaphoreWaitFlagBits) = T(UInt(e))
Base.convert(T::Type{PresentModeKHR}, e::VkPresentModeKHR) = T(UInt(e))
Base.convert(T::Type{ColorSpaceKHR}, e::VkColorSpaceKHR) = T(UInt(e))
Base.convert(T::Type{SurfaceTransformFlagBitsKHR}, e::VkSurfaceTransformFlagBitsKHR) = T(UInt(e))
Base.convert(T::Type{CompositeAlphaFlagBitsKHR}, e::VkCompositeAlphaFlagBitsKHR) = T(UInt(e))
Base.convert(T::Type{SwapchainCreateFlagBitsKHR}, e::VkSwapchainCreateFlagBitsKHR) = T(UInt(e))
Base.convert(T::Type{DeviceGroupPresentModeFlagBitsKHR}, e::VkDeviceGroupPresentModeFlagBitsKHR) = T(UInt(e))
Base.convert(T::Type{DisplayPlaneAlphaFlagBitsKHR}, e::VkDisplayPlaneAlphaFlagBitsKHR) = T(UInt(e))
Base.convert(T::Type{PerformanceCounterUnitKHR}, e::VkPerformanceCounterUnitKHR) = T(UInt(e))
Base.convert(T::Type{PerformanceCounterScopeKHR}, e::VkPerformanceCounterScopeKHR) = T(UInt(e))
Base.convert(T::Type{PerformanceCounterStorageKHR}, e::VkPerformanceCounterStorageKHR) = T(UInt(e))
Base.convert(T::Type{PerformanceCounterDescriptionFlagBitsKHR}, e::VkPerformanceCounterDescriptionFlagBitsKHR) = T(UInt(e))
Base.convert(T::Type{AcquireProfilingLockFlagBitsKHR}, e::VkAcquireProfilingLockFlagBitsKHR) = T(UInt(e))
Base.convert(T::Type{PipelineExecutableStatisticFormatKHR}, e::VkPipelineExecutableStatisticFormatKHR) = T(UInt(e))
Base.convert(T::Type{DebugReportObjectTypeEXT}, e::VkDebugReportObjectTypeEXT) = T(UInt(e))
Base.convert(T::Type{DebugReportFlagBitsEXT}, e::VkDebugReportFlagBitsEXT) = T(UInt(e))
Base.convert(T::Type{RasterizationOrderAMD}, e::VkRasterizationOrderAMD) = T(UInt(e))
Base.convert(T::Type{ShaderInfoTypeAMD}, e::VkShaderInfoTypeAMD) = T(UInt(e))
Base.convert(T::Type{ExternalMemoryHandleTypeFlagBitsNV}, e::VkExternalMemoryHandleTypeFlagBitsNV) = T(UInt(e))
Base.convert(T::Type{ExternalMemoryFeatureFlagBitsNV}, e::VkExternalMemoryFeatureFlagBitsNV) = T(UInt(e))
Base.convert(T::Type{ValidationCheckEXT}, e::VkValidationCheckEXT) = T(UInt(e))
Base.convert(T::Type{ConditionalRenderingFlagBitsEXT}, e::VkConditionalRenderingFlagBitsEXT) = T(UInt(e))
Base.convert(T::Type{SurfaceCounterFlagBitsEXT}, e::VkSurfaceCounterFlagBitsEXT) = T(UInt(e))
Base.convert(T::Type{DisplayPowerStateEXT}, e::VkDisplayPowerStateEXT) = T(UInt(e))
Base.convert(T::Type{DeviceEventTypeEXT}, e::VkDeviceEventTypeEXT) = T(UInt(e))
Base.convert(T::Type{DisplayEventTypeEXT}, e::VkDisplayEventTypeEXT) = T(UInt(e))
Base.convert(T::Type{ViewportCoordinateSwizzleNV}, e::VkViewportCoordinateSwizzleNV) = T(UInt(e))
Base.convert(T::Type{DiscardRectangleModeEXT}, e::VkDiscardRectangleModeEXT) = T(UInt(e))
Base.convert(T::Type{ConservativeRasterizationModeEXT}, e::VkConservativeRasterizationModeEXT) = T(UInt(e))
Base.convert(T::Type{DebugUtilsMessageSeverityFlagBitsEXT}, e::VkDebugUtilsMessageSeverityFlagBitsEXT) = T(UInt(e))
Base.convert(T::Type{DebugUtilsMessageTypeFlagBitsEXT}, e::VkDebugUtilsMessageTypeFlagBitsEXT) = T(UInt(e))
Base.convert(T::Type{BlendOverlapEXT}, e::VkBlendOverlapEXT) = T(UInt(e))
Base.convert(T::Type{CoverageModulationModeNV}, e::VkCoverageModulationModeNV) = T(UInt(e))
Base.convert(T::Type{ValidationCacheHeaderVersionEXT}, e::VkValidationCacheHeaderVersionEXT) = T(UInt(e))
Base.convert(T::Type{ShadingRatePaletteEntryNV}, e::VkShadingRatePaletteEntryNV) = T(UInt(e))
Base.convert(T::Type{CoarseSampleOrderTypeNV}, e::VkCoarseSampleOrderTypeNV) = T(UInt(e))
Base.convert(T::Type{RayTracingShaderGroupTypeKHR}, e::VkRayTracingShaderGroupTypeKHR) = T(UInt(e))
Base.convert(T::Type{GeometryTypeKHR}, e::VkGeometryTypeKHR) = T(UInt(e))
Base.convert(T::Type{AccelerationStructureTypeKHR}, e::VkAccelerationStructureTypeKHR) = T(UInt(e))
Base.convert(T::Type{CopyAccelerationStructureModeKHR}, e::VkCopyAccelerationStructureModeKHR) = T(UInt(e))
Base.convert(T::Type{AccelerationStructureMemoryRequirementsTypeKHR}, e::VkAccelerationStructureMemoryRequirementsTypeKHR) = T(UInt(e))
Base.convert(T::Type{GeometryFlagBitsKHR}, e::VkGeometryFlagBitsKHR) = T(UInt(e))
Base.convert(T::Type{GeometryInstanceFlagBitsKHR}, e::VkGeometryInstanceFlagBitsKHR) = T(UInt(e))
Base.convert(T::Type{BuildAccelerationStructureFlagBitsKHR}, e::VkBuildAccelerationStructureFlagBitsKHR) = T(UInt(e))
Base.convert(T::Type{QueueGlobalPriorityEXT}, e::VkQueueGlobalPriorityEXT) = T(UInt(e))
Base.convert(T::Type{PipelineCompilerControlFlagBitsAMD}, e::VkPipelineCompilerControlFlagBitsAMD) = T(UInt(e))
Base.convert(T::Type{TimeDomainEXT}, e::VkTimeDomainEXT) = T(UInt(e))
Base.convert(T::Type{MemoryOverallocationBehaviorAMD}, e::VkMemoryOverallocationBehaviorAMD) = T(UInt(e))
Base.convert(T::Type{PipelineCreationFeedbackFlagBitsEXT}, e::VkPipelineCreationFeedbackFlagBitsEXT) = T(UInt(e))
Base.convert(T::Type{PerformanceConfigurationTypeINTEL}, e::VkPerformanceConfigurationTypeINTEL) = T(UInt(e))
Base.convert(T::Type{QueryPoolSamplingModeINTEL}, e::VkQueryPoolSamplingModeINTEL) = T(UInt(e))
Base.convert(T::Type{PerformanceOverrideTypeINTEL}, e::VkPerformanceOverrideTypeINTEL) = T(UInt(e))
Base.convert(T::Type{PerformanceParameterTypeINTEL}, e::VkPerformanceParameterTypeINTEL) = T(UInt(e))
Base.convert(T::Type{PerformanceValueTypeINTEL}, e::VkPerformanceValueTypeINTEL) = T(UInt(e))
Base.convert(T::Type{ShaderCorePropertiesFlagBitsAMD}, e::VkShaderCorePropertiesFlagBitsAMD) = T(UInt(e))
Base.convert(T::Type{ToolPurposeFlagBitsEXT}, e::VkToolPurposeFlagBitsEXT) = T(UInt(e))
Base.convert(T::Type{ValidationFeatureEnableEXT}, e::VkValidationFeatureEnableEXT) = T(UInt(e))
Base.convert(T::Type{ValidationFeatureDisableEXT}, e::VkValidationFeatureDisableEXT) = T(UInt(e))
Base.convert(T::Type{ComponentTypeNV}, e::VkComponentTypeNV) = T(UInt(e))
Base.convert(T::Type{ScopeNV}, e::VkScopeNV) = T(UInt(e))
Base.convert(T::Type{CoverageReductionModeNV}, e::VkCoverageReductionModeNV) = T(UInt(e))
Base.convert(T::Type{LineRasterizationModeEXT}, e::VkLineRasterizationModeEXT) = T(UInt(e))
Base.convert(T::Type{IndirectCommandsTokenTypeNV}, e::VkIndirectCommandsTokenTypeNV) = T(UInt(e))
Base.convert(T::Type{IndirectStateFlagBitsNV}, e::VkIndirectStateFlagBitsNV) = T(UInt(e))
Base.convert(T::Type{IndirectCommandsLayoutUsageFlagBitsNV}, e::VkIndirectCommandsLayoutUsageFlagBitsNV) = T(UInt(e))
Base.convert(T::Type{PrivateDataSlotCreateFlagBitsEXT}, e::VkPrivateDataSlotCreateFlagBitsEXT) = T(UInt(e))
Base.convert(T::Type{DeviceDiagnosticsConfigFlagBitsNV}, e::VkDeviceDiagnosticsConfigFlagBitsNV) = T(UInt(e))
Base.convert(T::Type{AccelerationStructureBuildTypeKHR}, e::VkAccelerationStructureBuildTypeKHR) = T(UInt(e))
