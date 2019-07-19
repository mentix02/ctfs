from math import factorial as fact

hundreds_fact = fact(100)

nums = map(int, list(str(hundreds_fact)))

print(sum(nums))

