pkgname <- "SCORER2"
source(file.path(R.home("share"), "R", "examples-header.R"))
options(warn = 1)
library('SCORER2')

assign(".oldSearch", search(), pos = 'CheckExEnv')
cleanEx()
nameEx("CreatePssm")
### * CreatePssm

flush(stderr()); flush(stdout())

### Name: CreatePssm
### Title: Compute profile scoring matrices for training data
### Aliases: CreatePssm

### ** Examples

# load training data
data(training)

# define allowed amino and register characters
var <- list(
    amino = c("A","C","D","E","F","G","H","I","K","L",
    "M","N","P","Q","R","S","T","V","W","Y","X"),
    register = letters[1:7])

# create profile scoring matrix
pssm <- CreatePssm(training, var)
      



cleanEx()
nameEx("EstimateProbability")
### * EstimateProbability

flush(stderr()); flush(stdout())

### Name: EstimateProbability
### Title: Estimate oligomeric state score of coiled-coil sequences
### Aliases: EstimateProbability

### ** Examples

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



cleanEx()
nameEx("RetrainScorer2")
### * RetrainScorer2

flush(stderr()); flush(stdout())

### Name: RetrainScorer2
### Title: Retrain the SCORER 2.0 algorithm with user-defined training data
### Aliases: RetrainScorer2

### ** Examples

# load training data
data(training)
seq <- training[, 1]
reg <- training[, 2]
type <- training[, 3]

# retrain SCORER 2.0 to obtain new pssm
pssm <- RetrainScorer2(seq, reg, type)



cleanEx()
nameEx("pssm")
### * pssm

flush(stderr()); flush(stdout())

### Name: pssm
### Title: Profile scoring matrix derived from the original SCORER 2.0
###   training set.
### Aliases: pssm
### Keywords: datasets

### ** Examples

	data(pssm)
	print(pssm)



cleanEx()
nameEx("scorer-package")
### * scorer-package

flush(stderr()); flush(stdout())

### Name: scorer2-package
### Title: Predict oligomerization state of coiled-coil sequences
### Aliases: scorer2-package

### ** Examples

# load pssm data
data(pssm)

# predict oligomerization of GCN4 wildtype
GCN4wt.score <- scorer2("GCN4wt", "MKQLEDKVEELLSKNYHLENEVARLKKLV", 
		"abcdefgabcdefgabcdefgabcdefga", pssm,  delta=1)



cleanEx()
nameEx("scorer2")
### * scorer2

flush(stderr()); flush(stdout())

### Name: scorer2
### Title: Predict oligomerization state of coiled-coil sequences
### Aliases: scorer2

### ** Examples

# load pssm data
data(pssm)

# predict oligomerization of GCN4 wildtype
GCN4wt.score <- scorer2("GCN4wt", "MKQLEDKVEELLSKNYHLENEVARLKKLV", 
		"abcdefgabcdefgabcdefgabcdefga", pssm,  delta=1)



cleanEx()
nameEx("training")
### * training

flush(stderr()); flush(stdout())

### Name: training
### Title: Training dataset used to contruct the profile scoring matrix in
###   the SCORER 2.0 algorithm.
### Aliases: training
### Keywords: datasets

### ** Examples

	data(training)
	print(training)



### * <FOOTER>
###
cat("Time elapsed: ", proc.time() - get("ptime", pos = 'CheckExEnv'),"\n")
grDevices::dev.off()
###
### Local variables: ***
### mode: outline-minor ***
### outline-regexp: "\\(> \\)?### [*]+" ***
### End: ***
quit('no')
