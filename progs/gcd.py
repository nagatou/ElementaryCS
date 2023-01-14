# Greatest common divisor

import os, time

# Naive Algorithm
def gcd(x,y):
  def min(x,y):
    if (x>y):
      return y
    else:
      return x
  gcm=1
  n=min(x,y)
  for i in range(1,n+1):
    if (x%i==0) and (y%i==0):
      gcm=i
  return (gcm)

# Euclid's algorithm
def euclid(x1,x2):
  def euclid1(x1,x2):
    if x2==0:
      return (x1)
    else:
      return (euclid1(x2,x1%x2))
  def swap(x1,x2):
    return x2,x1
  if (x1<x2) :
     x1,x2 = swap(x1,x2)
  return(euclid1(x1,x2))

#Test Harness
os.system('clear')
x = int(input("x? "))
y = int(input("y? "))
start_time = time.time()
print("GCD: {0}, 処理時間(Euclid): {1:10f} sec\n".format(euclid(x,y),time.time()-start_time))
start_time = time.time()
print("GCD: {0}, 処理時間(Naive): {1:10f} sec\n".format(gcd(x,y),time.time()-start_time))
