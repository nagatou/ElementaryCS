# junkan.rb
# 配列の使い方の練習（循環小数を循環するまで求める）
# 入力: d
# 出力: 1/d の各桁を循環するまで求める

import os
import time

os.system('clear')
d = int(input("1/d d(>=2)? "))
print("1/",d," を求めます")

# ヒント：次のような配列を使う
# あまりがあれば 10 倍して割るを繰り返す
# あまりは d より小さくなるはずなので 0 から d-1 で有限，したがってどこかで繰り返しがでてくる
rem_count = [0]*d
rem_count[1] = 1
n = 1
print("0.", end=""),
while (True):
  n = n * 10
  q = n // d
  n = n % d
  print(q, end="")
  if (n == 0):
    break
  elif (rem_count[n] >= 1):
    print("...")
    break
  rem_count[n]=rem_count[n]+1
print("")
