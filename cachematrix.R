## Put comments here that give an overall description of what your


## this function initializes a list of the four functions that allow for the Matrix
## value to be cached when utilizing the cacheSolve function
##list will contain "get", "set", "setInvMatrix", "getInvMatrix" functions
makeCacheMatrix <- function(x = matrix()) {
  
  ##setting the  variable of m and initializing as null to 
  m <- NULL
  
  ## creating the  "set"  this function will set the input value to global
  ## variable of x to the matrix value passed, and making the global m variable to NULL
  set <- function(y = matrix()) {
    x <<- y
    m <<- NULL
  }
  
  ## creating the "get" function and setting to value of matrix passed into makeCacheMatrix function
  get <- function() {
    x
  }
  
  ## creating the "setinvMatrix" function this function sets the value of m to the
  ##invMatrix
  setinvMatrix <- function(invMatrix){
    m <<- invMatrix
  }
  
  
  ##creating the getinvMatrix function wich returns the value of m
  getinvMatrix <- function(){
    m
  }
  
  
  ##creates the list of the four functions that will be used in the cacheSolve function
  list(set= set, get = get,
       setinvMatrix = setinvMatrix,
       getinvMatrix = getinvMatrix)

}


## function cacheSolve will use the functions sent in the makeCacheMatrix to
## if the inverse matrix is already cached it will return the value that is cached
## if it is not cached then the inverse of the matrix will be calculated and stored 
## into the cache

cacheSolve <- function(x = matrix()) {
  ## Return a matrix that is the inverse of 'x', the value passed in cacheSolve will be
  ## the variable set to makeCacheMatrix
  print("solveInverseMatrix")
  
  ##define variable m as a matrix
  m <- matrix()
  
  ##retrieve the value from makeCacheMatrix and determine if anything has been cached yet
  ## if cached you will get a value if not then you will get null
  m <- x$getinvMatrix()
  
  ## this if statement will return the inverse matrix if it is cached.  if not then will 
  ## skip this if and create the invoice of the matrix and cache it
  if(!is.null(m)) {
    message("getting cached data")
    return(m)
  }
  
  ## createing the "data" matrix
  data <- matrix()
  
  ## getting the matrix value passed into makeCacheMatrix and setting to data
  data <- x$get()
  
  ## uses solve to create the inverse of the data matrix and setting to variable m
  m <- solve(data)
  
  ##using the setinvMatrix from the makeCacheMatrix to set the global variable 
  x$setinvMatrix(m)
  
  ## returning the value of m to the caller of the cacheSolve function
  m
}
