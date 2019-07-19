#!/usr/bin/python

def is_pal(num):
    if str(num)[::-1] == str(num):
        return True
    return False

pals = []

for i in reversed(range(100, 1000)):
    for j in reversed(range(100, 1000)):
        if is_pal(str(i * j)):
            pals.append(i*j)
        continue


print(max(pals))
