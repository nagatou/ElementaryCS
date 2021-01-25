# Cyclic towers of Hanoi problem
# Mode:: Python3

import os

def move (fr,to,result):
  from_to=[None]*2
  from_to[0]=fr
  from_to[1]=to
  result.append(from_to)

def hanoi (n,source,dest,via,result):
  # ここから

### Test Harness
os.system('clear')
m = int(input("enter the number of discs (>0)? "))
result=[]   # an element of result has to be a list whose length is fixed to 2.
hanoi(m,1,2,3,result)
for step in range(len(result)):
  print("From {0} to {1}.".format(result[step][0],result[step][1]))
