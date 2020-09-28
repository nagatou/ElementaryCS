#abs
# Conditional expressions and predicates
#Mode:: Ruby
def abs (r)
  if r<0
    return -r
  else
    if r>=0
      return r
    end
  end
end

abs(-1)
