% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/smooth_w_gcv.R
\name{smooth_w_gcv}
\alias{smooth_w_gcv}
\title{Function to get weighted least squares fit using B-splines}
\usage{
smooth_w_gcv(
  covar_df,
  basis,
  time_points,
  lambda_vals,
  min_method = "mean",
  quantile = NULL
)
}
\arguments{
\item{covar_df}{A functional covariate data frame consisting of rows for time points and columns for subjects.}

\item{basis}{A basis object of the type bspline.}

\item{time_points}{Vector of observed time points. Method assumes all subjects and functional covariates are observed at a common set of time points.}

\item{lambda_vals}{A vector of positive numbers to cross-validate over to get roughness penalty.}

\item{min_method}{A value to minimize during cross-validation, either "mean" or "quantile" (over the subjects GCV values).}

\item{quantile}{if min_method = "quantile", a value for quantile to use}
}
\value{
A list of two objects. Object (1) is an fdSmooth object using object (2) lambda_opt to smooth.
}
\description{
Function to get weighted least squares fit using B-splines
}
