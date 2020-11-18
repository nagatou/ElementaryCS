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
    if code in ALPHABET:                 # 小文字アルファベットならば
      offset = code - ALPHABET[0]
      offset = ((26 + offset) - k) % len(ALPHABET) # 文字コードをずらす
      plain[i] = offset + ALPHABET[0]
    else:
      plain[i] = code
  return(bytes(plain).decode("ascii"))

### TEST HARNESS
os.system("clear")
with open('./ciphertext.txt','rt') as file: # 暗号文を読み込む
    ciphertext= file.readline()
hirabun = dec(K,ciphertext)                 # 平文に変換
print(hirabun)                              # 平文を出力
