# mult_basiconly.py
# Input: 自然数 x, y
# Output: x * y
###

import os

os.system('clear')
x = int(input("x? "))       # 入力された自然数を x に代入
y_t = y = int(input("y? ")) # 入力された自然数を y に代入
seki = 0                    # seki を 0 で初期化
while y > 0:                # y が 0 より大きい間繰り返す
  a = seki
  b = x
  wa = a                    # 和のプログラム add.py を挿入
  while b > 0:
    wa = wa + 1
    b = b - 1
  seki = wa                 # wa の値 (seki + x) を seki に代入
  y = y - 1                 # y - 1 の値を y に代入
print(seki)                 # seki の値を出力

def add(x,y):
  wa = x                    # a の値を wa に代入
  while y > 0:              # b が 0 より大きい間繰り返す
    wa = wa + 1             #   wa + 1 の値を wa に代入
    y = y - 1               #   b - 1 の値を b に代入
  return(wa)                # 結果を返す
def mult(x,y):
  seki = 0                  # seki を 0 で初期化
  while y > 0:              # y が 0 より大きい間繰り返す
    b = x
    seki = add(seki,b)      # 和のプログラム add(a,b)
    y = y - 1               # y - 1 の値を y に代入
  return(seki)

print(mult(x,y_t))
