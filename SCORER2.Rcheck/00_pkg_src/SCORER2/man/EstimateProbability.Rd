\name{EstimateProbability}
\alias{EstimateProbability}
\title{
Estimate oligomeric state score of coiled-coil sequences
}
\description{
Sub-function used in scorer2.R in order to compute the oligomeric state score 
of input coiled-coil sequences.
}
\usage{
EstimateProbability(id, seq, reg, pssm, var, delta=1)
}
\arguments{
  \item{id}{A string that represents the id name of the test sequence}
	\item{seq}{ A character string of the amino-acid sequence to be predicted. Valid characters are all uppercase letters except \sQuote{B}, \sQuote{J}, \sQuote{O}, \sQuote{U}, \sQuote{X}, and \sQuote{Z}; }
	\item{reg}{A character string of register assignements. Valid characters are the lowercase letters \sQuote{a} to \sQuote{g}. Register characters are not required to be in proper order and may start with any of the seven letters. It must always have the same length as the matching amino-acid sequence.}
  \item{pssm}{
A profile scoring matrix generated from the SCORER 2.0 training data. You can either use the default one
or create your own PSSM using the pssm.R function
}
  \item{var}{
A list of two elements containing all valid amino-acid and register characters.
}
  \item{delta}{
The pseudocount parameter introduced in the PSSM used for the estimation of oligomeric state scores. This helps avoid cases with zero count. Empirical analysis has shown that a default delta score of 1 is optimal.
}
}
\value{
It is used to apply the SCORER 2.0 prediction
  algorithm to a new coiled-coil sequence. 
  By default the final classification is computed on the basis of
  the discriminant function value. If \eqn{f(x)>=0}, \eqn{x} is
  predicted as a dimer, otherwise as a trimer.
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

# define allowed amino and register characters
var <- list(
      amino = c("A","C","D","E","F","G","H","I","K","L",
      "M","N","P","Q","R","S","T","V","W","Y","X"),
      register = letters[1:7])
      
# run SCORER 2.0 on GCN4 wild-type
GCN4wt.score <- EstimateProbability("GCN4wt", 
			"MKQLEDKVEELLSKNYHLENEVARLKKLV", 
			"abcdefgabcdefgabcdefgabcdefga", 
			pssm, 
			var, 
			delta=1)
}
