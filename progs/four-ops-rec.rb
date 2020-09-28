# Recursive definition
# Mode:: Ruby
def succ (x)
  return x+1
end
def pred (x)
  return x-1
end
def add (a,b)
  if (a==0) then
    return b
  else
    return succ(add(pred(a),b))
  end
end

# Iterative process
#
def add_iter (a,b)
  if (a==0) then
    return b
  else
    return add_iter(pred(a),succ(b))
  end
end

# Sub
#
def sub (a,b)
  if (b==0) then
    return a
  else
    return pred(sub(a,pred(b)))
  end
end
# Multiplication
#
def mult (a,b)
  if (b==0) then
    return 0
  else
    return add(add(0,a),mult(a,pred(b)))
  end
end
def mult_iter1 (a,sum,b)
  if (b==0) then
    return sum
  else
    return mult_iter1(a,add_iter(sum,add_iter(0,a)),pred(b))
  end
end
def mult_iter (a,b)
  if (b==0) then
    return 0
  else
    return mult_iter1(a,add_iter(0,a),pred(b))
  end
end

# Quotient
# a=nb+r
def quotient (a,b)
  if (a==0) then
    return 0
  else
    if (remainder(a,b)==0)
      return succ(quotient(pred(a),b))
    else
      return quotient(pred(a),b)
    end
  end
end
def quotient1_iter (a, b, n)
  if (a==0) then
    return n
  else
    if (remainder(a,b)==0) then
      return quotient1_iter(pred(a),b,succ(n))
    else
      return quotient1_iter(pred(a),b,n)
    end
  end
end
def quotient_iter (a, b)
  return quotient1_iter(a,b,0)
end

# Remainder
#
def remainder (a,b)
  if (a==0)
    return 0
  else
    if (succ(remainder(pred(a),b)) < b)
      return succ(remainder(pred(a),b))
    else
      return 0
    end
  end
end

# Test Harness
x = gets().to_i
y = gets().to_i
puts(add(x,y))
puts(add_iter(x,y))
puts(mult(x,y))
puts(mult_iter(x,y))
puts(sub(x,y))
puts(quotient(x,y))
puts(quotient_iter(x,y))
puts(remainder(x,y))
