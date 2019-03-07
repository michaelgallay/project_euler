# Even Fibonacci numbers

#build fibonacci sequence



def fibo(n):
    # function to calculate the nth fibonscci number
    if n <= 1:
        return(n)
    else:
        x = fibo(n-1) + fibo(n-2)
        return(x)


print(fibo(10))



def projectE2(max_val):
    counter = 1
    fibo_n = 0
    result = 0

    while fibo_n < max_val:
        if fibo_n % 2 == 0:
            result = result + fibo_n

        fibo_n = fibo(counter)

        counter += 1
    return(result)


projectE2(4000000)
