# Machine epsilon
#Mode: Ruby

epsilon=1.0
old=0.0
prod=0.0
cnt=0
while (prod!=1.0)
  old = epsilon
  cnt=cnt+1
  epsilon=epsilon/2.0
  prod=epsilon+1.0
  puts(prod)
end
puts(old)
puts(cnt)
