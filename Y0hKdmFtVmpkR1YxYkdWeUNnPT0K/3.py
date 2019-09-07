#!/usr/bin/python3

from prime import prime

num = 600851475143

def facts(n):
    i = 2
    factors = []
    while i * i <= n:
        if n % i:
            i += 1
        else:
            n //= i
            factors.append(i)
    if n > 1:
        factors.append(n)
    return factors

if __name__ == '__main__':
    print(max(facts(num)))
