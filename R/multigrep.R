#' Grepl for multiple strings
#'
#' Creates a logical vector of whether multiple strings appear in x.
#' This package uses grepl to search for incomplete strings in an 
#' object. Equivalent to using x %in% y, if y was a collection of 
#' incomplete strings.
#'
#' @param vect Vector of character strings to be matched
#' @param x Object you want to search for matches
#' @return A logical of whether match is found
#' @export
multigrep <- function(vect, x) {
  full <- c()
  for (v in vect){
    full <- c(full, x[grepl(as.character(v), x)])
  }
  logi <- x %in% full
  logi
}