## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function
This function is to create a matrix object that can cache its inverse.

makeCacheMatrix <- function(x = matrix()) {
	s <- NULL
	set <- function(y) {
		x <<- y
		s <<- NULL
	}
	get <- function()x
	setInverse <- function(inverse) s <<- inverse
	getInverse <- function()s
	list(set=set, get=get, setInverse=setInverse, getInverse=getInverse)
}


## Write a short comment describing this function
This function is to return the inverse matrix of the above.

cacheSolve <- function(x, ...) {
	s <- x$getInverse()
	if(!is.null(s)) {
		message("getting cached data")
		return(s)
	}
	data <- x$get()
	s <- solve(data,...)
	x$setInverse(s)
	s
}
