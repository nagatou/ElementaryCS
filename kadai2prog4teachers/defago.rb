def f(x, y)
# assume: x > 0, y > 0
   res  = 1
   c = 0
   while y > 0
      if y % 2 == 1
         res = res * x
      end
      y = y / 2
      x = x * x
      c = c+1
   end
   puts(c)
   return res
end

x = gets().to_i
y = gets().to_i
puts(f(x,y))
