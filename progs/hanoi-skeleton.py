# Cyclic towers of Hanoi problem
# Mode:: Python3
import os

def hanoi (n,source,dest,via,result):
  # ここか

### Test Harness
os.system('clear')
m = int(input("enter the number of discs (>0)? "))
result=[]   # an element of result has to be a list whose length is fixed to 2.
hanoi(m,1,2,3,result)
for step in range(len(result)):
  print("From {0} to {1}.".format(result[step][0],result[step][1]))
