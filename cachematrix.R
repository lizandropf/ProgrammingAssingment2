## Function makecacheMatrix save to cache a Matrix and the inverse matrix
## Function cacheSolve output the inverse matrix save in the makecacheMatrix

## Functions save computational time for inverse matrix calculations.
## The function stores the inverse matrix into the cache and save it into a
## variable to be retrived later with cacheSolve function.

makeCacheMatrix <- function(x, ...){
    m <- NULL
    set <- function(y){
        x <<- y
        m <<- NULL
    }
    get <- function() x
    setsolve <- function(solve) m <<- solve
    getsolve <- function() m
    list(set=set, get=get,
    setsolve=setsolve,
    getsolve=getsolve)
}


## Write a short comment describing this function
## The function will retrieve a matrix that is the inverse of 'x' if it is not already
## in the cache.
}
cacheSolve <- function(x, ...){
    m <- x$getsolve()
    if(!is.null(m)){
        message("getting cached data")
        return(m)
    }
    data <- x$get()
    m <- solve(data)
    x$setsolve(m)
    m
}
