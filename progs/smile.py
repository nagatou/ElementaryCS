# smile.py
# Naoyuki improves the origin.

import time
import os

d = [0]*9
d[0]=1000000000000000000000000000
d[1]=1000000000110000110000000000
d[2]=1000000000110000110000000000
d[3]=1000000000000000000000000000
d[4]=1000001100000000000011000000
d[5]=1000000110000000000110000000
d[6]=1000000011000000001100000000
d[7]=1000000000111111110000000000
d[8]=1000000000000000000000000000

for t in range(0,10):
  os.system('clear')
  if (t%2)==0:
    for i in range(9):
      print(d[i])
      i=i+1
  else:
    print(d[0])
    print(d[1])
    print(d[2])
    print(d[3])
    print(d[7])
    print(d[6])
    print(d[5])
    print(d[4])
    print(d[8])
  time.sleep(.3)
  t = t + 1
