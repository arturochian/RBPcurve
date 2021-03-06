% Generated by roxygen2 (4.1.0): do not edit by hand
% Please edit documentation in R/makeRBPObj.R
\name{makeRBPObj}
\alias{RBPObj}
\alias{makeRBPObj}
\title{Create data container for RBP curve.}
\usage{
makeRBPObj(pred, y, positive = NULL)
}
\arguments{
\item{pred}{[\code{numeric}]\cr
Predicted probabilities for each observation.}

\item{y}{[\code{numeric} | \code{factor}]\cr
Class labels of the target variable.
Either a numeric vector with values \code{0} or \code{1}, or a factor with two levels.}

\item{positive}{[\code{character(1)}]\cr
 Set positive class label for target variable which is transformed as \code{1} to compute.
 Only needed when \code{y} is a "factor".}
}
\value{
Object members:
\describe{
  \item{\code{n} [\code{numeric(1)}]}{Number of observations.}
  \item{\code{pred} [\code{numeric(n)}]}{Predicted probabilities.}
  \item{\code{y} [\code{numeric(n)}]}{Target variable having the values 0 and 1.}
  \item{\code{positive} [\code{character(1)}]}{Positive class label of traget variable. Only present when \code{y} is a factor.}
  \item{\code{e0} [\code{numeric(1)}]}{Average of the predicted probabilities conditional on \code{y=0}.}
  \item{\code{e1} [\code{numeric(1)}]}{Average of the predicted probabilities conditional on \code{y=1}.}
  \item{\code{pev} [\code{numeric(1)}]}{Proportion of explained variation measure. Computed as \code{e1-e0}.}
  \item{\code{tpr} [\code{numeric(1)}]}{True positive rate.}
  \item{\code{fpr} [\code{numeric(1)}]}{False positive rate.}
  \item{\code{prev} [\code{numeric(1)}]}{Prevalence.}
  \item{\code{one.min.prev} [\code{numeric(1)}]}{One minus the value of the prevalence.}
  \item{\code{axis.x} [\code{numeric(n)}]}{Values for the X-Axis of the RBP curve.}
  \item{\code{axis.y} [\code{numeric(n)}]}{Values for the Y-Axis of the RBP curve.}
 }
}
\description{
Must be created for all subsequent plot function calls.
}

