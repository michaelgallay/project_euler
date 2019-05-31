
n = int(input())
name_numbers = [input().split() for _ in range(n)]
phone_book = {k: v for k,v in name_numbers}
while True:
    try:
        name = input()
        if name in phone_book:
            print('%s=%s' % (name, phone_book[name]))
        else:
            print('Not found')
    except:
        break
def factorial(n):
    if n < 1:
        return(1)
    res = n * factorial(n-1)

    return(res)


x = bin(951)
a=1

for i in range(len(x)-1):

    if x[i]=='1' and x[i+1] == '1':
        a+=1

    else:
        b=max(a, 1)
        a = 1

x = bin(951)[2:].split('0')

max([len(i)for i in x])

x =[[1, 1, 1, 0, 0, 0], [0, 1, 0, 0, 0, 0], [1, 1, 1, 0, 0, 0], [0, 0, 2, 4, 4, 0], [0, 0, 0, 2, 0, 0], [0, 0, 1, 2, 4, 0]]

for i in x:
    print(i)

res = -63 # if all numbers in hour glass are -9

for i in range(4):
    for j in range(4):
        #print(i, j)
        row1 = x[i][j] + x[i][j+1] + x[i][j+2]

        row2 = x[i+1][j+1]
        row3 = x[i+2][j] + x[i+2][j+1] + x[i+2][j+2]

        temp = row1 + row2 + row3
        if temp > res:
            res = temp
print(res)

x = [2,3]

class Person:
	def __init__(self, firstName, lastName, idNumber):
		self.firstName = firstName
		self.lastName = lastName
		self.idNumber = idNumber
	def printPerson(self):
		print("Name:", self.lastName + ",", self.firstName)
		print("ID:", self.idNumber)

class Student(Person):
    #   Class Constructor
    #
    #   Parameters:
    #   firstName - A string denoting the Person's first name.
    #   lastName - A string denoting the Person's last name.
    #   id - An integer denoting the Person's ID number.
    #   scores - An array of integers denoting the Person's test scores.
    #
    # Write your constructor here
    def __init__(self, firstName, lastName, idNumber, scores):
        super().__init__(firstName, lastName, idNumber)
        self.scores = scores

    #   Function Name: calculate
    #   Return: A character denoting the grade.
    #
    # Write your function here
    def calculate(self):
        average = sum(self.scores) / len(self.scores)
        if average >= 90 and average <=100:
            return("O")
        elif average >= 80 and average <90:
            return("E")
        elif average >= 70 and average <80:
            return("A")
        elif average >= 60 and average <70:
            return("P")
        elif average >= 50 and average <60:
            return("D")
        elif average <40:
            return("T")




from abc import ABCMeta, abstractmethod
class Book(object, metaclass=ABCMeta):
    def __init__(self,title,author):
        self.title=title
        self.author=author
    @abstractmethod
    def display(): pass

#Write MyBook class

class MyBook(Book):
    def __init__(self, title, author, price ):
        super(Book, self).__init__()
        self.price = price
    def display(self):
        print("Title: ", title)
        print("Author", author)
        print("Price: ", str(price))


x = [2,3,4]

y = [1,5,6]

z = []
for i in x:
    for j in x:
        z.append(abs(i-j))
        print(z)