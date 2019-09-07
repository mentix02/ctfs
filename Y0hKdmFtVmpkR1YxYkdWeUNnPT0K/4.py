#!/usr/bin/python

def is_pal(num: str):
    return num[::-1] == num

pals = set()

for i in reversed(range(100, 1000)):
    for j in reversed(range(100, 1000)):
        mul = i * j
        if is_pal(str(mul)):
            pals.add(mul)
        continue

print(max(pals))
