## For an inverse of a matrix that has previously been calculated, function prints cache, otherwise calculates inverse

## Calculate and cache inverse of a matrix

makeCacheMatrix <- function(x = matrix()) {
  i<- NULL
  set<- function(y){
    X<<- y
    i<<- NULL
  }
  get<-function()x
  setinverse<- function(inverse) i <<- inverse
  getinverse<- function() i
  list(set=set,get=get,setinverse=setinverse,getinverse=getinverse)
}



## Calculates inverse of a matrix

cacheSolve <- function(x, ...) {
  i <- x$getinverse()
  if(!is.null(i)) {
    message("getting cached data")
    return(i)
  }
  data <- x$get()
  i <- solve(data)
  x$setinverse(i)
  i
}
