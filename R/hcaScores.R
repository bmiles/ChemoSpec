hcaScores <-
function(spectra, pca, scores = c(1:5),
c.method = "complete", d.method = "euclidean", use.sym = FALSE, ...) {

# Function to carry out HCA on PCA scores
# Part of the ChemoSpec package
# Bryan Hanson, DePauw University, Aug 2009

	
	if (missing(spectra)) stop("No spectral data set provided")
	if (missing(pca)) stop("No pca results provided")
	if (!("princomp" %in% class(pca) || "prcomp" %in% class(pca))) stop("Your pca results look corrupt!")
	chkSpectra(spectra)

	if (use.sym) spectra$names <- paste(spectra$alt.sym, spectra$names, sep = " ")
	distance <- rowDist(as.data.frame(pca$x[,scores], row.names = spectra$names), method = d.method)

	sub.title <- paste("clustering method: ", c.method, "      distance method: ", d.method, sep = "")

	res <- plotHCA(spectra = spectra, distance = distance, sub.title = sub.title,
		method = c.method, use.sym = use.sym, ...)
	return(res)
	}

