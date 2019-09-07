from functools import reduce

digits = open('p8_digits.txt').read()

groups = []

for i in range(len(digits)):
    try:
        groups.append(digits[i:13+i])
    except:
        continue

prods = set()

for group in groups:
    nums = list(map(int, group))
    prod = reduce((lambda x, y: x * y), nums)
    prods.add(prod)

if __name__ == '__main__':
    print(max(prods))
