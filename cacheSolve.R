##cacheSolve: This function computes the inverse of the special "matrix" returned by makeCacheMatrix above.
##If the inverse has already been calculated (and the matrix has not changed),
##then cacheSolve should retrieve the inverse from the cache.

cacheSolve<-function(x,...){
         i<- x$getinverse
         
         if(!is.null(i)){
         ##if already set then returning the inverse
         message("getting cached data")
         return(i)
         }
         ##getting data
         data<-x$getmatrix
         
         ##inverse using matrix multiplication
         i<- solve(data) %*% data
         
         x$setinverse(i)
         ##return the matrix
         i
}