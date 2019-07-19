#!/usr/bin/python

def fib(n):
    n = n - 2
    a, b = 1, 1
    c = a + b
    for i in range(n):
        c = a + b
        a, b = b, a + b
    return c

n = 100
x = fib(n)
while len(str(x)) != 1000:
    x = fib(n)
    n += 1

print(x)
print(n - 1)
