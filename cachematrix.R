## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function

makeCacheMatrix <- function(x = matrix()) {
  ##setting a placeholder for inverse
  i<-NULL
  ## resetting matrix and inverse variables 
  set<-function(y){
    x<<-y
    i<<-NULL
  }
  
  ##returns matrix x
  get<-function() x
  
  ## setting i to solve function 
  setmatrix<-function(solve) i<<- solve
  ## returns inverse i
  getmatrix<-function() i
  
  ##retuns list of all defined functions
  list(set=set, get=get,
       setmatrix=setmatrix,
       getmatrix=getmatrix)
  
  
  
}


## Write a short comment describing this function

cacheSolve <- function(x, ...) {
  ## Return a matrix that is the inverse of 'x'
  ## checking if inverse value for matrix x already n the cache 
  i<-x$getmatrix()
  if(!is.null(i)){
    message("getting cached data")
    return(i)
  }
  
  ## if it is not in the cache it calculates inverse
  matrix<-x$get()
  i<-solve(matrix, ...)
  x$setmatrix(i)
  i
  
  
  
}