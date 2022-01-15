# Power
import os, time, sys
sys.setrecursionlimit(2000)

def power(b,n):
  if (n==0):
    return(1)
  else:
    return(b * power(b, n-1))

def power_tail(b,n):
  def power_tail1(b,n,product):
    if (n==0):
      return(product)
    else:
      return(power_tail1(b,n-1,(b*product)))
  return(power_tail1(b,n,1))

def power_iter(b,n):
  product=1
  # ?????
  return(product)

def square(x):
  return(x*x)
def is_even(n):
  if (n%2==0):
    return(True)
  else:
    return(False)
def fast_power(b,n):
  if (n==1):
    return(b) 
  else:
    if (is_even(n)):
      return(square(fast_power(b,n//2)))
    else:
      return((b*fast_power(b,n-1)))

def fast_power_tail(b,n):
  def fast_power_tail1(b,n,product):
    if (n==0):
      return(product) 
    else:
      if (is_even(n)):
        return(fast_power_tail1(square(b),n//2,product))
      else:
        return((fast_power_tail1(b,n-1,product*b)))
  return(fast_power_tail1(b,n,1))

def fast_power_iter(b,n):
  product=1
  # ?????
  return(product) 

# Test Harness
os.system('clear')
x = int(input("x?; (x^y)"))
y = int(input("y? "))
start_time = time.perf_counter_ns()
print("x to the power of y is {0},\n processing time(Fast_Iter): {1:10f} nsec\n".format(fast_power_iter(x,y),time.perf_counter_ns()-start_time))
#start_time = time.perf_counter_ns()
#print("x to the power of y is {0},\n processing time(Fast CPS): {1:10f} nsec\n".format(fast_power_tail(x,y),time.perf_counter_ns()-start_time))
#start_time = time.perf_counter_ns()
#print("x to the power of y is {0},\n processing time(Fast): {1:10f} nsec\n".format(fast_power(x,y),time.perf_counter_ns()-start_time))
start_time = time.perf_counter_ns()
print("x to the power of y is {0},\n processing time(Iterate): {1:10f} nsec\n".format(power_iter(x,y),time.perf_counter_ns()-start_time))
#start_time = time.perf_counter_ns()
#print("x to the power of y is {0},\n processing time(CPS): {1:10f} nsec\n".format(power_tail(x,y),time.perf_counter_ns()-start_time))
#start_time = time.perf_counter_ns()
#print("x to the power of y is {0},\n processing time(Naive): {1:10f} nsec\n".format(power(x,y),time.perf_counter_ns()-start_time))
