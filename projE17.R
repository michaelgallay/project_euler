#Number letter counts

#package used english for numbers to letters

library(english)

target <- 1000

count <- 0


for(i in 1:target){
  
  
  temp <- as.english(i)
  
  temp <- as.character(temp)
  
  
  
  tempc <- nchar(gsub(" ", "", temp))
  
  if(grepl("hundred ", temp)){
    
    #english package missing word and (ex nine hundred ninety five / nine hundred and ninety five)
    # so adding +3 to count compensate for the number or character missing in those cases
    
    count <- count + tempc + 3 
    
    print(temp)
    print(count)
    
    
  }else{
    
    count <- count + tempc
    
    print(temp)
    print(count)
    
  }
  
  
  
}
