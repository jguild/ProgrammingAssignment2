## This is the Cashing the Inverse of a Matrix asignment (#2) from R Programming
## due the end of week 3 (11/25/2015) There are two functions below that are
## intended to demonstrate an understanding of "cashe"ing a variable so it will
## be  and returned to the current environment in lieu of being recalculated

## Create a special "matrix" object that can cache its inverse and return the value
makeCacheMatrix <- function (x = matrix()) {
  x_inv <<- solve(x)
  #x_inv <- function(solve) x
  return(x_inv)
  }

## Return a matrix that a previously cached inverse value of 'x' from outside
## the environment if it exists. Note that if you specify a new 'X' and a cached
## value is found, the value returned will not be correct
cacheSolve <- function (x,...) {
    if(!is.null(x_inv)){
    return (x_inv)
  }
  x_inv <- solve(x)
    return (x_inv)
 }