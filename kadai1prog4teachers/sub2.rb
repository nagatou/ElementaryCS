# sub.rb
# 入力: 自然数 a, b
# 出力: a - b（負は出てこない版）

a = gets().to_i       # 入力された自然数を x に代入
b = gets().to_i       # 入力された自然数を y に代入
sa = a                # x の値を sa に代入
while b > 0 && sa > 0 # b > 0 かつ sa > 0 の間は end までを繰り返す
  sa = sa - 1         #   sa - 1 の値を wa に代入
  b = b - 1           #   y - 1 の値を y に代入
end                   # 繰り返しの終わり
puts(sa)              # sa の値を出力
