# kaidoku.py
# 解読プログラム
# 入力: 暗号文の文字列
# 出力: 復号した平文

import os

### Global variables
ALPHABET = range(ord('a'), ord('z')+1) # 英字小文字アルファベット

# hukuho.py から
# dec(秘密鍵 k, 暗号文 c) = 平文
def dec(k, c):
  global ALPHABET
  cipher = list(c.encode("ascii"))       # 文字列 -> 文字コードの配列
  plain = cipher.copy()                  # 平文格納用配列
  for i,code in enumerate(cipher):
    if code in ALPHABET:                 # 小文字アルファベットならば
       #
       # ここに埋め込む
       #
    else:
      plain[i] = code
  return(bytes(plain).decode("ascii"))

def correlation (ciphertext):
  global ALPHABET
  length = len(ciphertext)
  ct  = list(ciphertext.encode("ascii"))
  freq = [0]*len(ALPHABET)
  for i, moji in enumerate(ct): # 頻度配列の作成
    code = ct[i]                #   i 文字目のコードを得る
    offset = code - ALPHABET[0] #   文字 a との差分
    #
    # ここに埋め込む
    #
  max = 0               # 最頻文字の位置（差分）の確定
  maxj = None
  for j in range(len(ALPHABET)):
    if freq[j] > max:
      max =  # ここに埋め込む
      maxj = # ここに埋め込む
  return( # ここに埋め込む ) # 'e' との差

def cipher_breaking (ciphertext):
  keys=correlation(ciphertext)
  if keys is None:
    raise ValueError("Cannot find a max value")
  return("key:"+str(keys)+"\ntext:"+dec(keys,ciphertext))

### TEST HARNESS
os.system("clear")
print(cipher_breaking(input()))
