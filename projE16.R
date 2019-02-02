# Power digit sum


library(gmp)

options(scipen = 999)



x <- as.bigq(2^1000)

x <- strsplit(as.character(x), "")

answer <- sum(as.numeric(unlist(x)))
