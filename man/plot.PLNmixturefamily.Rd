% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/PLNmixturefamily-S3methods.R
\name{plot.PLNmixturefamily}
\alias{plot.PLNmixturefamily}
\title{Display the criteria associated with a collection of PLNmixture fits (a PLNmixturefamily)}
\usage{
\method{plot}{PLNmixturefamily}(x, criteria = c("loglik", "BIC", "ICL"), ...)
}
\arguments{
\item{x}{an R6 object with class \code{\link{PLNfamily}}}

\item{criteria}{vector of characters. The criteria to plot in c("loglik", "BIC", "ICL").
Default is  c("loglik", "BIC", "ICL").}

\item{...}{additional parameters for S3 compatibility. Not used}
}
\value{
Produces a plot  representing the evolution of the criteria of the different models considered,
highlighting the best model in terms of BIC and ICL (the greater, the better).
These criteria have the form 'loglik - 1/2 * penalty' so that they are on the same scale as the model loglikelihood.
}
\description{
Display the criteria associated with a collection of PLNmixture fits (a PLNmixturefamily)
}
\examples{
data(trichoptera)
trichoptera <- prepare_data(trichoptera$Abundance, trichoptera$Covariate)
myMixtures <- PLNmixture(Abundance ~ 1, clusters = 1:4, data = trichoptera)
\dontrun{
plot(myMixtures)
}
}
