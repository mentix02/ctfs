import typing

count = 1

def factors_len(n: int) -> typing.List[int]:
    return len([i for i in range(1, n+1) if n % i == 0])

while True:
    tri_number = (count ** 2 + 1) // 2
    f_l = factors_len(tri_number)
    if f_l >= 500:
        print(tri_number)
        break
    count += 1
    print(f'Num: {count}, triangle: {tri_number}, factors: {f_l}')
