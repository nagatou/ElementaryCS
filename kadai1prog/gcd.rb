# gcd.rb
# 入力: 自然数 x, y
# 出力: x と y の最大公約数

x = gets().to_i       # 入力された自然数を x に代入
y = gets().to_i       # 入力された自然数を y に代入
r = x % y             # x を y で割った余りを r に代入
while r > 0           # r が 0 より大きい間は end までを繰り返す
  x = y               #   y の値を x に代入
  y = r               #   r の値を y に代入
  r = x % y           #   x を y で割った余りを r に代入
end                   # while に戻る
puts(y)               # y の値 (最大公約数) を出力
