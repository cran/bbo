\name{bbo}
\alias{bbo}
\title{Biogeography-Based Optimization}
\description{
  Solves global optimization problems via Biogeography-Based Optimization method. 
}
\usage{
bbo(fn, lower, upper, DisplayFlag = TRUE, RandSeed, control = bbo.control(), ...)
}
\arguments{
  \item{fn}{the function to be optimized (minimized). }
  
  \item{lower, upper}{two vectors specifying scalar real lower and upper bounds on each parameter to be optimized, so that the i-th element of \code{lower} and \code{upper} applied to the i-th parameter. The implementation searches between \code{lower} and \code{upper} for the global optimum (minimum) of \code{fn}.}

  \item{DisplayFlag}{TRUE or FALSE, whether or not to display, default is \code{TRUE}}

  \item{RandSeed}{random number seed}

  \item{control}{a list of control parameters; see \code{\link{bbo.control}}.}

  \item{...}{further arguments to be passed to \code{fn}}

}

\details{Given an objective function, this method performs biogeography-based optimization and returns the minimum cost for the given objective function.
}

\value{
  The output of the function \code{bbo} is a list containing the following elements:\cr
  \code{prop}, a list of control parameters for BBO for the current run:
  \itemize{
    \item \code{pModify}
    \item \code{pMutate}
    \item \code{KEEP}
    \item \code{popSize}
    \item \code{maxGen}
    \item \code{numVar}
    \item \code{orderDep}
  }

  \code{minCost}, a list containing the following elements:
  \itemize{
    \item \code{bestMember}: the best set of parameters found.
    \item \code{bestValue}: the value of \code{fn} corresponding to \code{bestMember}.
  }

  \code{bestHabitat} a list containing the following elements:
  \itemize{
    \item \code{itersBestValue}: the best value of \code{fn} at each iteration.
    \item \code{itersBestMember}: the best member at each iteration.
    \item \code{itersAvg}: the average population cost at each iteration.
  }

}
\references{
  D. Simon, "Biogeography-Based Optimization", IEEE Transactions on Evolutionary Computation, vol. 12, no. 6, pp. 702-713, December 2008.
}
\author{
  For package \pkg{bbo}: Sarvesh Nikumbh<snikumbh@mpi-inf.mpg.de>
  Maintainer: Sarvesh Nikumbh<snikumbh@mpi-inf.mpg.de>
  
  For BBO method: Prof. D. Simon, Cleveland State University, Ohio.

}


\seealso{
	\code{\link{bbo.control}} for control arguments
}

\examples{
	## --------------------
	## Rosenbrock function:
	## --------------------
	## It has a global minimum f(x) = 0 at (1,1).  
	## Kindly note that the first parameter passed to the 
	## objective function should be the vector of parameters
	## to be optimized.
	Rosenbrock <- function(x){
	  x1 <- x[1]
	  x2 <- x[2]
	  return(  100 * (x2 - x1 * x1)^2 + (1 - x1)^2 )
  	}

	bbo(Rosenbrock, -5, 5, control = bbo.control(pMutate = 0.4, numVar = 2, popSize = 50, KEEP = 5, maxGen = 20))


}

\keyword{ bbo, Biogeography-Based Optimization, evolutionary algorithm}
