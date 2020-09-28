# Power
import os, time, sys
sys.setrecursionlimit(2000)

def power(b,n):
  if (n==0):
    return(1)
  else:
    return(b * power(b, n-1))

def square(x):
  return(x*x)
def is_even(n):
  if (n%2==0):
    return(True)
  else:
    return(False)
def fast_power(b,n,c):
  if (n==1):
    print("c is {0},\n".format(c))
    return(b) 
  else:
    if (is_even(n)):
      return(square(fast_power(b,n/2,c+1)))
    else:
      return((b*fast_power(b,n-1,c+1)))


# Test Harness
os.system('clear')
x = int(input("x(>0)?; (x^y) "))
y = int(input("y(>0)? "))
start_time = time.time()
print("x to the power of y is {0},\n processing time(Fast): {1:10f} sec\n".format(fast_power(x,y,0),time.time()-start_time))
start_time = time.time()
print("x to the power of y is {0},\n processing time(Naive): {1:10f} sec\n".format(power(x,y),time.time()-start_time))
