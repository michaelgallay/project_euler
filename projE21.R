#Amicable numbers

#Evaluate the sum of all the amicable numbers under 10000.

#So we iterate through ‘i’ till i<=sqrt(num) and for any 'i' if it divides 'num' , then we get two divisors 'i' and 'num/i' , continuously add these divisors but for some numbers divisors 'i' and 'num/i' will same in this case just add only one divisor


#first find list of proper divisor of a number

n <- 284


 # need to adjust function not fincing proper divisor for now 

prop_div <- function(n){
  
  #input : number to evaluate
  #output : sum or proper divisor of evaluated number
  
  if(n<2){return(0)}
  
  else{

  lim <- sqrt(n)
  x <- c()
  j <- 1
  
  for(i in 2:lim){
    
    if(n%%i == 0){
      
      x[j] <- i
      x[j+1] <- n/i
      
      j <- j+2    
    } 
  }
  
  s <- sum(x) + 1
  
  return(s)}
}





res <- 0 

for (h in (1:9999)){
  
  x <- prop_div(h)
  z <- prop_div(x)
  
  

  if(h == z & x != h ){
    
    
    #print(h)
    
    res <- res+h   # res is sum of all amicable numbers withing the range
  }

}








