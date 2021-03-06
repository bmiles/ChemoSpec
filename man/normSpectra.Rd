\name{normSpectra}
\alias{normSpectra}
\title{Normalize a Spectra Object}

\description{
This function carries out normalization of the spectra in a \code{Spectra} object.  There are currently two options, though others are readily added.   \code{"TotInt"} normalizes by total intensity.  In this case, the y-data of a \code{"Spectra"} object is normalized by dividing each y-value by the sum of the y-values in a given spectrum.  This each spectrum sums to 1.  This method assumes that the total concentration of substances giving peaks does not vary across samples which may not be true. \code{"Range"} allows one to do something similar but rather than using the sum of the entire spectrum as the denominator, only the sum of the given range is used.
}

\usage{
normSpectra(spectra, method = "TotInt", RangeExpress = NULL)
}

\arguments{
  \item{spectra}{ An object of S3 class \code{"Spectra"} to be normalized.}
  \item{method}{ One of \code{c("TotInt", "Range")} giving the method for normalization.}
  \item{RangeExpress}{ A logical expression giving the frequency range over which to sum intensities, before dividing the entire spectrum by the summed values.  For examples of constructing these expressions, see the examples in \code{\link{removeFreq}}.}
}

\value{
An object of S3 class \code{"Spectra"}.
}


\references{
\url{http://academic.depauw.edu/~hanson/ChemoSpec/ChemoSpec.html}
}

\author{
Bryan A. Hanson, DePauw University. \email{hanson@depauw.edu}
}

\examples{
data(CuticleIR)
res <- normSpectra(CuticleIR)
sumSpectra(res)
}

\keyword{ utilities }
\keyword{ manip }
