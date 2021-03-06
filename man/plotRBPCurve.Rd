% Generated by roxygen2 (4.1.0): do not edit by hand
% Please edit documentation in R/plotRBPCurve.R
\name{plotRBPCurve}
\alias{plotRBPCurve}
\title{Plot residual-based predictiveness (RBP) curve.}
\usage{
plotRBPCurve(obj, main = "RBP Curve", xlab = "Cumulative Percentage",
  ylab = "Estimated Residuals", type = "l", ylim = c(-1, 1.2),
  cond.axis = FALSE, title.line = ifelse(cond.axis, 3, 2), add = FALSE,
  ...)
}
\arguments{
\item{obj}{[\code{\link{RBPObj}}]\cr
Data container for RBP curve.}

\item{main}{[\code{character(1)}]\cr
An overall title for the plot.}

\item{xlab}{[\code{character(1)}]\cr
Label for X-axis.
Default is \dQuote{Cumulative Percentage}.}

\item{ylab}{[\code{character(1)}]\cr
Label for Y-axis.
Default is \dQuote{Estimated Residuals}.}

\item{type}{[\code{character(1)}]\cr
The plot type that should be drawn, see \code{\link{plot}} for all possible types.
Default is \code{type = "l"} for \bold{l}ines.}

\item{ylim}{[\code{numeric(2)}]\cr
Limits for Y-axis.
Default is \code{c(-1, 1.1)}.}

\item{cond.axis}{[\code{logical(1)}]\cr
Should an additional axis be plotted reflecting residuals conditional on y?
Default is \code{FALSE}.}

\item{title.line}{[\code{integer(1)}]\cr
Where to plot the title, see \code{\link{title}}.}

\item{add}{[\code{logical(1)}]\cr
Should RBP plot be added to current plot?
Default is \code{FALSE}.}

\item{...}{[any]\cr
Passed to \code{\link{plot}} or \code{\link{lines}}, depending on \code{add}.}
}
\description{
Plot residual-based predictiveness (RBP) curve.
}
\examples{
# Download data
mydata = read.csv("http://www.ats.ucla.edu/stat/data/binary.csv")
head(mydata)

# Build logit model and plot RBP curve
mylogit <- glm(admit ~ ., data = mydata, family = "binomial")
y = mydata$admit
pred1 = predict(mylogit, type="response")
obj1 = makeRBPObj(pred1, y)
plotRBPCurve(obj1, cond.axis = TRUE, type = "b")

# Build logit model using mlr and plot RBP curve
task = makeClassifTask(data = mydata, target = "admit", positive = 1)
lrn = makeLearner("classif.logreg", predict.type = "prob")
tr = train(lrn, task)
pred2 = getProbabilities(predict(tr, task))
obj2 = makeRBPObj(pred2, y)
plotRBPCurve(obj2, cond.axis = TRUE, type = "b", col = 2)
}

