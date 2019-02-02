# Highly divisible triangular number


# algorithm to put in place

# https://sciencing.com/factors-number-quickly-easily-5192972.html 


#function to count the number of factor (from proj eurler 3)

factor_counter <- function(n){
  #input: the number to factorize
  #returns: the number of factor
  
  count = 0
  
  for(i in 1:sqrt(n)){
    
    if(n%%i == 0){count = count + 2}
    
  }
    if(i*i == n){count = count - 1}
  
return(count)  
}

## generating triangle numbers and counting # of factors




j = 1

count_of_factors = 0

while(count_of_factors <500){
  
  triangle_number <- sum(seq(1,j))
  
  
  
  count_of_factors <- factor_counter(triangle_number)
  
  
  j <- j+1
      
      
    }


sprintf("triangle number: %s ", triangle_number )

sprintf("Count of factors: %s ", count_of_factors )






    
   
 








