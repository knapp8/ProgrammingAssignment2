## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function
makeCacheMatrix <- function(x = matrix()) {
  print(x)
  m <- NULL
  set <- function(y = matrix()) {
    x <<- y
    m <<- NULL
  }
  print(x)
  get <- function() x
  setinvMatrix <- function(invMatrix) m <<- invMatrix
  print(m)
  getinvMatrix <- function() m
  list(set= set, get = get,
       setinvMatrix = setinvMatrix,
       getinvMatrix = getinvMatrix)

}


## Write a short comment describing this function

cacheSolve <- function(x = matrix()) {
        ## Return a matrix that is the inverse of 'x'
  print("solveInverseMatrix")
  m <- matrix()
  print(x)
  print(m)
 ## print(x$invMatrix())
  m <- x$getinvMatrix()
  print(".5")
  if(!is.null(m)) {
    message("getting cached data")
    return(m)
  }
  print ("1")
  data <- matrix()
##  print(a)
  data <- x$get()
  print("1.5")
  print(data)
  m <- solve(data)
  print("2")
  x$setinvMatrix(m)
  print("3'")
  m
}
