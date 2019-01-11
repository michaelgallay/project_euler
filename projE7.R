#10001st prime

#facts about prime numbers:
#################################

#The only even prime number is 2. All other even numbers can be divided by 2.

#If the sum of a number's digits is a multiple of 3, that number can be divided by 3.

#No prime number greater than 5 ends in a 5.

#Zero and 1 are not considered prime numbers.

########################################

#prime tester

x <- 2

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
    
    ans = 0
    
    for(i in 1:length(y)){
      
      if(x%%y[i] == 0){ans <- FALSE
                       break
      
      }else{ans <- TRUE}
      }

return(ans)
  }

}


count = 1
res = 0


#looping by number to find the ith prime number count is increased when we find one, res will be the actual ith prime number

while(count <= 10001){
  
  res = res +1
  
  if(prime.test(res) == TRUE){
    count = count + 1
        
  }
  
}


















