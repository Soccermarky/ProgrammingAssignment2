


        ##want to create an invertible matrix 
makeCacheMatrix <- function(x = matrix()) {
               
        
                ## set the value of the matrix
                ##get the value of the matrix
                ##set the inverse
                ##get the inverse
        
        inv <- NULL
        set <- function(y) {
                x <<- y
                inv <<- NULL
        }
        
        get <- function() x
        setinv <- function(inverse) inv <<- inverse
        getinv <- function() inv
        list(set = set, get = get,
             setinv = setinv,
             getinv = getinv)
}



cacheSolve <- function(x=matrix(), ...) {
        ## Return a matrix that is the inverse of 'x'
        inv <- x$getinv()
        
        ## if we already have inverse calculated
        if(!is.null(inv)) {
                message("getting cached data")
                return(inv)
        }
        
        ## if not then calculates inverse
        data <- x$get()
        inv <- solve(data, ...)
        
        ##sets value of inverse into the cache
        x$setinv(inv)
        inv
}
