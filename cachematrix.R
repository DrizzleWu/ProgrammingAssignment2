## Put comments here that give an overall description of what your
## functions do

## This document contains two fuctions
## The makeCacheMatrix function defines the method of setting
## and getting matrix, setting and getting the inverse matrix
## The cacheSolve function make sure the calculation of inverse matrix only
## happens one time

## Write a short comment describing this function
## Setting matrix x
## Getting matrix x
## Setting inverse of matrix x
## Getting inverse of matrix x

makeCacheMatrix <- function(x = matrix()) {
	inverse<-NULL
	set<-function(m){
		x<<-m
	}
	get<-function() x
	setinverse<-function(xinv) inverse<<-xinv
	getinverse<-function() inverse
	list(set=set,get=get,setinverse=setinverse,getinverse=getinverse)
}


## Write a short comment describing this function
## if the inverse already exists, then directly get the value from cache
cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
	m<-x$getinverse()
	if(!is.null(m)){
		message("getting cached data")
		return(m)
	}
	s<-x$get()
	m<-solve(s)
	x$setinverse(m)
	m
}
