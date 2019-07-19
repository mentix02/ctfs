def is_prime(n):
    for i in range(2, n):
        if n % 2 == 0:
            return True
    else:
        return False


primes = []

for i in range(2, 1000000):
    if is_prime(i):
        primes.append(i)

print(sum(primes))
        
