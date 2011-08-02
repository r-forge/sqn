\name{SQN}
\Rdversion{1.1}
\alias{SQN}
\alias{mix.qn}
\alias{SQN.demo.data}
\title{
subset quantile normalization
}
\description{
This function performs normalization based on a subset of negative
controls whose distribution is expected to be unchanged in various
samples. There is no restriction on the behavior of the rest of the measurements.
}
\usage{
SQN(y, N.mix = 5, ctrl.id, model.weight = 0.9)
}
\arguments{
  \item{y}{ A matrix of unnormalized data.

}
  \item{N.mix}{
Number of normal distributions in the mixture approximation.
}
  \item{ctrl.id}{
index of controls. Must be a vector smaller than \code{nrow(y)}
}
  \item{model.weight}{
weight given to the parametric normal mixture model
}
}
%\details{
%%  ~~ If necessary, more details than the description above ~~
%}
\value{ A matrix of normalized data
}
\references{
Wu Z and Aryee M. Subset Quantile Normalization using Negative Control Features (2010)
Journal of Computational Biology, 17(10)
}
\author{
Zhijin Wu
}
%\note{
%%  ~~further notes~~
%}

%% ~Make other sections like Warning with \section{Warning }{....} ~

%\seealso{
%% ~~objects to See Also as \code{\link{help}}, ~~~
%}
\examples{
require(mclust)
require(nor1mix)
data(sqnData0)
Ynorm=SQN(sqnData0,ctrl.id=1:1000)  #after normalization
 par(mfrow=c(1,2))
  boxplot(sqnData0,main="before normalization")
  boxplot(sqnData0[1:1000,],add=TRUE,col=3,boxwex=.4)

 boxplot(Ynorm,main="after normalization")
  boxplot(Ynorm[1:1000,],add=TRUE,col=3,boxwex=.4)
  legend(.5,11,legend=c("probes for signal","negative control probes"),text.col=c(1,3),bg="white")

}
