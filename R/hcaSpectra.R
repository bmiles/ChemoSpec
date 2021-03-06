hcaSpectra <-
function(spectra,
c.method = "complete", d.method = "euclidean", use.sym = FALSE, ...) {

# Function to carry out HCA, basically a wrapper to existing methods
# Part of the ChemoSpec package
# Bryan Hanson, DePauw University, June 2008

	if (missing(spectra)) stop("No spectral data provided")
	chkSpectra(spectra)	
	
	if (use.sym) spectra$names <- paste(spectra$alt.sym, spectra$names, sep = " ")
	distance <- rowDist(as.data.frame(spectra$data, row.names = spectra$names), method = d.method)

	sub.title <- paste("clustering method: ", c.method, "      distance method: ", d.method, sep = "")

	d <- plotHCA(spectra = spectra, distance = distance, sub.title = sub.title,
		method = c.method, use.sym = use.sym, ...)
	return(d)
	}

