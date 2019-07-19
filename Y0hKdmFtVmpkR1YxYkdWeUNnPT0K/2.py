#!/usr/bin/python

fib_nums = []

def fib(n):
    a, b = 0, 1
    while a < n:
        fib_nums.append(a)
        a, b = b, a+b

fib(4000000)

nums = []

for num in fib_nums:
    if num % 2 == 0:
        nums.append(num)

print(sum(nums))
