# hindo.rb
# $B2rFI%W%m%0%i%`:n@.$N$?$a$N;29M%W%m%0%i%`(B ($BIQEY$r5a$a$k(B)
# $BF~NO(B: $B0E9fJ8(B
# $B=PNO(B: $BJ8;z!%=P8=2s?t!$(B

# $BJ8;z%3!<%I$r%"%k%U%!%Y%C%H$KJQ49$9$k4X?t(B
def code2char(code)
  return([code].pack("C*"))
end

# $B=i4|@_Dj(B
length = 26                               # $B%"%k%U%!%Y%C%H$NJ8;z?t(B
code_A = "A".ord                          # $BJ8;z(B A $B$NJ8;z%3!<%I(B
code_a = "a".ord                          # $BJ8;z(B a $B$NJ8;z%3!<%I(B
hindo = Array.new(length, 0)              # $B=P8=IQEYG[Ns!$D9$5(B 26$B!$=i4|CM(B 0

# $BF~NO(B
angobun = gets.chomp                      # $BF~NOJ8;zNs$+$i2~9T$r=|5n(B

# $B%"%k%U%!%Y%C%H=P8=2s?t$N7WB,(B
puts(angobun)
for k in 0..angobun.length-1
  moji = angobun[k]                       # angobun $B$N(B k $BJ8;zL\$rF@$k(B (k $B$O(B 0$B$+$i;O$^$k(B)
  code = moji.ord                         # $BJ8;z(B moji $B$NJ8;z%3!<%I$rF@$k(B
  if code >= code_a                       # $BJ8;z$,>.J8;z$H;W$o$l$l$P!$(B
    sabun = code - code_a                 # $BJ8;z$,(B a $B$N$$$/$D8e$m$+$r7W;;(B
  else                                    # $BJ8;z$,BgJ8;z$H;W$o$l$l$P!$(B
    sabun = code - code_A                 # $BJ8;z$,(B A $B$N$$$/$D8e$m$+$r7W;;(B
  end
  if 0 <= sabun && sabun < length         # $B%"%k%U%!%Y%C%H$J$i$P!$(B
    hindo[sabun] = hindo[sabun] + 1       # $B=P8=2s?t$r(B 1 $BBg$-$/$9$k(B
    end
end

for k in 0..length-1
  alphabet = code2char(code_a + k)
  puts(alphabet + ": " + hindo[k].to_s)
end
