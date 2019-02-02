#Summation of primes: Find the sum of all the primes below two million.


prime.test <- function(x){
  #input: number to test
  #return: logical TRUE / FALSE for primal test
  
  if(x == 2){
    
    return(TRUE)
    break
    
  }else{
    
    limit <- round(sqrt(x))  
    
    y <- seq(2,limit)
    
    y <- y[!(y>3  & y%%2 ==0)]
    y <- y[!(y>3  & y%%3 ==0)]
    y <- y[!(y>5  & y%%5 ==0)]
    
    ans <- 0
    
    for(i in 1:length(y)){
      
      if(x%%y[i] == 0){ans <- FALSE
                       break
                       
      }else{ans <- TRUE}
    }
    
    return(ans)
  }
  
}




x <- seq(2, 2000000) #list of all integer < 2000000


x <- x[!(x%%2 == 0)] #removing part of list for numbers that can't be prime
x <- x[!(x%%3 == 0)]
x <- x[!(x%%5 == 0)]



y <- 10

for (i in x){
  
  if(prime.test(i)){
    
    y <- y + i
      
    
  }
    
}


lapply(x, prime.test)


rm(list=ls())






#faster version based of sieves 

x <- seq(2, 2000000) #sequence containing the list of prime
z <- x #copy of the list that will be used


for(i in 1 : sqrt(max(z))){
  # because we re eliminating non prime numbers and highest prime factor is not greater that sqrt(n) we iterate up to sqrt of max value in list
  
  
  y <- x[!(x%%z[i] == 0)]  #removing non prime iterativety (starting with 2)
  
  
  z <- c(z[1:i], y) #new list containing prime numbers found so far and remaining numbers 
  
  x <- y #new list to be tested becomes remaining numbers (potential prime to be tested)
  
 
}

sum(as.numeric(z))













