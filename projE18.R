#Maximum path sum I

# data in file projE18dat.txt


#summing from last row of pyramid and keeping max sum of 2 element - 
# replace second to last by the vector of max and removing last row
# iterate till top of the pyramid



dat <- readLines("projE18dat.txt")

result <- c()

while(length(result)!=1){

  lend <- length(dat) #number of stage of the pyramid
  
  y <- unlist(strsplit(dat[lend], " ")) #bottom of the pyramid
  y <- as.integer(y)
  
  
  z <- unlist(strsplit(dat[lend - 1], " ")) #second to last row of the pyramid
  z <- as.integer(z)
  
  result <- c()
  
  for(i in 1:length(z)){
    # loop to sum  elements keep max by pair and store in result vector that will become the nem bottom of the pyramid.
    
    result[i] <- max(z[i]+y[i], z[i]+y[i+1])
    
    
  }
  
  
  print(result)
  
  dat[lend-1] <- paste(result,collapse=" ")
  
  dat <- dat[1:lend-1]

}






