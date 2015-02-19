## This program is for the R programming week 3 programming assignment 2.
## (Caching the Inverse of a Matrix). It includes 2 functions. makeCacheMatrix
## function and the cacheSolve function.

## This makeCacheMatrix function creates a special "matrix" object that 
## can cache its inverse.

makeCacheMatrix <- function(x = matrix()) {
	m_inv <- NULL
        set <- function(y) {
                x <<- y
                m_inv <<- NULL
        }
        get <- function() x
        setinverse <- function(solve) m_inv <<- solve
        getinverse <- function() m_inv
        list(set = set, get = get,
             setinverse = setinverse,
             getinverse = getinverse)

}


## This cacheSolve function computes the inverse of the special "matrix"  
## returned by makeCacheMatrix above. If the inverse has already been  
## calculated (and the matrix has not changed), then the cachesolve  
## should retrieve the inverse from the cache.

cacheSolve <- function(y, ...) {
        ## Return a matrix that is the inverse of 'x'
	m_inv <- y$getinverse()
        if(!is.null(m_inv)) {
                message("getting cached data")
                return(m_inv)
        }
        data <- y$get()
        m_inv <- solve(data, ...)
        y$setinverse(m_inv)
        m_inv

}
