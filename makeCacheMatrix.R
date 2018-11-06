## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function

makeCacheMatrix <- function(x = matrix()) {
  
  SolvedMat <- NULL
  
  set <- function(NewMat){
      x <<- NewMat
      SolvedMat <<- NULL
  }
  getMat <- function() x
  setSolvedMat <- function(NewSolved) SolvedMat <<- NewSolved
  getSolvedMat <- function() SolvedMat
  
  list(set = set, get = get, 
       setSolvedMat = setSolvedMat, 
       getSolvedMat = getSolvedMat)



## Write a short comment describing this function

cacheSolve <- function(x, ...) {
  
  SolvedMat <- x$getSolvedMat()
  
  if(!is.null(SolvedMat)){
      message("Getting Cached Data")
      return(SolvedMat)
  }
    data <- x$get()
    SolvedMat <- solve(data, ...)
    x$setSolvedMat(SolvedMat)
    SolvedMat
}
}