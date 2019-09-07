from functools import reduce

count = 3159

def nu_of_factors1(n):
    result_set = set()
    sqrtn = int(n**0.5)
    for i in range(1,sqrtn+1):
        q, r = n/i, n%i
        if r == 0:
            result_set.add(q)
            result_set.add(i)
    return len(result_set)

while True:
    tri_number = int(count * (count + 1) / 2)
    f_l = nu_of_factors1(tri_number)
    if f_l >= 500:
        print(tri_number)
        break
    count += 1
