
# Large sum

options(scipen=999) # remove scientific notation

dat <- readLines("projE13dat.txt") 

dat <- unlist( strsplit(dat, "") )

datN <- as.numeric(dat)


datM <- matrix(datN, nrow = 100, ncol = 50, byrow = T)

# goal is to avoid making the whole sum 
# start by summing the first digit from the left, if the sum has less than 10 digit I multiply by 10 and sum with the second clumn of digits from the right

# because the max sum of 50 digit is 9*50 = 450, we only add maximum 450 to the previous sum * 10 so even if 3 columns are all composed of 9 the incremental amount would be 450*3=1350. that's why I look for the first 13 digit pf the sum before extracting the 10 digits I need.




column <- 1

partial_sum <- 0

while(nchar(partial_sum)<13){
  
  partial_sum <- partial_sum * 10
  
  #print(partial_sum)
  
  new_sum <- sum(datM[,column])
  
  partial_sum <- partial_sum + new_sum
  
  column <- column + 1
  
}

substring(partial_sum, 1, 10)



