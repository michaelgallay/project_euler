# Smallest multiple


res = 0
fact = 20

while fact !=2:
    res += 20
    for i in range(19,1, -1):
        rem = res % i
        if rem != 0:
            break
        fact = i

print(f"the smallest positive number evenly divisible by all number from 1 to 20 is {res}")
