# add.rb
# 入力: 自然数 a, b
# 出力: a + b

a = gets().to_i       # 入力された自然数を a に代入
b = gets().to_i       # 入力された自然数を b に代入
wa = a                # a の値を wa に代入
while b > 0           # b が 0 より大きい間は end までを繰り返す
  wa = wa + 1         #   wa + 1 の値を wa に代入
  b = b - 1           #   b - 1 の値を b に代入
end                   # 繰り返しの終わり
puts(wa)              # wa の値を出力
