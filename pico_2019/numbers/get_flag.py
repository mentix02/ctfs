import string

def converter(num):
    res = ""
    for i in num:
        try:
            res += string.ascii_uppercase[i-1]
        except:
            res += '{'
    return res

print(converter([16, 9, 3, 15, 3, 20, 6, '{', 20, 8, 5, 14, 21, 13, 2, 5, 18, 19, 13, 1, 19, 15, 14]) + '}')
