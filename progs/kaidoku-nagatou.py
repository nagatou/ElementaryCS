import os

### Global variables
ALPHABET = range(ord('a'), ord('z')+1) # 英字小文字アルファベット
Tops = 3

def dec(k, c): # from hukugo.py
  global ALPHABET
  cipher = list(c.encode("ascii"))
  plain = cipher.copy()
  for i,code in enumerate(cipher):
    if code in ALPHABET:
      offset = code - ALPHABET[0]
      offset = ((26 + offset) - k) % len(ALPHABET)
      plain[i] = offset + ALPHABET[0]
    else:
      plain[i] = code
  return(bytes(plain).decode("ascii"))

#
### Frequency
#
def rd_statistic (filename):
  global ALPHABET
  statisticFile=open(filename,'rt')
  statistic=[0.0]*len(ALPHABET)
  i=0
  for line in statisticFile:
    if line[0] is not chr(35):  # ignore comment lines
      statistic[i]=float(line.split()[1])
      i+=1
  statisticFile.close()
  return statistic

def frequency1 (ct):
  global ALPHABET
  freq = [0.0]*len(ALPHABET)
  for i, code in enumerate(ct):
    offset = code - ALPHABET[0]
    if code in ALPHABET:
      freq[offset] = freq[offset] + 1.0
  return (list(map(lambda f:f/len(ct),freq)))
def frequency (ciphertext):
  ct = ciphertext.lower().encode("ascii")
  return(frequency1(list(ct)))

#
### Correlation
#
def correlation1 (ciphertext,key):
  sum=0.0
  p=rd_statistic("1-gram.txt")
  f=frequency(ciphertext)
  
  if len(f)==len(p):
    i=0
    j=0
    for i in range(len(f)):
      sum=sum+(f[i] * p[i-key])
  return(sum)
def second (tpl):
  return(b[1])
def correlation (ciphertext):
  result = [0]*len(ALPHABET)

  for key in range(len(ALPHABET)):
    result[key]=(key,correlation1(ciphertext,key))
  return(sorted(result,key=lambda tup: tup[1],reverse=True))

def cipher_breaking (ciphertext):
  keys=correlation(ciphertext)
  plaintext=[0]*len(ciphertext)

  if keys is None:
    raise ValueError("Cannot find a max value")
  else:
    for i in range(Tops):
      key, corr = keys[i]
      plaintext[i]="key: "+str(key)+"\ntext: "+dec(key,ciphertext)
  return(plaintext)

#
### TEST harness
#
os.system("clear")
with open('./ciphertext.txt','rt') as file: # 暗号文を読み込む
    ciphertext= file.readline()
plaintext = cipher_breaking(ciphertext)
for i in range(Tops):
  print(plaintext[i]+"\n")
