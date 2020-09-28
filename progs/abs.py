# abs.py
# Input: 整数 x
# Output: x の絶対値

import os

os.system('clear')
x = int(input("x? ")) # 入力された整数を x に代入
if x>=0:              # x が 0 以上なら，
  print(x)            # x の値を出力
else:                 # x が 0 以上でない (x が 0 未満) なら
  print(x * (-1))     # x * (-1) の計算結果を出力
