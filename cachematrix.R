## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function
##
## makeCacheMatrix is a function it will build a matrix and store it in cache
##


makeCacheMatrix <- function(x = matrix()) {
  i <- NULL
  set <- function(y) {
    x <<- y
    i <<- NULL
  }
  get <- function() x
  setsolve <- function(solve) i <<- solve
  getsolve <- function() i
  list(set = set, get = get,
       setsolve = setsolve,
       getsolve = getsolve)

}


## Write a short comment describing this function
##
## cacheSolve is a function that will invert a matrix received
##
cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
  i <- x$getsolve()
  if (!is.null(i)){
    ## get the cache
    return(i)
   }
  myMatrix <- x$get()
  i <- solve(myMatrix, ...)
  x$setsolve(i)
  i
}
