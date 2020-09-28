# code.py
# 文字列処理の復習用
# 入力: 文字列
# 出力: 文字列の文字で小文字のみ，文字と各種情報を出力する

import os

ALPHABET = range(ord('a'), ord('z')+1)         # 英字文字アルファベット

os.system("clear")
bun = input("Enter a string:")                 # 入力文字列から改行除法
cc  = list(bun.encode("ascii"))                # 文字列 → 文字コードの配列

for i, moji in enumerate(bun):                # mojiはbunのi文字目を得る (i は 0 から始まる)
	code   = cc[i]                              # その文字のコードを得る
	offset = code - ALPHABET[0]                 # 文字 a との差分
	if code in ALPHABET:                      # 小文字アルファベットなら
		print(moji, ": ", code, ", ",hex(code), ", ", offset)   #   差分まで表示する
	else:                                     # そうでない時は
		print(moji, ": ", code, ", ",hex(code))#   差分は表示しない
