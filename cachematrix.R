## 
## These functions introduce a special matrix object which caches its inverse.
## Create a special "matrix" object that can cache its inverse.
##
## Input to funciton
## The functions takes x A matrix
##
## Output from function
## It reruns list containing four functions to set and get the value of the
##     matrix and to set and get the inverse of the matrix

makeCacheMatrix <- function(x = matrix()) {
  m <- NULL
  set <- function(y) {
    x <<- y
    m <<- NULL
  }
  get <- function() x
  
  setinverse <- function(solve) m <<- solve
  getinverse <- function() m
  
  list(set = set, get = get,
       setinverse = setinverse,
       getinverse = getinverse)
}


## Write a short comment describing this function
##  This cacheSolve function determines inverse of the special "matrix" returned by 
## makeCacheMatrix. If the inverse has already been calculated 
## (and there is no change), then the cachesolve retrieves the 
## inverse from the cache.
## x is special matrix from makeCacheMatrix and returns "m" inverse of x.
##
## Input to funciton
## x A matrix rom makeCacheMatrix
##
## Output from function
## "m" inverse of x
##     
cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
  m <- x$getinverse()
  if(!is.null(m)) {
    message("getting cached data")
    return(m)
  }
  data <- x$get()
  m <- solve(data, ...)
  x$setinverse(m)
  m
}
