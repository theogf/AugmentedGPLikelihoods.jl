@testset "Laplace" begin
    test_interface(LaplaceLikelihood(3.0), Laplace)
    test_auglik(LaplaceLikelihood(1.0); rng=MersenneTwister(42))
end
