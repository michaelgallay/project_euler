# Multiples of 3 and 5



target = 1000

sum = 0

for i in range(2,  target - 1):
    if (i % 3 == 0  or i % 5 == 0):
        sum += i

print(f"The sum of all number multiple of 3 or 5 below {target} is {sum}")