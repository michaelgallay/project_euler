# Special Pythagorean triplet

m=1

n = (500/m) - m^2


for (m in seq(1, 500)){
  
  n = (500/m) - (m)

  if(m>n && n == round(n) && n>0){print("h"); break}

  
  
}

a <- m^2 - n^2

b <- 2*m*n

c <-m^2 + n^2

a+b+c

a*b*c
