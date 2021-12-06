module AugmentedGPLikelihoods


using Reexport

using Distributions
@reexport using GPLikelihoods
using GPLikelihoods: AbstractLikelihood
using Random: AbstractRNG, GLOBAL_RNG

export init_aux_variables, init_aux_posterior
export aux_sample, aux_sample!
export aux_posterior, aux_posterior!
export vi_shift, vi_rate
export sample_shift, sample_rate

export aug_loglik, aug_expected_loglik
export aux_prior, kl_term

include("api.jl")
include("generic.jl")
include("SpecialDistributions/SpecialDistributions.jl")
using .SpecialDistributions

include("likelihoods/bernoulli.jl")


end
