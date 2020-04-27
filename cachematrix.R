## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function
## My objective is to creates a special “matrix” object that can cache its inverse calls "makeCacheMatrix".
##Steps: I used the function " makeVector" and replace for the function inverse.

makeCacheMatrix <- function(x = matrix()) {
m <- NULL
        set <- function(y){
                x <<- y
                m <<- NULL
        }
        GET<- function() x
        setInverse <- function(inverse) m <<- inverse
        getInverse <- function() m
        list(set = set, get = get,
             setInverse = setInverse,
             getInverse = getInverse)
}


## Write a short comment describing this function
##This function computes the inverse of the special "matrix" returned by makeCacheMatrix above. I used the function "CacheSolve"
cacheSolve <- function(x, ...) {
          ## Return a matrix that is the inverse of 'x' 
        m <- x$getInverse()
        if(!is.null(m)){
                message ("getting cahed data")
                return(m)
}
 mat <- x$get()
 m <- solve(mat,...)
  x$setInverse(m)
  m
}

