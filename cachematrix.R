## Caches the inverse of a matrix

makeCacheMatrix <- function(x = matrix()) {
	inv <- NULL
	set <- function(y) {
		x <<- y
		inv <<- NULL
	}
	get <- function() x
	setinverse <- function(inverse) inv <<- inverse
	getinverse <- function() inv
	list(set = set, get = get, setinverse = setinverse, getinverse = getinverse)
}

## computes the inverse of a matrix

cacheSolve <- function(x, ...) {
	cachem <- x["get"] ## Retrieve matrix in cache
	if(identical(x, cachem)) {	## Check if identical
		message("getting cached data")
		return(m)
	}
	inv <- solve(x) ## Return a matrix that is the inverse of 'x'
	x["setinverse"] <- inv
	inv
}
