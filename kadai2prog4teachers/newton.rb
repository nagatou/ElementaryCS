### Newton's method 
# Mode: Ruby

def sqrt_iter (guess,x)
  if is_enough(guess,x) then
     return(guess)
  else
     return(sqrt_iter(improve(guess,x),x))
  end
end
def improve (guess,x)
  return(average(guess,(x/guess)))
end
def average (x,y)
  return((x+y)/2)
end
def is_enough (guess,x)
  return(abs((square(guess)-x))<0.001)
end
def abs (x)
  if x<0 then
     return(-x)
  else
     return(x)
  end
end
def square (x)
  return(x*x)
end
def sqroot (x)
  print(sqrt_iter(1.0,x),"\n")
end

sqroot(2.0)
