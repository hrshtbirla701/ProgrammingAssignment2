## makeCacheMatrix function computes and stores the inverse matrix in cache
makeCacheMatrix <- function(x = matrix()) {
          m <- NULL
          set <- function(y) {
            x <<- y
            m <<- NULL
          }
          get <- function() x                ##this function get the value of vector
          setinv <- function(solve) m <<- solve   ##this function set the value of inverse of matrix
          getinv <- function() m                  ##this function get the value of inverse of matrix
          list(set = set, get = get,
               setinv = setinv,
               getinv = getinv)
}


## cacheSolve outputs the inverse of matrix
cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
          m <- x$getinv()
          if(!is.null(m)) {
            message("getting cached data")
            return(m)
          }
          data <- x$get()
          m <- solve(data, ...)
          x$setinv(m)
          m
}
