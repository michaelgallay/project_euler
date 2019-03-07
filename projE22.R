#a 46K text file containing over five-thousand first names, begin by sorting it into alphabetical order. Then working out the alphabetical value for each name, multiply this value by its alphabetical position in the list to obtain a name score.


#For example, when the list is sorted into alphabetical order, COLIN, which is worth 3 + 15 + 12 + 9 + 14 = 53, is the 938th name in the list. So, COLIN would obtain a score of 938 × 53 = 49714.

#What is the total of all the name scores in the file?



data <- read.table("p022_names.txt",sep = ",",  header = F, stringsAsFactors  = F)



data <- as.data.frame(t(data), stringsAsFactors  = F) #transpose data to have 1 column names

data[is.na(data[,1]),] = "NA"

data[,1] <- sort(data[,1])


utf8ToInt("A") # letter A is #65 so by converting each names to int - 64 and summing up will retur score

#example with COLIN

sum(utf8ToInt("COLIN") - 64)


#sorting data by names




scores <- function(n){
  #function to return score of a word
  #input word in capital letter ex "COLIN"
  #return score as double
  
  sc <- sum(utf8ToInt(as.character(n))-64)
  return(sc)
  
}


data$scores <- sapply(data[,1], scores)


result <- sum(row(data)[,1]*data$scores)








