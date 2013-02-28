\name{bbo-methods}
\alias{bbo-methods}
\alias{summary.bbo}
\alias{summary,bbo-method}
\alias{plot.bbo}
\alias{plot,bbo-method}

\title{bbo-methods}
\description{Methods for bbo objects.}
\usage{
\method{summary}{bbo}(object, ...)
\method{plot}{bbo}(x, plot.type = c("itersAvg", "itersBestValue"), ...) 
}

\arguments{
  \item{object}{an object of class \code{bbo}; usually, a result of a call to \code{\link{bbo}}.}
  \item{x}{an object of class \code{bbo}; usually, a result of a call to \code{\link{bbo}}.}
  \item{plot.type}{should we plot the best member at each iteration, the best value at each iteration or the intermediate populations?}
  \item{...}{any additional arguments to be passed to plot function}
}

\details{
  Members of the class \code{bbo} have a \code{plot} method that accepts the argument \code{plot.type}.
  \code{plot.type = "itersAvg"} results in a plot of the parameter values that represent the lowest value of the objective function at each generation. 
  \code{plot.type = "itersBestValue"} plots the best value of the objective function each generation.
  
  A summary method also exists and returns the best parameter vector (habitat), the best value of the objective function, average cost of all habitats in the population at each iteration, best habitat at each iteration and the cost of the best habitats.  
}

\note{
  Further details and examples of the \R package \pkg{bbo} can be found look at the package's vignette by typing \code{vignette("bbo")}.


  Please cite the package in publications. Use \code{citation("bbo")}.
}

\author{
  For package \pkg{bbo}: Sarvesh Nikumbh<snikumbh@mpi-inf.mpg.de>
  Maintainer: Sarvesh Nikumbh<snikumbh@mpi-inf.mpg.de>

  For BBO method: Prof. D. Simon, Cleveland State University, Ohio.

}


\seealso{
   \code{\link{bbo}} and \code{\link{bbo.control}}.
}

\references{
  D. Simon, "Biogeography-Based Optimization", IEEE Transactions on Evolutionary Computation, vol. 12, no. 6, pp. 702-713, December 2008.
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

        sample.output.of.bbo <- bbo(Rosenbrock, -5, 5, DisplayFlag = FALSE, control = bbo.control(pMutate = 0.4, numVar = 2, popSize = 50, KEEP = 5, maxGen = 20))

	## print the output information
	bbo:::summary.bbo(sample.output.of.bbo)

	## plot
	bbo:::plot.bbo(sample.output.of.bbo, plot.type = "itersBestValue")
}

\keyword{ bbo, Biogeography-Based Optimization, evolutionary algorithm}


