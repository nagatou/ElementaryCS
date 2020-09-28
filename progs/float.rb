# Floating point number
# Roundoff error
#Mode: Ruby

cnt=0
prod=0.0
while (cnt<1000)
  prod=prod+0.1
  cnt=cnt+1
end
puts(prod)
puts(0.1*1000)
cnt=0
prod=0.0
while (cnt<10000)
  prod=prod+0.01
  cnt=cnt+1
end
puts(prod)
s=0.1
puts((s*10)-1)
