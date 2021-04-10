#example 1
add2 <- function(x, y) {
        x + y
}
#example 2
above10 <- function(x) {
           use <- x > 10
           x[use]
}
#example 3
above < - function(X, n) {
          use <- x > n
          x[use]
}
#example 4
above < - function(X, n = 10) {
  use <- x > n
  x[use]
}
#Example 5
columnmean <- function(y) {
              nc <- ncol(y)
              means <- numeric(nc)
              for(i in 1:nc) {
                    means[i] <- mean(y[, i])
              }
              means
}
#Example 6
columnmean <- function(y, removeNA = TRUE) {
  nc <- ncol(y)
  means <- numeric(nc)
  for(i in 1:nc) {
    means[i] <- mean(y[, i], na.rm = removeNA)
  }
  means
}