## This function can solve matrices for their inverse and cache the output for reuse
## 

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



## This function will return a matrix inverse by either solving it or retrieving it from cached memory

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