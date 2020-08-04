using VulkanGen:Signature

f(x::Int64, y::Float64) = 5x + y

sig = Signature(first(methods(f)))
sig_f = Signature(f)

@testset "Signatures" begin
    @test sig.names == ["x", "y"]
    @test sig.types == ["Int64", "Float64"]
    @test sig_f.names == sig.names
    @test sig_f.types == sig.types
end