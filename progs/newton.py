### Newton's method 
# Mode: Python3
import os

#
# Square Root
#
def sqrt_iter (guess,a,eps,previous):
  def abs (x):
    if x<0:
       return(-x)
    else:
       return(x)
  def is_enough (guess,eps,previous):
    return(abs(previous-guess)<(2*eps))
  def improve (guess,a):
    return((guess+(a/guess))/2.0)
  if is_enough(guess,eps,previous):
     return(guess)
  else:
     return(sqrt_iter(improve(guess,a),a,eps,guess))
def sqroot1 (a,eps):
  return(sqrt_iter(1.0,a,(2*eps),0.0))
def sqroot (a):
  ### Machine epsilon
  def eps_m ():
    epsilon, old, prod =1.0, 0.0, 0.0
    cnt=0
    while (prod!=1.0):
      old = epsilon
      cnt=cnt+1
      epsilon=epsilon/2.0
      prod=epsilon+1.0
    return(old)
  return(sqroot1(a,eps_m()))

# Test Harness
os.system('clear')
print(sqroot(float(input("sq(x)(x>0)? "))))
