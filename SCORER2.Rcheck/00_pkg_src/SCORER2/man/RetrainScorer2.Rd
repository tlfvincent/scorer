\name{RetrainScorer2}
\alias{RetrainScorer2}
\title{
Retrain the SCORER 2.0 algorithm with user-defined training data
}
\description{
Function used to train the SCORER 2.0 algorithm with user-defined training data. It is recommended that
the training data contains at least 30 amino-sequence/register assignment pairs for each oligomeric state
in the training set.
}
\usage{
RetrainScorer2(seq, reg, type)
}
%- maybe also 'usage' for other objects documented here.
\arguments{
  \item{seq}{A vector of amino acid sequences; where each element of the vector is 
  			a character string of amino-acid sequence. Valid
             characters are all uppercase letters except \sQuote{B},
             \sQuote{J}, \sQuote{O}, \sQuote{U}, \sQuote{X}, and
             \sQuote{Z}; invalid characters will not be tolerated and their use will result
             in a failure of the program.}
  \item{reg}{A vector of heptad register assigned to each amino acid sequence;
    valid characters are the lowercase letters \sQuote{a} to
    \sQuote{g}. Register characters are not required to be in proper order.
    The register can start with any of the seven letters.
    It must always have the same length as the matching amino-acid sequence in "seq".}
  \item{type}{A vector containing the known oligomeric state
    of the coiled-coil sequences in the training data. Acceptable oligomeric states
    are "DIMER" and "TRIMER" only.}
}
\value{
Returns a profile scoring matrix derived from the user-defined training data
}
\references{
  Craig T. Armstrong, Thomas L. Vincent, Peter J. Green and Dek N. Woolfson.
  (2011) SCORER 2.0: an algortihm for distinguishing parallel dimeric and trimeric 
  coiled-coil sequences. Bioinformatics.
  DOI: 10.1093/bioinformatics/btr299
}
\author{
Thomas L. Vincent \email{tlfvincent@gmail.com}
}
\examples{
# load training data
data(training)
seq <- training[, 1]
reg <- training[, 2]
type <- training[, 3]

# retrain SCORER 2.0 to obtain new pssm
pssm <- RetrainScorer2(seq, reg, type)
}

