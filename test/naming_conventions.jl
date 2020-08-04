using VulkanGen:prefix_vk, CamelCaseLower, CamelCaseUpper, SnakeCaseLower, SnakeCaseUpper, remove_parts

s1 = SnakeCaseLower("my_naming_convention")
s2 = SnakeCaseUpper("MY_NAMING_CONVENTION")
c1 = CamelCaseLower("myNamingConvention")
c2 = CamelCaseUpper("MyNamingConvention")
longstr = SnakeCaseLower("my_snake_case_with_many_words")

@testset "Naming conventions" begin
    @testset "Conversions" begin
        @test Base.convert(CamelCaseLower, s1) == c1
        @test Base.convert(CamelCaseLower, s2) == c1
        @test Base.convert(CamelCaseUpper, s1) == c2
        @test Base.convert(CamelCaseUpper, s2) == c2
        @test Base.convert(SnakeCaseLower, c1) == s1
        @test Base.convert(SnakeCaseLower, c2) == s1
        @test Base.convert(SnakeCaseUpper, c1) == s2
        @test Base.convert(SnakeCaseUpper, c2) == s2
    end
    @testset "Apply Vulkan prefixes" begin
        @test prefix_vk(c2.value, :structs) == "Vk$(c2.value)"
        @test prefix_vk(c1.value, :functions) == "vk$(c2.value)"
        @test prefix_vk(s2.value, :constants) == "VK_$(s2.value)"
    end
    @testset "Conventions utils" begin
        @test remove_parts(longstr, 1, 3).value == "snake_with_many_words"
        @test remove_parts(longstr, 1).value == "snake_case_with_many_words"
    end
end