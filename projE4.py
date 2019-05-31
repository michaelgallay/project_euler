# Largest palindrome product


#function to test palindrome

def ispalindrome(n):
    n = str(n)
    return (n == n[::-1])



#first loop

a = 999
res = 0

while a >= 100:
    b = 999
    while b >= a:
        if ispalindrome(a * b):
            res = max(res, a * b)
            break
        b -= 1
    a -= 1

# alternative loop not using max) function

a = 999
res = 0

while a >= 100:
    b = 999
    while b >= a:
        m = a * b
        if ispalindrome(m):
            if m > res:
                res = m
            break
        b -= 1
    a -= 1
