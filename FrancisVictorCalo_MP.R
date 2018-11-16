#Define an R function that removes NA values from a vector.
removeNA <- function(v){
  na.omit(v)
}

#Create a function isPrime(n) that accepts an integer and outputs a Boolean value (TRUE or FALSE) depending whether the integer is a prime 
isPrime<-function(n){
  if(n%%2!=0 | n==2){
    result<-TRUE
  }else{
    result<-FALSE
  }
  return(result)
}

#Define an R function that sorts a given vector in decreasing order. The output should be a vector of the same length. It should accept both numeric or character vectors. 
sortVector<-function(v){
  sorted<-sort(v,decreasing = TRUE)
  return(sorted)
}

#Define an R function that computes the factorial of given an integer argument. The output should be a vector of length 1.
fact<-function(n){
  factorial(n)
}

factManual<-function(n){
  i<-n
  res<-n
  while(i>1){
    i<-i-1
    res<-res * i
  }
  return(res)
}

#Create a function to return the nth highest number
nHighest<-function(n,v){
  res<-tail(head(sort(v,decreasing = TRUE),n),1)
  return(res)
}