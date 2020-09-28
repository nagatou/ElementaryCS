### Newton's method 
# Mode: Ruby

def sqrt_iter (guess,x,eps)
  if is_enough(guess,x,eps) then
     return(guess)
  else
     return(sqrt_iter(improve(guess,x),x,eps))
  end
end
def improve (guess,x)
  return((guess+(x/guess))/2.0)
end
def is_enough (guess,x,eps)
  return(abs((square(guess)-x))<0.001) # naive way
end
def abs (x)
  if x<0 then
     return(-x)
  else
     return(x)
  end
end
#
# Machine epsilon
#
def eps_m ()
  epsilon=1.0
  old=0.0
  prod=0.0
  cnt=0
  while (prod!=1.0)
    old = epsilon
    cnt=cnt+1
    epsilon=epsilon/2.0
    prod=epsilon+1.0
  end
  return(old)
end
def square (x)
  return(x*x)
end
def sqroot1 (x,eps)
  return(sqrt_iter(1.0,x,eps))
end
def sqroot (x)
  print(sqroot1(x,eps_m()),"\n")
end

sqroot(2.0)
