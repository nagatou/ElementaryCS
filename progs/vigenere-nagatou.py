# Vigenere Chipher
# Mode: Python3

import os

### Global variables
ALPHABET = range(ord('a'), ord('z')+1)

def letter2index (letter):
  return (letter - ALPHABET[0])
def index2letter (index):
  return (index + ALPHABET[0])
def transform(char,key):
  index = letter2index(char)
  c_index = (index + (letter2index(key))) % len(ALPHABET)
  return(index2letter(c_index))
def vigenere (key,message):
  cipher_text = message.copy()
  for i in range(len(message)):
    if message[i] in ALPHABET:
       cipher_text[i] = transform(message[i],key[i % len(key)])
    else:
       cipher_text[i] = message[i]
  return(cipher_text)
def encipher(key, message):
  letters = list(message.encode("ascii"))
  keys = list(key.encode("ascii"))
  return (bytes(vigenere(keys,letters)).decode("ascii"))

### TEST HARNESS
os.system("clear")
print(encipher("vigenere", input()))
