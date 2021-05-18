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


## Function computes the inverse of matrix provided by the
## function makeCacheMatrix

cacheSolve <- function(x, ...) {
    ## retrieve the inverse of the matrix x
    inv <- x$getInverse()
    ## if inverse is calculated and x is not changed
    ## return immediately
    if(!is.null(inv)){
        message("getting cached inverse of matrix.")
        return(inv)
    }
    
    m <- x$get()
    ## use solve() to calculate inverse of matrix m
    inv <- solve(m,...)
    x$setInverse(inv)
    inv
}
