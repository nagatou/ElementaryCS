# Factorial
#Mode: Ruby
def fact (n)
  puts "n=#{n}."
  if (n == 1)
    return 1
  else
    return (n*(fact(n-1)))
  end
end

def fact_iter (n)
  def fact_iter1 (prod, cnt, max)
    if (cnt>max)
      return prod
    else
      fact_iter1(prod*cnt,cnt+1,max)
    end
  end
  fact_iter1(1,1,n)
end

def fact_loop (max)
  cnt=1
  prod=1
  while cnt <= max do
    prod = prod * cnt
    cnt = cnt+1
  end
  return(prod)
end

# Test Harness
while (1)
  n = gets().to_i
  if (n==0)
    break
  else
    puts(fact(n))
    puts(fact_iter(n))
    puts(fact_loop(n))
  end
end
