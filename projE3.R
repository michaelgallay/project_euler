#project eurler 3 larger prime factor

n <- 600851475143 


projectE3 <- function(n){
  #input: the number to factorize
  #returns: the largest prime factor

factor <- 2


  while(n > 1){
    
    if(n %% factor == 0){
      n <- n / factor
      #print(factor)
        
      }else{factor <- factor + 1}
  
    
    }

return(factor)

}
  
 
projectE3(n)

rm(list=ls())









