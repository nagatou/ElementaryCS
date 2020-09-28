# Recursive definition
# Mode:: Ruby
def inc (x)
  return x+1
end
def dec (x)
  return x-1
end
def add (a,b)
  if (b==0) then
    return a
  else
    return inc(add(a,dec(b)))
  end
end

### Test Harness
x = gets().to_i
y = gets().to_i
add(x,y)
