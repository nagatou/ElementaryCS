# hukugo.py
# 復号サブルーチンの定義と利用
# 入力: 暗号文の文字列
# 出力: 復号した平文

import os

### Global variables
K = 3 # 暗号鍵の設定

# 平文を暗号化するサブルーチン
# dec(秘密鍵 k, 暗号文 c) = 平文 m
def dec(k, c):
  ALPHABET = range(ord('a'), ord('z')+1) # 英字小文字アルファベット
  cipher = list(c.encode("ascii"))       # 文字列 -> 文字コードの配列
  plain = cipher.copy()                   # 平文格納用配列
  for i,code in enumerate(cipher):
    ###
    # 宿題 5
    ###
  return(bytes(plain).decode("ascii"))

### TEST HARNESS
os.system("clear")
hirabun = dec(K,input())       # 平文に変換
print(hirabun)                 # 平文を出力
