# junkan.rb
# 配列の使い方の練習（循環小数を循環するまで求める）
# 入力: d
# 出力: 1/d の各桁を循環するまで求める

puts("分母 d を下さい（2以上の整数）")
d = gets().to_i
print("1 / ", d, " を求めます\n")

# ヒント：次のような配列を使う
test = Array.new(d, 0)
test[1] = 1

stop = 0;  leng = 0;  x = 1
while stop != 1
  x = x * 10
  q = x / d
  leng = leng + 1
  print(leng, ":", q, "\n");  sleep(0.5)
  x = x % d
  if x == 0 || test[x] != 0
    stop = 1
  end
end
