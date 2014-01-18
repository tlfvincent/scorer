\name{scorer2-package}
\alias{scorer2-package}
\docType{package}
\title{Predict oligomerization state of coiled-coil sequences}
\description{
  Package for predicting the oligomeric state of a coiled-coil sequence
}
\details{
	\tabular{ll}{
Package: \tab scorer2\cr
Type: \tab Package\cr
Version: \tab 1.0\cr
Date: \tab 2014-01-08\cr
License: \tab GPL >= 2.0\cr
}
	Functions in the SCORER2 package allow the user to apply the SCORER 2.0 prediction
  algorithm to coiled-coil sequences. Also included are functions to retrain 
  the SCORER 2.0 algorithm using user-defined training data
}
\author{Thomas L. Vincent \email{tlfvincent@gmail.com}}
\references{
  Craig T. Armstrong, Thomas L. Vincent, Peter J. Green and Dek N. Woolfson.
  (2011) SCORER 2.0: an algortihm for distinguishing parallel dimeric and trimeric 
  coiled-coil sequences. Bioinformatics.
  DOI: 10.1093/bioinformatics/btr299
}
\examples{
# load pssm data
data(pssm)

# predict oligomerization of GCN4 wildtype
GCN4wt.score <- scorer2("GCN4wt", "MKQLEDKVEELLSKNYHLENEVARLKKLV", 
		"abcdefgabcdefgabcdefgabcdefga", pssm,  delta=1)
}
