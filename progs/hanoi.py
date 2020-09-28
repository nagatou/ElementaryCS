# Cyclic towers of Hanoi problem
# Mode:: Python3
import os

def hanoi (n,source,dest,via,result):
  from_to=[None]*2
  if (n==1):
    from_to[0]=source
    from_to[1]=dest
    result.append(from_to)
  else:
    hanoi(n-1,source,via,dest,result)
    hanoi(1,source,dest,via,result)
    hanoi(n-1,via,dest,source,result)

### Test Harness
os.system('clear')
m = int(input("enter the number of discs (>0)? "))
result=[]   # an element of result has to be a list whose length is fixed to 2.
hanoi(m,1,2,3,result)
for step in range(len(result)):
  print("From {0} to {1}.".format(result[step][0],result[step][1]))
