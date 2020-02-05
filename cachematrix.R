## Put comments here that give an overall description of what your
## functions do

## Initializes the matrix and inverse values, and define the setter and getter functions
## Provide list names to the get(), set(), getinverse(), setinverse() functions

makeCacheMatrix <- function(x = matrix()) {
  m <- NULL
  set <- function(y){
    x <<- y
    m <<- NULL
    
  }
  
  get <- function() x
  
  setinverse <- function(matrix) m <<- matrix
  
  getinverse <- function() m
  
  list(set = set, 
       get = get,
       setinverse = setinverse,
       getinverse = getinverse)

}


## Calculates the Inverse of the matrix, retrieve from cache if the value passed is different from value in cache, 
## otherwise recalculate the inverse

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
        
          m <- x$getinverse()
          if(!is.null(m)) {
            message("getting cached data")
            return (m)
          }
          data <- x$get()
          m <- solve(data,...)
          x$setinverse(m)
          m

        
}
