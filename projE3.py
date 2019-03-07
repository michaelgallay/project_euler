# LArgest prime factor


n = 600851475143


def projectE3(n):
    factor = 2

    while n > 1:
        if n % factor == 0:
            n = n / factor
        else:
            factor += 1
    return factor


result = projectE3(n)


print(f"the largest prime factor of {n} is {result}")



