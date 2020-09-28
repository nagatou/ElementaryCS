# max.rb
# 入力: 整数の列
# 出力: 最大値

a = gets().split.map(&:to_i)
n = a.length
# 以下が総和の計算部分
max = -100000      #　マイナス無限大と言える数
maxj = -1
for j in 0..(n-1)
  if a[j] > max
    max = a[j]
    maxj = j
  end
end
puts(max, maxj)
