# Mode: Python3
# An array representation of integers; z=[natural number, natural number].
# 1st element: a natural number (if z>0)
# 2nd        : a natural number (if z<0)
#
# Additive identity & Nutral elemnt are placed on first two elements in integers; like [[0,0],[1,0]].
# False is represented by 0, and True is represented by non-zero.

import os

### On Natural Number
def succ(num):
  return(num+1)
def pred (x):
  if (x<=0):
    raise ValueError("OUT OF THE SET NAT")
  else:
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
def comp_on_nat (a,b):
  if ((b==0) and (a>=0)):
    return(0) # if a > b then set to zero
  else:
    if ((a==0) and (b>=0)):
      return(1) # if a < b then set to non-zero
    else:
      return(comp_on_nat(pred(a),pred(b)))

### A Pair Representation for Integers
integers = [[0 for i in range(2)] for j in range(128)]
top = current = 0
bottom = len(integers)
#integers=[[0,0],[1,0]]
#zero=integers[0]
#one=integers[1]

def new_num (non_negative, negative):
  global integers, top, bottom, current
  if current < bottom:
    integers[current][0] = non_negative
    integers[current][1] = negative
    current+=1
    return(integers[current-1])
  else:
    raise ValueError("ARRAY EMPTY")
def num2pair (z):
  if z < 0:
    return(new_num(0,z*(-1)))
  else:
    return(new_num(z,0))
def pair2num (num):
  return(num[0]-num[1])

### On Integer
def add_on_int(za,zb):
  return(new_num(add_on_nat(za[0],zb[0]),add_on_nat(za[1],zb[1])))
def mult_on_int(za,zb):
  return(new_num(
          add_on_nat(mult_on_nat(za[0],zb[0]), mult_on_nat(za[1],zb[1])),
          add_on_nat(mult_on_nat(za[0],zb[1]), mult_on_nat(za[1],zb[0]))))
def inverse_on_int(z):
  return(new_num(z[1],z[0]))
def sub_on_int(za,zb):
  return(add_on_int(za,inverse_on_int(zb)))
def comp_on_int (za,zb):
  tmp=sub_on_int(za,zb)
  return(comp_on_nat(tmp[0],tmp[1]))


### TEST HARNESS
os.system('clear')
z = int(input("integer? "))
zz = int(input("integer? "))
print('add({0},{1})={2}'.format(z,zz,pair2num(add_on_int(num2pair(z),num2pair(zz)))))
print('mult({0},{1})={2}'.format(z,zz,pair2num(mult_on_int(num2pair(z),num2pair(zz)))))
print('sub({0},{1})={2}'.format(z,zz,pair2num(sub_on_int(num2pair(z),num2pair(zz)))))
print('comp({0},{1})={2}'.format(z,zz,comp_on_int(num2pair(z),num2pair(zz))))
