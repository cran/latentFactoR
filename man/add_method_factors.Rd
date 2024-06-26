% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/add_methods_factors.R
\name{add_method_factors}
\alias{add_method_factors}
\title{Adds Methods Factors to \code{\link[latentFactoR]{simulate_factors}} Data}
\usage{
add_method_factors(
  lf_object,
  proportion_negative = 0.5,
  proportion_negative_range = NULL,
  methods_factors,
  methods_loadings,
  methods_loadings_range = 0,
  methods_correlations,
  methods_correlations_range = NULL
)
}
\arguments{
\item{lf_object}{Data object from \code{\link[latentFactoR]{simulate_factors}}.
Data \strong{must} be categorical. If data are not categorical, then
there function with throw an error}

\item{proportion_negative}{Numeric (length = 1 or \code{factors}).
Proportion of variables that should have negative (or flipped) dominant loadings across all
or each factor. Accepts number of variables as well.
The first variables on each factor, up to the corresponding proportion, will be
flipped. Set to \code{0} to not have any loadings flipped.
Defaults to \code{0.50}}

\item{proportion_negative_range}{Numeric (length = 2).
Range of proportion of variables that are randomly selected from
a uniform distribution. Accepts number of number of variables as well.
Defaults to \code{NULL}}

\item{methods_factors}{Numeric}

\item{methods_loadings}{Numeric}

\item{methods_loadings_range}{Numeric}

\item{methods_correlations}{Numeric}

\item{methods_correlations_range}{Numeric}
}
\value{
Returns a list containing:

\item{data}{Biased data simulated data from the specified factor model}

\item{unbiased_data}{The corresponding unbiased data prior to replacing values
to generate the (biased) \code{data}}

\item{parameters}{Bias-adjusted parameters of the \code{lf_object} input into function}

\item{original_results}{Original \code{lf_object} input into function}
}
\description{
Adds methods factors to simulated data from \code{\link[latentFactoR]{simulate_factors}}.
See examples to get started
}
\examples{
# Generate factor data
two_factor <- simulate_factors(
  factors = 2, # factors = 2
  variables = 6, # variables per factor = 6
  loadings = 0.55, # loadings between = 0.45 to 0.65
  cross_loadings = 0.05, # cross-loadings N(0, 0.05)
  correlations = 0.30, # correlation between factors = 0.30
  sample_size = 1000, # number of cases = 1000
  variable_categories = 5 # 5-point Likert scale
)

# Add methods factors
two_factor_methods_effect <- add_method_factors(
  lf_object = two_factor,
  proportion_negative = 0.50,
  methods_loadings = 0.20,
  methods_loadings_range = 0.10
)

}
\references{
Garcia-Pardina, A., Abad, F. J., Christensen, A. P., Golino, H., & Garrido, L. E. (2024).
Dimensionality assessment in the presence of wording effects: A network psychometric and factorial approach.
\emph{Behavior Research Methods}.
}
\author{
Alexander P. Christensen <alexpaulchristensen@gmail.com>,
Luis Eduardo Garrido <luisgarrido@pucmm.edu>
}
