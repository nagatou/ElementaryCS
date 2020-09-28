# junkan.rb
# 配列の使い方の練習（循環小数を循環するまで求める）
# 入力: d
# 出力: 1/d の各桁を循環するまで求める

puts("分母 d を下さい（2以上の整数）")
d = gets().to_i
print("1 / ", d, " を求めます\n")

# ヒント：次のような配列を使う
# あまりがあれば 10 倍して割るを繰り返す
# あまりは d より小さくなるはずなので 0 から d-1 で有限，したがってどこかで繰り返しがでてくる
rem = Array.new(d, 0)
rem[1] = 1

p = 1
print "0."
while (1)
  p = p * 10
  q = p / d
  print(q)
  p = p % d
  if p == 0 || rem[p] > 1 
    break
  end
  rem[p]=rem[p]+1
end
print("\n")
