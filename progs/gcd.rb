# Greatest common measure
# Naive
def min(x,y)
  if (x>y)
    return y
  else
    return x
  end
end
def gcd(x,y)
  ans=1
  n=min(x,y)
  for i in 1..n
    if (x%i==0)&&(y%i==0)
      ans=i
    end
  end
  return (ans)
end

# Euclid's algorithm
def euclid(x1,x2)
  if (x2==0)
    return(x1)
  else
    euclid(x2,x1%x2)
  end
end

#Test Harness
x = gets().to_i
y = gets().to_i
if (x<y)
  tmp=x
  x=y
  y=tmp
end
start_time = Time.now
puts(euclid(x,y))
printf("処理時間(Euclid): %f sec\n",Time.now-start_time)
start_time = Time.now
puts(gcd(x,y))
printf("処理時間(naive): %f sec\n",Time.now-start_time)
