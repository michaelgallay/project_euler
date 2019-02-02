
# Largest product in a grid


dat <- read.table("projE11dat.txt", " ", header = F)



max_prod = 0

## vertical product all grid



for(j in 1:(nrow(dat)-3)){
  
  # loop by rows first to last -4 as we multiply 4 numbers
  
  
  for(i in 1:ncol(dat)){
    #loop by column first to last
    
    x <- prod(dat[j:(j+3), i])
    
    if(x>max_prod){max_prod=x}
    
  }

}


## Horizontal product all grid


for(j in 1:(ncol(dat)-3)){
  
  # loop by rows first to last -4 as we multiply 4 numbers
  
  
  for(i in 1:nrow(dat)){
    #loop by column first to last
    
    x <- prod(dat[i, j:(j+3)])
    
    if(x>max_prod){max_prod=x}
    
  }
  
}




## diag prog




for(j in 1:(ncol(dat)-3)){
  
  for(i in 1:(nrow(dat)-3)){
    
    x = dat[j,i] * dat[j+1,i+1] * dat[j+2,i+2] * dat[j+3,i+3]
    
    if(x>max_prod){max_prod=x}
    
  }

}


## off diag


for(j in 4:(ncol(dat))){
  
  for(i in 1:(nrow(dat)-3)){
    
    x = dat[j,i] * dat[j-1,i+1] * dat[j-2,i+2] * dat[j-3,i+3]
    
    if(x>max_prod){max_prod=x}
    
  }
  
}

print(max_prod)


rm(list=ls())
