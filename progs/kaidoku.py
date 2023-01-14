# kaidoku.py
# 解読プログラム
# 入力: 暗号文の文字列
# 出力: 復号した平文

import os

### Global variables
ALPHABET = range(ord('a'), ord('z')+1) # 英字小文字アルファベット

# 暗号文を復号化する関数; ango.py から
# dec(秘密鍵 k, 暗号文 c) = 平文
def dec(k, c):
  global ALPHABET
  cipher = list(c.encode("ascii"))       # 文字列 -> 文字コードの配列
  plain = cipher.copy()                  # 平文格納用配列
  for i,code in enumerate(cipher):
    if code in ALPHABET:                 # 小文字アルファベットならば
      offset = code - ALPHABET[0]
      offset = ((26 + offset) - k) % len(ALPHABET) # 文字コードをずらす
      plain[i] = offset + ALPHABET[0]
    else:
      plain[i] = code
  return(bytes(plain).decode("ascii"))

def correlation (ciphertext):
  global ALPHABET
  length = len(ciphertext)
  ct  = list(ciphertext.encode("ascii"))
  freq = [0]*len(ALPHABET)
  for i, moji in enumerate(ct): # 頻度配列の作成
    if moji in ALPHABET:        #   小文字アルファベットなら
      offset = moji - ALPHABET[0] #   文字 a との差分
      freq[offset] = freq[offset] + 1
  max = 0               # 最頻文字の位置（差分）の確定
  maxj = None
  for j in range(len(ALPHABET)):
    if freq[j] > max:
      max = freq[j]
      maxj = j
  return(maxj-4) # 'e' との差

def cipher_breaking (ciphertext):
  keys=correlation(ciphertext)
  if keys is None:
    raise ValueError("Cannot find a max value")
  return("key:"+str(keys)+"\ntext:"+dec(keys,ciphertext))

### TEST HARNESS
os.system("clear")
with open('./ciphertext.txt','rt') as file:
    ciphertext= file.readline()
print(cipher_breaking(ciphertext))
