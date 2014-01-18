\name{training}
\alias{training}
\docType{data}
\title{Training dataset used to contruct the profile scoring matrix in the SCORER 2.0 algorithm.}
\description{
  A dataframe containing three columns that must be named "type", "sequence" and "register".
  The order of the columns in the dataframe does not matter
    \enumerate{
    \item column "type": contains the known oligomeric state
    of the coiled-coil sequences in the training data. Acceptable oligomeric states
    are "DIMER" and "TRIMER" only.
    \item column "sequence": contains the amino-acid sequences of the coiled coils in the 
    training data. Valid characters are all uppercase letters except \sQuote{B},
             \sQuote{J}, \sQuote{O}, \sQuote{U}, \sQuote{X}, and
             \sQuote{Z}; invalid characters will not be tolerated and their use will result
             in a failure of the program.
    \item Contains the register assignments specific to each coiled-coil sequence in the
    training data. As such, it must always have the same length as the matching amino-acid sequence in the "sequence" column. Valid characters are the lowercase letters \sQuote{a} to
    \sQuote{g} only. Register assignments are not required to be in proper order and may 
    start with any of the seven letters.}
}
\usage{
	data(training)
	}
\format{A multi-dimensional array with 7 element, each of dimension 2x21.}
\source{DOI: 10.1093/bioinformatics/btr299.}
\references{
  Craig T. Armstrong, Thomas L. Vincent, Peter J. Green and Dek N. Woolfson.
  (2011) SCORER 2.0: an algortihm for distinguishing parallel dimeric and trimeric 
  coiled-coil sequences. Bioinformatics.
  DOI: 10.1093/bioinformatics/btr299
}
\examples{
	data(training)
	print(training)
}
\keyword{datasets}
