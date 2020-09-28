### Newton's method 
# Mode: Ruby

#
# Square Root
#
def sqrt_iter (guess,n,eps,previous)
  def is_enough (guess,eps,previous)
    return((previous-guess).abs<(2*eps))
  def improve (guess,n)
    return((guess+(n/guess))/2.0)
  if is_enough(guess,eps,previous) then
     return(guess)
  else
     return(sqrt_iter(improve(guess,n),n,eps,guess))
  end
end
def sqroot1 (n,eps)
  return(sqrt_iter(1.0,n,(2*eps),0.0))
end
def sqroot (n)
  ### Machine epsilon
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
  return(sqroot1(n,eps_m()))
end

print(sqroot(5.0),"\n")
