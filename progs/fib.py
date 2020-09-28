# Compute the Fibonacci numbers
#Mode:: Python3

def fib (n):
  if (n==0):
    return(1)
  else:
    if (n==1):
      return(1)
    else:
      return(fib(n-1)+fib(n-2))

def fib_iter (n):
  def fib_iter1 (a, b, c):
    if (c==0): 
      return b
    else:
      return(fib_iter1((a+b), a ,(c-1)))
  return(fib_iter1(1,1,n))

#def fast_fib(n):
#  def fast_fib1(a,b,p,q,c):
#    # optional QUIZ 
#  return(fast_fib1(1,0,0,1,n))

# Test Harness
n = int(input("n(>=0)? "))
print(fib(n))
print(fib_iter(n))
