% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/Mathematical_Functions.R
\name{circular}
\alias{circular}
\alias{circ_mean}
\alias{circ_range}
\alias{circ_sd}
\title{Functions for circular descriptive statistics}
\usage{
circ_mean(x, int, na.rm = FALSE)

circ_range(x, int, na.rm = FALSE)

circ_sd(x, int, na.rm = FALSE)
}
\arguments{
\item{x}{A numeric vector or a matrix. If a data.frame is supplied, then
\code{x} is coerced to a matrix.}

\item{int}{A numeric value. The number of units of \code{x} in a full circle,
e.g., for unit days: \code{int = 365}; for unit months: \code{int = 12}.}

\item{na.rm}{A logical value indicating whether \code{NA} values should be
stripped before the computation proceeds.}
}
\value{
A numeric value or \code{NA}.
}
\description{
Functions for circular descriptive statistics
}
\seealso{
\code{\link[circular]{mean.circular}},
  \code{\link[circular]{range.circular}}, \code{\link[circular]{sd.circular}}
}
