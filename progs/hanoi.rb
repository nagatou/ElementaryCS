# Cyclic towers of Hanoi problem
# Mode:: Ruby
def hanoi (n,a,b,c)
#  puts(n)
  if (n==1)
    puts "(1)From #{a} to #{b}."
  else
    hanoi(n-1,a,c,b)
    puts "(2)From #{a} to #{b}."
    hanoi(n-1,c,b,a)
  end
end

### Test Harness
m = gets().to_i
hanoi(m,1,2,3)
