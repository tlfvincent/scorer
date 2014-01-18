\name{CreatePssm}
\alias{CreatePssm}
\title{
Compute profile scoring matrices for training data
}
\description{
Function used to compute new profile scoring matrices in the event that
the user wishes to retrain SCORER 2.0 with his own training data
}
\usage{
CreatePssm(training.data, var)
}
\arguments{
  \item{training.data}{
	A dataframe or matrix with three columns 
	containing the information of n coiled-coil sequences. The three
	columns must be named "sequence", "register" and "type". The order of the columns in the dataframe does not matter
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
  \item{var}{
A list of two elements containing all valid amino-acid and register characters.
}
}
\value{
returns a profile scoring matrix derived from inputted training data
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

# define allowed amino and register characters
var <- list(
    amino = c("A","C","D","E","F","G","H","I","K","L",
    "M","N","P","Q","R","S","T","V","W","Y","X"),
    register = letters[1:7])

# create profile scoring matrix
pssm <- CreatePssm(training, var)
      
}