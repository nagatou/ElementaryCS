### Newton's method 
# Mode: Python3
import os

### Machine epsilon
def m_eps ():
  epsilon, old, prod =1.0, 0.0, 0.0
  cnt=0
  while (prod!=1.0):
    old = epsilon
    cnt=cnt+1
    epsilon=epsilon/2.0
    prod=epsilon+1.0
  return(old)
#
# Square Root
#
def sqroot (a):
  def sqroot2 (guess,a,eps,previous):
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
       return(sqroot2(improve(guess,a),a,eps,guess))
  def sqroot1 (a,eps):
    return(sqroot2(1.0,a,(2*eps),0.0))
  return(sqroot1(a,m_eps()))

# Test Harness
os.system('clear')
print(sqroot(float(input("sq(x)(x>0)? "))))
