# Reciprocal cycle

#prime test

'''
https://oeis.org/A001913

https://oeis.org/A002371



Primes p such that the decimal expansion of 1/p has period p-1, which is the greatest period possible for any integer.


The two notations are closely related: if a mod p=b, then a≡b(mod p)



'''





import math


def isprime(x):
    if x == 2:
        return(True)
    else:
        limit = int(math.sqrt(x))

        y = range(2, limit+1)

        k = True

        for i in y:
            if x%i == 0:
                k = False
    return(k)




count = 3

prime_list = []

while count < 1000:
    if isprime(count):
        prime_list.append(count)
    count += 1

def cycle_length(den):
    reste = 10
    i = 0
    #Calcul des décimales tant que le reste n'est pas égal à 10
    while reste != 10 or i < 1:
        reste = (reste % den) * 10
        i += 1
    return i

# as per https://oeis.org/A002371 exception are prime 2 and 5

del prime_list[1]

res = 0

for i in prime_list:
    period = 1
    while pow(10, period, i) != 1:
        period += 1
    if period > res:
        res = period

res += 1

print(res)

