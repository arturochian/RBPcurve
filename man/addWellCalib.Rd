% Generated by roxygen2 (4.1.0): do not edit by hand
% Please edit documentation in R/addWellCalib.R
\name{addWellCalib}
\alias{addWellCalib}
\title{Visualizes a measure for well calibration on the RBP curve.}
\usage{
addWellCalib(obj, plot.values = TRUE, col = shape::greycol(10L),
  pos = "topleft")
}
\arguments{
\item{obj}{[\code{\link{RBPObj}}]\cr
Data container for RBP curve.}

\item{plot.values}{[\code{logical(1)}]\cr
Whether the values of the corresponding measure should be added to the plot?
Default is \code{FALSE}.}

\item{col}{[\code{character} | \code{numeric}]\cr
A specification for the the plotting color for the areas.}

\item{pos}{[\code{character(1)}]
Determines the position of the subplot that is plotted when \code{plot.values = TRUE}.
Can be either \code{pos = "topleft"} or \code{pos = "bottomright"}.
Default is \code{pos = "topleft"}.}
}
\value{
A matrix that contains the average of the \dQuote{probabilities within deciles}
  conditional on Y.
}
\description{
A measure for a well calibrated model can be obtained by
grouping the predicted probabilities via deciles yielding 10 groups.
The equally collored areas belong to a specific group. When each of the two
equally collored areas are similar, the model is well calibrated.
}

