# multigrep
Creates a logical vector of whether multiple strings appear in x. 
This package uses grepl to search for incomplete strings in an object.
Equivalent to using x %in% y, if y was a collection of incomplete strings.

Install with devtools:
devtools::install_github("elliefewings/multigrep")

Or download and install from parent directory
devtools::install("multigrep")

Load library:
library(multigrep)


Examples of use:
Example1
x <- c("a", "b", "c")
y <- c("apple", "kiwi", "melon", "pear")
multigrep(x,y)
[1]  TRUE FALSE FALSE TRUE

Example2 - select rows that match logical vector
x <- c("a", "b", "c")
y <- data.frame(Fruit=c("apple", "kiwi", "melon", "pear"), Count=c(1,4,2,1))

y

Fruit   Count
apple   1
kiwi    4
melon   2
pear    1

y[multigrep(x,y$Fruit),]

Fruit   Count
apple   1
pear    1


