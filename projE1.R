

projectE1  <- function(target){
  #function will calculate a sum of all natural number multiple of 3 or 5 less or equal to target
  #inputs: target -
  #returns sum of natural numbers mutliple of 3 or 5  from 1 to target
  
  


  result <- 0

  for(i in 1:target){
  
    if(i%%3 == 0 | i%%5 == 0){
      result <- result + i 
      }   
    }

return(result)


}

projectE1(999)
