# div.py
# Input: x, y
# Output: x/y, x%y

import os

os.system('clear')
x = int(input("x? "))
y = int(input("y? "))
shou = 0
amari = x
while amari >= y:
  shou = shou + 1
  amari = amari - y
print(shou)
print(amari)
