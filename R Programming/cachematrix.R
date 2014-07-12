## makeCacheMatrix creates a special kind of matrix that can 
## cache an inversed version of itself.

makeCacheMatrix <- function(x = matrix()) {
    ## Initialize a variable tostore the inverse cache.
    inv <- NULL 
    
    ## Set a new matrix and invalidate the cache
    set <- function(y) {
        x <<- y
        inv <<- NULL
    }
    get <- function() x
    
    setinverse <- function(inverse) inv <<-inverse
    getinverse <- function() inv
    
    ## Return the special matrix
    list(set = set, get = get,
         setinverse = setinverse,
         getinverse = getinverse)
}


## cacheSolve takes the special matrix created with makeCacheMatrix,
## solves for its inverse if it has not already been cached, 
## then returns its inverse

cacheSolve <- function(x, ...) {
    
    ## Test if cache is filled
    inv <- x$getinverse()
    
    ## Return existing cache
    if (!is.null(inv)) {
        return(inv)
        
    ## If no existing cache, solve the inverse and return    
    } else {
        inv <- solve(x$get())
        x$setinverse(inv)
        return(inv)
        }
}