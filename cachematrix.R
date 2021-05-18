## Caching the Inverse of a matrix defined by the user:
## Matrix inversion is usually a costly computation and there may be some 
## benefit to caching the inverse of a matrix rather than compute it repeatedly.
## Below are a pair of functions that are used to create a special object that 
## stores a matrix and caches its inverse.

## Function creates a matrix object that can cache its inverse

makeCacheMatrix <- function(x = matrix()) {
    inverse <- NULL
    # setter for matrix x
    set <- function(y) {
        x <<- y
        inverse <<- NULL
    }
    # getter for matrix x
    get <- function() x
    # setter for inverse of matrix
    setInverse <- function(newInverse) inverse <<- newInverse
    # getter for inverse of matrix
    getInverse <- function() inverse
    list(set = set, get = get,
         setInverse = setInverse,
         getInverse = getInverse)
    
}


## Write a short comment describing this function

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
}
