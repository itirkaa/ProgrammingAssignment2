## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function

## function makeCacheMatrix creates a speacial matrix which contains other functions
makeCacheMatrix <- function(x = matrix()) {
	# setting inverse i equal to null
	i <- NULL
	
	# assigning the value to matrix x and set inverse to NULL
	set <- function(y) {
		x <<- y
		i <<- NULL
	}
	
	# to get the matrix x
	get <- function() { x }
	
	# to set the value of inverse of the matrix to i
	setinverse <- function(inverse) {
		i <<- inverse
	}
	
	# to get the inverse of the matrix
	getinverse <- function() { i }
	
	list(set = set,
		 get = get,
		 setinverse = setinverse,
		 getinverse = getinverse)
}


## Write a short comment describing this function

## The function cacheSolve calculates the inverse of Matrix x
## but first it checks the cache to see if the inverse is already calculated
cacheSolve <- function(x, ...) {
	i <- x$getinverse()
	if(! is.null(i)) {
		message("getting inverse from cache data")
		return i
	}
	data <- x$get()
	i <- solve(data) %*% data
	x$setinverse(i)
	
	## Return a matrix that is the inverse of 'x'
	m
}
