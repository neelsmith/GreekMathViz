
@testset "Test dispatching methods" begin
    homer = CtsUrn("urn:cts:greekLit:tlg0012.001:1.
    1")
    @test readmath(homer) |> isnothing

    euclid_def1 = CtsUrn("urn:cts:greekLit:tlg1799.001.luxor:1.def.1")
    @test is_euclid(euclid_def1)
end