#!/usr/bin/python3

def q(num):
    return num**5

def equal(x):
    if sum(map(q, map(int, list(str(x))))) == x:
        return True
    return False

nums = []

for i in range(2, 9999999):
    if equal(i):
        nums.append(i)

print(nums)
print(sum(nums))
