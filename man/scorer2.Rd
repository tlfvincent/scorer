\name{scorer2}
\alias{scorer2}
\title{
Predict oligomerization state of coiled-coil sequences
}
\description{
  Function for predicting the oligomeric state of a coiled-coil sequence
}
\usage{
scorer2(id, seq, reg, pssm, delta=1)
}
\arguments{
  \item{id}{A vector of id names for each sequence to be predicted }
  \item{seq}{A vector of amino acid sequences; where each element of the vector is 
  			a character string of amino-acid sequence. Valid
             characters are all uppercase letters except \sQuote{B},
             \sQuote{J}, \sQuote{O}, \sQuote{U}, \sQuote{X}, and
             \sQuote{Z}; invalid characters will not be tolerated and their use will result
             in a failure of the program.}
  \item{reg}{A character string denoting the heptad register of each amino acid sequence;
             valid characters are the lowercase letters \sQuote{a} to
             \sQuote{g}. Register characters are not required to be in proper order.
             The register can start with any of the seven letters.
             It must always have the same length as the \code{seq}
             argument.}
  \item{pssm}{A profile scoring matrix generated from the SCORER 2.0 training data. You can either use the default one
or create your own PSSM using the pssm.R function}
  \item{delta}{A numeric value strictly superior to 0 that serves as pseudocount in the
   	profile scoring matrix. Empirical analysis has shown that a value of delta=1 is optimal.}
}

\value{
  The function \code{scorer2} is the most important one in the
  \pkg{scorer2} package. It is used to apply the SCORER 2.0 prediction
  algorithm to predict the oligomeric state of a new coiled-coil sequence. 
  By default the final classification is computed on the basis of
  the discriminant function value. If \eqn{f(x)>=0}, \eqn{x} is
  predicted as a dimer, otherwise as trimer.
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
# load pssm data
data(pssm)

# predict oligomerization of GCN4 wildtype
GCN4wt.score <- scorer2("GCN4wt", "MKQLEDKVEELLSKNYHLENEVARLKKLV", 
		"abcdefgabcdefgabcdefgabcdefga", pssm,  delta=1)
}

