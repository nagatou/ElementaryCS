# abcPrint.py
# 文字列処理の練習プログラム，小文字だけ出力
# 入力: 文字列
# 出力: 文字列の文字で小文字のみ出力する

import os

os.system('clear')
str = (input("strings? ")).encode("ascii") # 文字列を入力しよう"
for k, code in enumerate(str):
  if ord('a') <= code and code <= ord('z'):        # 小文字アルファベットならば
     print(chr(str[k]), hex(code), code)  # 文字，16 進， 10 進を表示する
