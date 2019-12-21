## Put comments here that give an overall description of what your
## functions do
## The file consists of 2 functions. 
## 1) makeCacheMatrix is used to create a matrix in memory. 
    ##  This is accomplised by 4 functions: set,get,setinv,getinv. 
    ##  set functions are used to store values into memory, 
    ##  while get is used to fetch them. 
    ##  While calling this function the parenthesis can be empty, 
    ##  to initialize a new matrix. The required matrix can be set 
    ##  with the set fuction, and can be retrieved with the get function. 
    ##  Same can be done for inverse with setinv and getinv.
## 2) cacheSolve take the makeCacheMatrix as function parameter. 
##  It then uses it to check if inverse is previousy calculated 
##  and stored in memory. If so it returns that value with a message 
##  to indicate, its a stored value. Else it computes the value and 
##  return it.

## Write a short comment describing this function
## Initializes a matrix in memory with special functions

makeCacheMatrix <- function(x = matrix()) {
    inv <- NULL
    set <- function(y) {
      x <<- yc
      inv <<- NULL
    }
    get <- function() x
    setinv <- function(solve_inv) inv <<- solve_inv
    getinv <- function() inv
    list(set = set, get = get,
         setinv = setinv,
         getinv = getinv)
  
}


## Write a short comment describing this function
## Uses the matrix initialised by makeCacheMatrix 
## to compute its inverse or fetch it from memory.

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
    inv <- x$getinv()
    if(!is.null(inv)) {
      message("getting cached data")
      return(inv)
    }
    data <- x$get()
    inv <- solve(data, ...)
    x$setinv(inv)
    inv
}
