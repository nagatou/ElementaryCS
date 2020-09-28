# Combination n, r
# Mode:: Ruby
def comb (n,r)
  if ((n-r)<0||n<0||r<0) then
    return 0
  else
    if (r==0) then
      return 1
    else
      return (comb(n-1,r)+comb(n-1,r-1))
    end
  end
end

### Test Harness
x = gets().to_i
y = gets().to_i
puts "C(n,r)="
puts(comb(x,y))
