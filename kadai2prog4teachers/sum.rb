#a=[2,4,6,8,10,12]
a=gets().split(/,/).map(&:to_i)
n=a.length
k=0; s=0
while k<n
  s=s+a[k]
  k=k+1
end
puts(s)
