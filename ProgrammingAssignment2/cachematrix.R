## this function catch matrix and save it

makeCacheMatrix <- function(x = matrix()) {
  m <- NULL
  set <- funtion(y)
  {
    x <<- y
    m <<- NULL
  }
  get <- function() x
  setinverse <- function(inverse) m <<- inverse
  getinverse <- function() m
  list(set = set, get = get, setmean = setmean, getmean = getmean)
  
}


## this function accepts a matrix and computes its inverse if not done before

cacheSolve <- function(x, ...) {
  ## Return a matrix that is the inverse of 'x'
  m <- x$getinverse()
  if(!is.null(m))
  {
    message("getting cached data")
    return(m)
  }
  data <- x$get()
  m <- solve(data)
  x$setmean(m)
  m
}
