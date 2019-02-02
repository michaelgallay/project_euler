# Lattice paths

# number of path is difines by central binonial coefficient ((2n)!) / ((n!)^2)


options(scipen = 999)

factorial <- function(n){
  
  if(n <= 1) {
    return(1)
  } else { 
    return(n * factorial(n-1))
  }
  
  
}


#number of path for 70*70 grid


n <- 20

answer <- factorial(2*n) / (factorial(n))^2
