# Lexicographic permutations

# 1 need to generate permutation (of digits 0 to 9)
# 2 need to sort

#Heap's Algorithm for permutation
# https://en.wikipedia.org/wiki/Heap%27s_algorithm

# recursive heap's algorithms

a = [0,1,2,3]

result = [a]

def generate(K, A):
    if K == 1:
        return(A)
    else:
        generate(K-1, A)
        for i in range(0, K-1, 1):
            if K%2 == 0:
                temp = A[i]
                A[i] = A[K-1]
                A[K-1] = temp
                print(A)

            else:
                temp = A[0]
                A[0] = A[K-1]
                A[K-1] = temp
                print(A)


            generate(K-1, A)

generate(4, a)



#Heap's Algorithm for permutation non recursive format

a = [1,2,3]

result = [a]


def generate(n, A):
    c = []

    for i in range(0, n, 1):
        c.append(0)

    i = 0
    while i < n:
        if c[i]<i:
            if i%2 ==0:
                temp = A[0]
                A[0] = A[i]
                A[i] = temp
                print(A)
            else:
                temp = A[c[i]]
                A[c[i]] = A[i]
                A[i] = temp
                print(A)
            c[i] += 1
            i = 0

        else:
            c[i] = 0
            i +=1



generate(3, a)




##working permuation returning a list of lists

def permutation(s):
   if len(s) == 1:
     return [s]

   perm_list = [] # resulting list
   for a in s:
     remaining_elements = [x for x in s if x != a]
     z = permutation(remaining_elements) # permutations of sublist

     for t in z:
       perm_list.append([a] + t)

   return perm_list



topermute = [0,1,2,3,4,5,6,7,8,9]

perms = permutation(topermute)

perms.sort() #sorting the permutations

result = perms[999999]


#turn result to 1 number

OneResult = ''

for i in result:
    OneResult += str(i)
