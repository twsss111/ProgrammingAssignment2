## This program is for the R programming week 3 programming assignment 2.
## (Caching the Inverse of a Matrix). It includes 2 functions. makeCacheMatrix
## function and the cacheSolve function.

## This makeCacheMatrix function creates a special "matrix" object that 
## can cache its inverse.

makeCacheMatrix <- function(x = matrix()) {
	
	cache_inv <- NULL
	# cache_inv is used to cache the inversed Matrix
	# initially nothing is cached so set it to NULL
	
	set <- function(y) {
		x <<- y
		cache_inv <<- NULL
		}
	#store the new matrix value and reset the cache_inv to NULL

	get <- function() x
	#show the stored matrix value

	setinverse <- function(solve) cache_inv <<- solve
	#store the inversed Matrix value to cache_inv

	getinverse <- function() cache_inv
	#show the inversed matrix value	

	list(	set = set, 
		get = get,
		setinverse = setinverse,
		getinverse = getinverse)
	#show a list that each element is a function
}


## This cacheSolve function computes the inverse of the special "matrix"  
## returned by makeCacheMatrix above. If the inverse has already been  
## calculated (and the matrix has not changed), then the cachesolve  
## should retrieve the inverse from the cache.

cacheSolve <- function(y, ...) {
	m_inv <- y$getinverse()
	#first get the stored inversed matrix value
	
	if(!is.null(m_inv)) {
		message("getting cached data")
		return(m_inv)
		}
	#if stored inversed matrix value is not null, 
	#show the message "getting cached data"
	
	data <- y$get()
	#If the stored inversed matrix value is null, get the matrix value first
	
	m_inv <- solve(data, ...)
	#then calculate the inversed matrix value
	#and store the value to m_inv

	y$setinverse(m_inv)
	#also set the inversed matrix to the cache_inv

	m_inv
	#show the inversed matrix value
}
