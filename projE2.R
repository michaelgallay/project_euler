#Even Fibonacci numbers



#function for finding the nth fibo number
 
recur_fibo <- function(n){
  
  #function to find the nth fibonacci number
  #input: the index of fibonacci number needed
  #return: the fibonacci number
  
  if(n<=1){return(n)
  }else{
    
    x <- recur_fibo(n-1) + recur_fibo(n-2)
    
    return(x)    
  } 
  
}




projectE2  <- function(max_val){
  #function to calculate sum of even Fibonacci numbers less than a specific value
  #input: max_val
  #return: the sum all even fibonnacci number les than the max value

  result <- 0
  fibo_n <- 0
  i <- 1
  
  while(fibo_n < max_val){
    
        
    if(fibo_n%%2 == 0){result = result + fibo_n}
    
    fibo_n <- recur_fibo(i)
    
    
    i <- i+1
     }
  
  return(result)

}



projectE2(4000000)


rm(list = ls())








