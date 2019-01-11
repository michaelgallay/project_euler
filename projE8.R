#Largest product in a series



options(scipen=999) # remove scientific notation

dat <- readLines("projE8dat.txt") 

dat <- unlist( strsplit(dat, "") )

datN <- as.numeric(dat)


x <- list() # list storing results of prod of 13 adjacent numbers


count <- 1


for(i in 1:(length(datN)-12)){
  
  
  #if there's a 0 in thirteen adjacent number so product = 0 and won't be calculated
  
  if(!("0" %in% dat[seq(i, i+12)])){
    
    l_13 <- dat[seq(i, i+12)]
    
    x[[count]] <- prod(as.numeric(l_13))
    
    count <- count + 1
    
     }
    
}


answer <- max(unlist(x))


