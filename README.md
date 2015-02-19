### Introduction

This is the R Programming's week 3 Programming assignment2. The objective is to Cache the Inverse of a Matrix.
It includes two functions.
1.makeCacheMatrix: This function creates a special "matrix" object that can cache its inverse.
2.cacheSolve: This function computes the inverse of the special "matrix" returned by makeCacheMatrix above. If the inverse has already been calculated (and the matrix has not changed), then the cachesolve should retrieve the inverse from the cache.


### Introduce makeCacheMatrix Functions 
The first function, `makeVector` creates a special "vector", which is
really a list containing a function to

1.  set the value of the Matrix
2.  get the value of the Matrix
3.  set the value of the inverted matrix
4.  get the value of the inverted matrix


### Introduce cacheSolve function: 
This function computes the inverse of the special "matrix" returned 
by `makeCacheMatrix` above. If the inverse has already been calculated 
(and the matrix has not changed), then `cacheSolve` should retrieve 
the inverse from the cache.
