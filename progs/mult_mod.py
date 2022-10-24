# mult_mod.py
# Input: 自然数 x, y
# Output: x * y
###

import os
import add_mod

os.system('clear')
x = int(input("x? "))       # 入力された自然数を x に代入
y_t = y = int(input("y? ")) # 入力された自然数を y に代入

def mult(x,y):
  seki = 0                    # seki を 0 で初期化
  while y > 0:                # y が 0 より大きい間繰り返す
    b = x
    seki = add_mod.add(seki,b)# add(a,b)はパッケージ化
    y = y - 1                 # y - 1 の値を y に代入
  return(seki)

print(mult(x,y_t))
