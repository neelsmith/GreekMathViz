
@testset "Test dispatching methods" begin
    homer = CtsUrn("urn:cts:greekLit:tlg0012.001:1.
    1")
    @test readmath(homer) |> isnothing
end