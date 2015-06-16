## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function

makeCacheMatrix <- function(x = matrix()) {
  s <- NULL
  set <- function(y){
    x <<-y
    s <<-NULL
  }
  get <- function ()x
  setsd <- function(sd) s<<-sd
  getsd <- function() s
  list (set=set, get=get, setsd=setsd, getsd=getsd)
} 


## Storing values and get the standard deviation of the values

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
  s <- x$getsd()
  if(!is.null(s)) {
    message("getting cached data")
    return(s)
  }
  data <- x$get()
  s <- sd(data)
  x$setsd(s)
  s
}
