# Largest palindrome product



IsPalindrome <- function(n){
  
  #function to check is number is a plindrom
  #input: string or integer (that will be converted to string)
  #returns: TRUE / FALSE
  
  n.char <- as.character(n)
  
  n.raw <- charToRaw(n.char)
  
  return(identical(n.raw, rev(n.raw)))
  
  
}


x = seq(999,100) # sequence of 3 digits number in descending order (because we look for largest palindrome)


res <- 0 #final result (largest palindrome)
ans <- 0 

for(j in 999:100){
  #iteration made to go through all multiplication of 3 digit numbers in decreasing order 
  y = j*x
  
  for(i in length(y):1){
    #palindrome test for each elements of jth list of 3 digit multiplication number
      
    if(IsPalindrome(y[i])){
      #print(y[i])
      ans <- y[i]
      if(ans > res){res <- ans}
      break
      }
  }
  
}



