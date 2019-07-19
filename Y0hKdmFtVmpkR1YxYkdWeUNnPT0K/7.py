#!/usr/bin/python3
from prime import prime

number = 1
counter = 1

while counter != 10001:
    if prime(number):
        counter += 1
    number += 2

print(number - 2)

