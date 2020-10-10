# Mode: Python3
# An array representation of integers; z=[natural number, natural number].
# 1st element: a natural number (if z>0)
# 2nd        : a natural number (if z<0)

import os

integers = [[0 for i in range(2)] for j in range(128)]
top = current = 0
bottom = len(integers)

### A Pair Representation for Integers
def new_num (non_negative, negative):
  global integers, top, bottom, current
  if current < bottom:
    integers[current][0] = non_negative
    integers[current][1] = negative
    current+=1
    return(integers[current-1])
  else:
    raise ValueError("EMPTY ARRAY")
def num2pair (z):
  if z < 0:
    return(new_num(0,z*(-1)))
  else:
    return(new_num(z,0))
def pair2num (num):
  return(num[0]-num[1])

### On Natural Number
def succ(num):
  return(num+1)
def pred(x):
  return(x-1)
def add_on_nat(a,b):
  if (a==0):
    return(b)
  else:
    return(succ(add_on_nat(pred(a),b)))
def mult_on_nat(a,b):
  if (b==0):
    return(0)
  else:
    return(add_on_nat(add_on_nat(0,a),mult_on_nat(a,pred(b))))

### On Integer
def add_on_int(za,zb):
  return(new_num(add_on_nat(za[0],zb[0]),add_on_nat(za[1],zb[1])))
def mult_on_int(za,zb):
  return(new_num(
          add_on_nat(mult_on_nat(za[0],zb[0]), mult_on_nat(za[1],zb[1])),
          add_on_nat(mult_on_nat(za[0],zb[1]), mult_on_nat(za[1],zb[0]))))

### TEST HARNESS
os.system('clear')
z = int(input("integer? "))
zz = int(input("integer? "))
print(pair2num(add_on_int(num2pair(z),num2pair(zz))))
print(pair2num(mult_on_int(num2pair(z),num2pair(zz))))
