import string
import typing

table: typing.Dict[str, int] = {}

"""
Create table - 
{
 'A': 1,
 'B': 2,
 'C': 3,
 .
 .
 .
 'Y': 25,
 'Z': 26
}
"""

for i, char in enumerate(string.ascii_uppercase):
    table[char] = i + 1

def get_worth(text: str) -> int:
    score = 0
    for char in text:
        score += table[char]
    return score

if __name__ == '__main__':

    total: int = 0

    # load data
    text = open('p022_names.txt').read()
    text = text.replace('"', '')

    names: typing.List[str] = text.split(',')

    # sort names
    names.sort()

    # calculate total
    for i, name in enumerate(names):
        total += get_worth(name) * (i+1)

    print(total)
