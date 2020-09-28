# Machine epsilon
#Mode: Python
import os
import sys

epsilon, old, prod =1.0, 0.0, 0.0
cnt=0
while (prod!=1.0):
  old = epsilon
  cnt=cnt+1
  epsilon=epsilon/2.0
  print(epsilon)
  prod=epsilon+1.0
print("Calculated machine epsilon:",old)
print(cnt)
print("System information in Python:",sys.float_info.epsilon)
