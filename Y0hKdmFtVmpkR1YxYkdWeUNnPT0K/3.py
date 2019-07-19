#!/usr/bin/python3

num = int(input('enter a number to find its prime factorials : '))

def is_prime(num):
    for i in range(1, num+1):
        if i == 1 or i == num:
            pass
        else:
            if num % i == 0:
                return False
    else:
        return True

def facts(num):
    nums = []
    for i in range(1, num+1):
        if num % i == 0:
            if is_prime(i):
                if i == 1 or i == num:
                    pass
                else:
                    nums.append(i)
    return nums

print(facts(num))
