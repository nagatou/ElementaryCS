# sq.rb
# Input: 自然数 n
# Output: sq(n)
###

import os

os.system('clear')
n = int(input("? "))  # 入力された自然数を n に代入
a = 1                 # 1 を a に代入，a の2乗を a2 に代入
a2 = a*a
while a2 <= n:        # a2 が n 以下なら直後の命令を実行，それ以外なら end の次の命令に飛ぶ
  a = a + 1           #   a + 1 の計算結果を a に代入
  a2 = a * a          #   a の2乗を a2 に代入
print(a - 1)          # a - 1 の計算結果を出力
