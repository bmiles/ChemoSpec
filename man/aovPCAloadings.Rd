\name{aovPCAloadings}
\alias{aovPCAloadings}
\title{
Plot aovPCA Loadings of a Spectra Object
}
\description{
Uses the results from \code{\link{aovPCAscores}} to plot the corresponding loadings.}
\usage{
aovPCAloadings(spectra, LM, pca, plot = 1, loads = 1, ref = 1, ...)
}
\arguments{
  \item{spectra}{
An object of S3 class \code{\link{Spectra}}.
}
  \item{LM}{
List of matrices created by \code{\link{aovPCA}}
}
  \item{pca}{
PCA output from \code{\link{aovPCAscores}}. 
}
  \item{plot}{
An integer specifying the desired plot. \code{names(LM)} will show which matrix has which data in it.
}
  \item{loads}{
An integer vector giving the loadings to plot.  More than 3 loadings creates a useless plot using the default graphics window.
}
  \item{ref}{
An integer specifying the reference spectrum to plot, which appears at the bottom of the plot.
}
  \item{\dots}{
Additional parameters to be passed to plotting functions.
}
}

\value{
None. Side effect is a plot.
}
\references{
Pinto, Bosc, Nocairi, Barros, and Rutledge. "Using ANOVA-PCA for Discriminant Analysis: ..." Analytica Chimica Acta 629.1-2 (2008): 47-55.

Harrington, Vieira, Espinoza, Nien, Romero, and Yergey. "Analysis of Variance--Principal Component Analysis: ..." Analytica Chimica Acta 544.1-2 (2005): 118-27.
}

\author{
Matthew J. Keinsley and Bryan A. Hanson, DePauw University. \email{hanson@depauw.edu}
}

\seealso{
An example using this function can be seen in \code{\link{aovPCA}}.  See also \code{\link{plotLoadings}}.
}

\keyword{ multivariate }
\keyword{ htest }
