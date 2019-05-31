#1000 digit number

# What is the index of the first term in the Fibonacci sequence to contain 1000 digits?

# 1 fibonacci number generator



x = 1
y = 1
z = 1
index = 1


while(len(str(z))<=1000):

    z = x + y
    x = y
    y = z
    index += 1
    #print(z)
    if(len(str(z))==1000):
        print(index+1)
        break



