# Compute the Fibonacci numbers
#Mode:: Ruby

require 'benchmark'

def fib (n)
  if (n==0) then
    return 1
  else
    if (n==1) then
      return 1
    else
      return (fib(n-1)+fib(n-2))
    end
  end
end

def fib_iter1 (a, b, c)
  if (c==0) then
    return b
  else
    fib_iter1((a+b), a ,(c-1))
  end
end
def fib_iter (n)
  fib_iter1(1,1,n)
end

def fast_fib1(a,b,p,q,c)
  # optional QUIZ 
end
def fast_fib(n)
  fast_fib(1,0,0,1,n)
end

# Test Harness
n = gets().to_i
Benchmark.bm(7) do |x|
  x.report(" "){
    puts(fib(n))
  }
  x.report(" "){
    puts(fib_iter(n))
  }
end
