# Factorial
#Mode: Python3
import os
import time

def fact (n):
  print("n={0}.".format(n))
  if (n == 1):
    return(1)
  else:
    return(n*(fact(n-1)))

def fact_iter (n):
  def fact_iter1 (prod, cnt, max):
    if cnt > max:
      return(prod)
    else:
      return(fact_iter1(prod*cnt,cnt+1,max))
  return(fact_iter1(1,1,n))

def fact_loop (max):
  cnt=1
  prod=1
  while cnt <= max:
    prod = prod * cnt
    cnt = cnt+1
  return(prod)

# Test Harness
while (1):
  n = int(input("n(>=0)? "))
  if n is 0:
    break
  else:
    print(fact(n))
    print(fact_iter(n))
    print(fact_loop(n))
