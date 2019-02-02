# Longest Collatz sequence

# The following iterative sequence is defined for the set of positive integers:
# n → n/2 (n is even)
# n → 3n + 1 (n is odd)

target <- 999999

col_number <- c()
sequence_length <- c()

for(n in 2:target){ #iterating through all number from 2 to target 

count <- 1 #counter for length of Collatz sequence

m <- n

  while(n!=1){
  
    if(n%%2 == 0){
      
      n <- n/2
           
    }else{
      
      n <- (3*n) +1
           
    }
   
  count <- count + 1
  
  }

#print(count)

col_number[m-1] <- c(m)
sequence_length[m-1] <- count

}


answer <- col_number[which(sequence_length == max(sequence_length))]

print(answer)



rm(list=ls())




