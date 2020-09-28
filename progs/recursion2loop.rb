require 'benchmark'

# Power
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

def power_loop(b,n)
  product = 1
  while (n!=0)
    product = product * b
    n = n-1
  end 
  return product
end

# Test Harness
x = gets().to_i
y = gets().to_i
Benchmark.bm(8) do |tmp|
  tmp.report(" "){
    puts(power_loop(x,y))
  }
end
Benchmark.bm(8) do |tmp|
  tmp.report(" "){
    puts(power_iter(x,y))
  }
end
