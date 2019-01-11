#project euler 5 

# Smallest multiple


n = 20

x = seq(20,2)

res <- 0

fact = 0


while(fact != 2){
  
  res <- res+20
  
  for (i in 1 : length(x)){
    
    
    
    rem <- res%%x[i]
    if(rem != 0){ break }
    
    fact = x[i]

    
  }
    
}
























