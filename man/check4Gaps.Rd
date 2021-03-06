\name{check4Gaps}
\Rdversion{1.1}
\alias{check4Gaps}
\title{
Check for Missing Values (Gaps)
}
\description{
This function may be used with a \code{Spectra} object to see if there are any gaps or discontinuities in the frequency axis.  Gaps may arise when unwanted frequencies are removed (e.g, water peaks in 1H NMR, or uninteresting regions in any kind of spectroscopy).  As written, it can be used to check for gaps in any appropriate numeric vector.  Not normally called directly by the user, but may be (see examples).  A plot of the gaps is optional.
}
\usage{
check4Gaps(x, y = NULL, tol = 0.01, plot = FALSE,
	silent = FALSE, ...)
}
\arguments{
  \item{x}{
A numeric vector to be checked for gaps.
}
  \item{y}{
An optional vector of y-values which correspond to the \code{x} values.  Only needed if \code{plot = TRUE}.
}
  \item{tol}{
A number indicating the tolerance for checking if the step between successive \code{x} values are the same.  Depending upon how the \code{x} values are stored and rounded, you may need to change the value of \code{tol} to avoid flagging trivial "gaps".
}
  \item{plot}{
Logical indicating if a plot of the gaps should be made.  If \code{TRUE}, \code{y} must be provided.
}
  \item{silent}{
Logical indicating a "no gap" condition (return value is \code{FALSE}) should not be reported to the console.  Important because \code{check4Gaps} is called iteratively by other functions.
}
  \item{\dots}{
Other parameters to be passed to the plot routines if \code{plot = TRUE}, e.g. \code{xlim}.
}
}
\details{
The basic procedure is to compare x[n + 1] - x[n] for successive values of n.  When this value jumps, there is a gap which is flagged. \code{beg.indx} and \code{end.indx} will always be contiguous as indices must be; it is the \code{x} values that jump or have the gap.  The indices are provided as they are more convenient in some programming contexts.  If not assigned, the result appears at the console.
}
\value{A data frame giving the data chunks found, with one chunk per line.  Also a plot if requested.  In the event there are no gaps found, \code{FALSE} is returned.
\item{beg.freq }{The first frequency value in a given data chunk.}
\item{end.freq }{The last frequency value in a given data chunk.}
\item{size }{The length (in frequency units) of the data chunk.}
\item{beg.indx }{The index of the first frequency value in the data chunk.}
\item{eng.indx }{The index of the last frequency value in the data chunk.}
}

\references{
\url{http://academic.depauw.edu/~hanson/ChemoSpec/ChemoSpec.html}
}

\author{
Bryan A. Hanson, DePauw University. \email{hanson@depauw.edu}
}

\examples{
x <- seq(from = 5, to = 12, by = 0.1)
remove <- 40:45; x <- x[-remove]
check4Gaps(x) # really simple
gaps <- check4Gaps(x) # save the result for later use
data(CuticleIR) # has a gap, let's find it and display it
check4Gaps(CuticleIR$freq, CuticleIR$data[1,], plot = TRUE)
}

\keyword{ utilities }
