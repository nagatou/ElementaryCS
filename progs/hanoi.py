# Cyclic towers of Hanoi problem
# Mode:: Python3

import os

def move (fr,to,result):
  from_to=[None]*2
  from_to[0]=fr
  from_to[1]=to
  result.append(from_to)
  
def hanoi (n,source,dest,via,result):
  if (n==1):
    move(source,dest,result)
  else:
    hanoi(n-1,source,via,dest,result)
    hanoi(1,source,dest,via,result)
    hanoi(n-1,via,dest,source,result)

### Test Harness
os.system('clear')
m = int(input("enter a number of discs (>0)? "))
result=[]   # an element of result has to be a list whose length is fixed to 2.
hanoi(m,1,2,3,result)
for step in range(len(result)):
  print("Move from {0} to {1}.".format(result[step][0],result[step][1]))
