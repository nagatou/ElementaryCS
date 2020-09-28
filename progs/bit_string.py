# Bit string representation for set of integers.
#E.g. U={0,1,2,3,4,5,6,7,8,9,10}
#Mode: Python

### Declaration of sample sets
Size=11
u=[True,True,True,True,True,True,True,True,True,True,True]
even=[True,False,True,False,True,False,True,False,True,False,True]
odd=[False,True,False,True,False,True,False,True,False,True,False]
a=[False,True,False,True,False,True,False,False,False,False,False]
b=[False,True,True,True,False,True,False,False,False,False,False]

### Set operations
def union(seta,setb,result):
  global Size
  for i in range(Size):
    result[i]=seta[i] or setb[i]
def intersection(seta,setb,result):
  global Size
  for i in range(Size):
    result[i]=seta[i] and setb[i]
def complement(seta,result):
  global Size
  for i in range(Size):
    result[i]= not seta[i]
def difference(seta,setb,result):
  global Size
  tmp=[-1]*Size
  for i in range(Size):
    complement(setb,tmp)
    intersection(seta,tmp,result)

### Test Harness
result=[None]*Size
union(a,b,result)
print("a:",a)
print("b:",b)
print("union:",result)
intersection(a,b,result)
print("a:",a)
print("b:",b)
print("intersection:",result)
complement(a,result)
print("a:",a)
print("complement:",result)
difference(a,b,result)
print("a:",a)
print("b:",b)
print("diff:",result)
