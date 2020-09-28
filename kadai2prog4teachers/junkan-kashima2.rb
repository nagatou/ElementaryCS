# junkan.rb
# 配列の使い方の練習（循環小数を循環するまで求める）
# 入力: d
# 出力: 1/d の表記（割り切れるまで、または循環部分を表示）
 
puts("分母 d を下さい（2以上の整数）")
d = gets().to_i

print("1/", d, " = 0.")
amari_count = Array.new(d, 0)
amari_count[1] = 1

repeat = 0
stop = 0;  
x = 1

while stop != 1
  x = x * 10
  q = x / d
  print(q);  sleep(0.5)    

  r = x % d
  if r == 0
    stop = 1
  else
    x = r
    amari_count[r] = amari_count[r] + 1
    if (amari_count[r] == 2 && repeat == 0)
      print("[")
      repeat = 1
    end
    if amari_count[r] == 3
      stop = 1
    end
  end
end

if repeat == 1 
  print("]...")
end
print("\n")



