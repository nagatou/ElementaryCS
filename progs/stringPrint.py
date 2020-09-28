# stringPrint.py
# 文字列処理の練習プログラム
# 入力: 文字列
# 出力: 文字列の文字を１行１文字で出力

import os

os.system('clear')
str = (input("strings? ")).encode("ascii") # 文字列を入力しよう
for k in range(0,len(str)):
   print(chr(str[k]), hex(str[k]))
