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
#' @examples
#' vect <- c("a", "b", "c")
#' x <- c("apple", "kiwi", "melon", "pear")
#' multigrep(vect,x)
#' [1]  TRUE FALSE FALSE TRUE
#' @export
multigrep <- function(vect, x) {
as.logical(rowSums(sapply(vect, function(v) {grepl(as.character(v), x)}, USE.NAMES = FALSE))) 
}