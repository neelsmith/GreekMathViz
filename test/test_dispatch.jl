
@testset "Test dispatching methods for reading match content" begin
    euclid_def1 = CtsUrn("urn:cts:greekLit:tlg1799.001.luxor:1.def.1")
    @test is_euclid(euclid_def1)

    homer = CtsUrn("urn:cts:greekLit:tlg0012.001:1.
    1")
    @test readmath(homer) |> isnothing

    euc_def1_1 = CtsUrn("urn:cts:greekLit:tlg1799.tlg001.luxor:1.def.1")

    @test_throws ArgumentError readmath(euc_def1_1, format = :nope_not_this)

    wrong_version = CtsUrn("urn:cts:greekLit:tlg1799.tlg001.NOT_LUXOR:1.def.1")
    @test  readmath(wrong_version) |> isnothing

end