#Non-abundant sums

#sum of divisor

import math

math.sqrt(9)


def SumDiv(n):
    maxdiv = int(n/2) + 1
    res = 0
    for i in range(1, maxdiv):
        if n % i == 0:
            res += i
    return(res > n)


SumDiv(1)



#list of numbers from 1 to 28124

all_num = list(range(1, 28123))

#sum of abundant number

abunlist = []

for i in range(1, 28124):
    if SumDiv(i):
        abunlist.append(i)


#building set of sum of abundnt number < 28123

nanum = set() # a set cannot ontain multiple occurence of the same number so will keep unique values

for i in range(len(abunlist)):
    for l in range(i, len(abunlist)):
        s = abunlist[i] + abunlist[l]
        if s < 28123:
            nanum.add(s)


answer = sum(all_num) - sum(nanum) # sum of all numbers < 28123 minus sum of (list of sum of 2 abundant numbers < 28123) = Non abundant sum

print(answer)