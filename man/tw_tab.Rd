% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/utility_functions.r
\name{tw_tab}
\alias{tw_tab}
\title{Quickly make a two-way table of proportions (percentages)}
\usage{
tw_tab(x, y, margin = NULL, digs = 1, dnn = NULL, ...)
}
\arguments{
\item{x}{Row variable}

\item{y}{Column variable}

\item{margin}{See `prop.table`. Default is joint distribution (all
cells sum to 100), 1 for row margins (rows sum to 1), 2 for
column margins (columns sum to 1)}

\item{digs}{Number of digits to round percentages to. Defaults to 1.}

\item{dnn}{See `table`. the names to be given to the dimensions in
the result (the dimnames names). Defaults to NULL for none.}

\item{...}{Other arguments to be passed to `table`.}
}
\value{
A contingency table of percentage values.
}
\description{
Quickly make a two-way table of proportions (percentages)
}
\details{
A wrapper for `table` and `prop.table` with the margin labels set
    by default to NULL and the cells rounded to percents at 1
    decimal place.
}
\examples{

with(gss_sm, tw_tab(bigregion, religion, useNA = "ifany", digs = 1))

with(gss_sm, tw_tab(bigregion, religion, margin = 2, useNA =
    "ifany", digs = 1))

}
\author{
Kieran Healy
}
