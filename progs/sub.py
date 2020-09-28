# sub.py
# Input: a, b
# Output: a - b

import os

os.system('clear')
a = int(input("a? "))
b = int(input("b? "))
sa = a
while b > 0:
  sa = sa - 1
  b = b - 1
print(sa)
