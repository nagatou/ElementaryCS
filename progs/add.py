# add.py
# Input: 自然数 a, b
# Output: a + b
###

import os

os.system('clear')
a = int(input("a? "))  # 入力された自然数を a に代入
b_t = b = int(input("b? "))  # 入力された自然数を b に代入
wa = a                 # a の値を wa に代入
while b > 0:           # b が 0 より大きい間繰り返す
  wa = wa + 1          #   wa + 1 の値を wa に代入
  b = b - 1            #   b - 1 の値を b に代入
print(wa)              # wa の値を出力

def add(a,b):
  wa = a               # a の値を wa に代入
  while b > 0:         # b が 0 より大きい間繰り返す
    wa = wa + 1        #   wa + 1 の値を wa に代入
    b = b - 1          #   b - 1 の値を b に代入
  return(wa)           # 結果を返す

print(add(a,b_t))
