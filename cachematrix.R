## Put comments here that give an overall description of what your
## functions do

## This function creates a special "matrix" object that can cache its inverse.

makeCacheMatrix <- function(x = matrix()) {
  m <- NULL
  ##set the value of the matrix
  set<-function(y){
    x<<-y
    m<<-NULL
  }
  ##get the value of the matrix
  get<-funtion(){
    x
  }
  ##set the value of the inverse
  setinverse<-function(inverse){
    x<<-inverse
  }
  ##get the value of the inverse
  getinverse<-function(){
    x
  }
  list(set = set, get = get,
       setinverse = setinverse,
       getinverse = getinverse)
}


## Calculates the inverse of the special Matrix 

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
  m <- x$getinverse()
  if(!is.null(m)) {
    message("getting cached data")
    return(m)
  }
  data <- x$get()
  m <- solve(data)
  x$setinverse(m)
  m
  
}
