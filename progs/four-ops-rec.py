# Recursive definition
# Mode:: Python3
import os
import time

def succ (x):
  return(x+1)
def pred (x):
  if (x==0):
    raise ValueError("OUT OF THE SET NAT")
  else:
    return(x-1)
def add (a,b):
  if (a==0):
    return(b)
  else:
    return(succ(add(pred(a),b)))
#
# Iterative process
#
def add_iter (a,b):
  if (a==0):
    return(b)
  else:
    return(add_iter(pred(a),succ(b)))
#
# Sub
#
def sub (a,b):
  if (b==0):
    return(a)
  else:
    return(pred(sub(a,pred(b))))
def sub_iter (a,b):
  if (b==0):
    return(a)
  else:
    return(sub_iter(pred(a),pred(b)))
# Multiplication
#
def mult (a,b):
  if (b==0):
    return(0)
  else:
    return(add(add(0,a),mult(a,pred(b))))
def mult_iter1 (a,sum,b):
  if (b==0):
    return(sum)
  else:
    return(mult_iter1(a,add_iter(sum,add_iter(0,a)),pred(b)))
def mult_iter (a,b):
  if (b==0):
    return(0)
  else:
    return(mult_iter1(a,add_iter(0,a),pred(b)))

# Quotient
# a=nb+r
def quotient (a,b):
  if (a==0):
    return(0)
  else:
    if (remainder(a,b)==0):
      return(succ(quotient(pred(a),b)))
    else:
      return(quotient(pred(a),b))
def quotient1_iter (a, b, n):
  if (a==0):
    return(n)
  else:
    if (remainder(a,b)==0):
      return(quotient1_iter(pred(a),b,succ(n)))
    else:
      return(quotient1_iter(pred(a),b,n))
def quotient_iter (a, b):
  return(quotient1_iter(a,b,0))

# Remainder
#
def remainder (a,b):
  if (a==0):
    return(0)
  else:
    if (succ(remainder(pred(a),b)) < b):
      return(succ(remainder(pred(a),b)))
    else:
      return(0)

# Comparision
#
# Set the sign bit to 1, else zero.
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
#print(add(x,y))
#print(add_iter(x,y))
#print(mult(x,y))
#print(mult_iter(x,y))
#print(sub_iter(x,y))
#print(quotient(x,y))
#print(quotient_iter(x,y))
#print(remainder(x,y))
print(comp(x,y))
