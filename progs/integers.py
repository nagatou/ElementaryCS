# Mode: Python3
# An array representation of integers; [sign, numerator, denominator].
# 1st element: 0 denotes plus, and 1 minus
# 2nd        : a number (>0)
# 3rd        : fixed to 1

import os

integers = [[0]*3] * 256
top = current = 0
bottom = len(integers)

def num2array (z):
  global integers, current, bottom
  if current < bottom:
    if z < 0:
      sign= 1
      num = -z
      den = 1
    else:
      sign=0
      num = z
      den = 1
    integers[current][0]=sign
    integers[current][1]=num
    integers[current][2]=den
    current+=1
  else:
    raise ValueError("EMPTY ARRAY")
  return(integers[current-1])
def new_num (sign,numerator,denominator):
  global integers, current, bottom, top
  if current<bottom:
    if numerator is 0:
      integers[current][0] = 0
    else:
      integers[current][0] = sign
    integers[current][1] = numerator
    integers[current][2] = denominator
    current+=1
    return(integers[current-1])
  else:
    raise ValueError("EMPTY ARRAY")
def succ (sign,numerator,denominator):
  global integers, current, bottom, top
  if current<bottom:
    if sign is 0:
      return(new_num(sign,numerator+1,denominator))
    else:
      return(new_num(sign,numerator-1,denominator))
  else:
    raise ValueError("EMPTY ARRAY")
def pred (sign,numerator,denominator):
  global integers, current, bottom, top
  if sign is 0:
    return(new_num(sign,numerator-1,denominator))
  else:
    return(new_num(sign,numerator+1,denominator))


# TEST HARNESS
os.system('clear')
z = int(input("integer? "))
print((num2array(z)))
print(succ(*(num2array(z))))
print(pred(*(num2array(z))))

