# ango.py
# 暗号化サブルーチンの定義と利用
# 入力: 文字列
# 出力: 暗号化した文字列

import os

### Global variables
K = 3 # 暗号鍵の設定

# 平文を暗号化するサブルーチン
# enc(秘密鍵 k, 平文 m) = 暗号文 c
def enc(k, m):
  ALPHABET = range(ord('a'), ord('z')+1) # 英字小文字アルファベット
  plain = list(m.encode("ascii"))        # 文字列 -> 文字コードの配列
  cipher = plain.copy()                  #暗号文格納用配列
  for i,code in enumerate(plain):
    ###
    # 宿題 4
    ###
  return(bytes(cipher).decode("ascii"))

# TEST HARNESS
os.system("clear")
with open('./plaintext.txt','rt') as file: # 平文を読み込む
    plaintext= file.readline()
angobun = enc(K,plaintext)                 # 暗号文に変換
print(angobun)                             # 暗号文を出力
