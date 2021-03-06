% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/multigrep.R
\name{multigrep}
\alias{multigrep}
\title{Grepl for multiple strings}
\usage{
multigrep(vect, x)
}
\arguments{
\item{vect}{Vector of character strings to be matched}

\item{x}{Object you want to search for matches}
}
\value{
A logical of whether match is found
}
\description{
Creates a logical vector of whether multiple strings appear in x.
This package uses grepl to search for incomplete strings in an 
object. Equivalent to using x %in% y, if y was a collection of 
incomplete strings.
}
\examples{
vect <- c("a", "b", "c")
x <- c("apple", "kiwi", "melon", "pear")
multigrep(vect,x)
[1]  TRUE FALSE FALSE TRUE
}
