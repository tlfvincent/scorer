\name{pssm}
\alias{pssm}
\docType{data}
\title{Profile scoring matrix derived from the original SCORER 2.0 training set.}
\description{
  This data set includes the Profile scoring matrix derived from the 
  training set compiled from the CC+ coiled-coil database. It is used as the default
  PSSM used by SCORER 2.0 when predicting the oligomeric state of coiled-coil sequences.
  More details on the training set can be found in the reference below.}
\usage{data(pssm)}
\format{A multi-dimensional array with 7 element, each of dimension 2x21.}
\source{DOI: 10.1093/bioinformatics/btr299.}
\references{
  Craig T. Armstrong, Thomas L. Vincent, Peter J. Green and Dek N. Woolfson.
  (2011) SCORER 2.0: an algortihm for distinguishing parallel dimeric and trimeric 
  coiled-coil sequences. Bioinformatics.
  DOI: 10.1093/bioinformatics/btr299
}
\examples{
	data(pssm)
	print(pssm)
}
\keyword{datasets}
