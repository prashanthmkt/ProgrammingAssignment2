## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function

## Creates a Special "matrix" object that can cache its inverse.

makeCacheMatrix <- function(x = matrix()) {
     m<- NULL

     ## set matrix

     set <-function(y){
         x<<- y
         m<<- NULL
    }

    ## method to get the matrix

    get<- function()m

    ##set the inverse of matrix

    setInverse <-function(inverse) m<<- Inverse
    
    ## get the inverse of matrix

    getInverse<-function()m

    ## return a list of methods

    list(set=set, get=get,
         setInverse= setInverse,
         getInverse= getInverse)
}

## Write a short comment describing this function
##This function computes the inverse of the special "matrix" returned by makeCacheMatrix above.
##If the inverse has already been calculated (and the matrix has not changed),
## then the cachesolve should retrieve the inverse from the cache.

CacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
      m<-x$getInverse()
      if(!is.null(m)){
       message("getting cached data")
       return(m)
     }
     ## Get the matrix from our object
     data<- X$get()
     m<- solve(data, ...)

     ##set the inverse to the object
     x$setInverse(m)

     ## Return the matrix
     m
}


