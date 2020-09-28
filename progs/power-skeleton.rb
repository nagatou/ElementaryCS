require 'benchmark'

# Power
def power(b,n)
  if (n==0)
    return 1
  else
    return(b * power(b, n-1))
  end
end

def power_iter1(b,n,product)
  if (n==0)
    return product
  else
    return(power_iter1(b,n-1,(b*product)))
  end
end
def power_iter(b,n)
  return power_iter1(b,n,1)
end

def even?(n)
  if (n%2==0)
    return true
  else
    return false
  end
end
def square(x)
  return (x*x)
end
def fast_power(b,n,count)
  if (n==1)
    return b 
  else
    if (even?(n))
      #?????
    else
      #?????
    end
  end
end

# Test Harness
x = gets().to_i
y = gets().to_i
Benchmark.bm(8) do |tmp|
  tmp.report(" "){
    puts(power(x,y))
  }
end
Benchmark.bm(8) do |tmp|
  tmp.report(" "){
    puts(power_iter(x,y))
  }
end
Benchmark.bm(8) do |tmp|
  tmp.report(" "){
    puts(fast_power(x,y,1))
  }
end
