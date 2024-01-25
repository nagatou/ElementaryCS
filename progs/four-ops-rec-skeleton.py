# Recursive definition
# Mode:: Python3
import os
import time

def succ (x):
  return(x+1)
def pred (x):
  def pred1 (x,k1,k2):
    if (x==k2):
      return(k1)
    else:
      return(pred1(x,succ(k1),succ(k2)))
  if (x==0):
    raise ValueError("OUT OF THE SET NAT")
  else:
    return(pred1(x,0,1))
def add (a,b):
  if (b==0):
    return(a)
  else:
    return(succ(add(a,pred(b))))
#
# Multiplication
#
def mult (a,b):
  if (b==0):
    return(0)
  else:
    return(add(add(0,a),mult(a,pred(b))))
#
# Sub
#
def sub (a,b):

# Quotient
# a=nb+r
def quotient (a,b):

# Remainder
#
def remainder (a,b):

# Comparision
#
# if a <= b, return 1 else zero.
def comp (a,b):
  if (b==0):
    return(0)
  else:
    if ((a==0) and (b>=0)):
      return(1)
    else:
      return(comp(pred(a),pred(b)))
    

# Test Harness
os.system('clear')
x = int(input("x(>=0)? "))
y = int(input("y(>=0)? "))
print(add(x,y))
print(mult(x,y))
print(sub(x,y))
print(quotient(x,y))
print(remainder(x,y))
print(comp(x,y))
