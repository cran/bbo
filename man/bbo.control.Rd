\name{bbo.control}
\alias{bbo.control}
\title{Control various aspects of the BBO implementation}
\description{
  Allow the user to set some characteristics of the 
  Biogeography-based optimization algorithm implemented
  in \code{bbo}.
}
\usage{
bbo.control(pModify = 1, pMutate = 0.3, KEEP = 5, popSize = 20, maxGen = 20, numVar = 2, orderDep = TRUE)
}

\arguments{
   \item{pModify}{habitat modification probability, between 0 and 1; default = 1}

   \item{pMutate}{mutation probability; default = 0.3}

   \item{KEEP}{elitism parameter: how many of the best habitats to keep from one generation to the next; default = 5}

   \item{popSize}{population size (i.e., number of candidate solutions for every generation) default = 20. Kindly make sure that \code{KEEP} is never greater than \code{popSize} and not <= 0}

   \item{maxGen}{number of generations; default = 20}

   \item{numVar}{number of variables in each population member (i.e., problem dimension); default = 2}

   \item{orderDep}{TRUE/FALSE; whether order of the parameters of the habitat is to be maintained; default = TRUE}

}

\value{
  Returns a list with all the BBO algorithm parameters set
}

\details{
  Control parameters for the \code{\link{bbo}}
}


\seealso{
	\code{\link{bbo.control}} for control arguments
}

\references{
D. Simon, "Biogeography-Based Optimization", IEEE Transactions on Evolutionary Computation, vol. 12, no. 6, pp. 702-713, December 2008.

}

\author{
  For package \pkg{bbo}: Sarvesh Nikumbh<snikumbh@mpi-inf.mpg.de>
  Maintainer: Sarvesh Nikumbh<snikumbh@mpi-inf.mpg.de>

  For BBO method: Prof. D. Simon, Cleveland State University, Ohio.
}


\examples{
  ct <- bbo.control(pMutate = 0.4, popSize = 50, KEEP = 10, maxGen = 50, numVar = 2)

}

\keyword{ bbo, Biogeography-Based Optimization, evolutionary algorithm}
