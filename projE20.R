# Factorial digit sum


#Find the sum of the digits in the number 100!

#function to calculate factorial number

#issue with long number use gmp

options(scipen = 999)

library(gmp) # to deal with large numbers

#function not working with large numbers

factorial <- function(n){
  
  if(n <= 1) {
    return(1)
  } else { 
    return(n * factorial(n-1))
  }
  
  
}


fac_number <- factorialZ(100) # function from GMP package

fac_char <- as.character(fac_number)

fac_char <- strsplit(fac_char, "")

sum(as.integer(unlist((fac_char)))
