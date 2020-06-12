##Pair of function that can cache the inverse of matrix
##using makeCacheMatrix which creates a special "matrix" object that can cache its inverse

makeCacheMatrix<- function(m=matrix()){
        i<-NULL
     ## using the inverse property
     
     setmatrix<- function(matrix){
     ##setting the matrix
                m<<- matrix
                i<<- NULL
                 }
     getmatrix<- function(){
                  m
                  ##returning the matrix
                 }
     setinverse<- function(inverse){
                 i<<- inverse
                 ##setting the inverse of matrix
                 }
    getinverse<- function(){
                i
                ##getting the inverse of matrix
                 }
      
      list(setmatrix = setmatrix , 
           getmatix = getmatrix,
           setinverse = setinverse,
           getinverse = getinverse)
                 
}