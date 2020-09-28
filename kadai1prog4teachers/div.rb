# div.rb
# 入力: 自然数 x, y
# 出力: x ÷ y の商と余り

x = gets().to_i       # 入力された自然数を x に代入
y = gets().to_i       # 入力された自然数を y に代入
shou = 0              # 0 を shou に代入
amari = x             # x を amari に代入
while amari >= y      # amari が y 以上の間は end までを繰り返す
  shou = shou + 1     #   shou + 1 の値を shou に代入
  amari = amari - y   #   amari - y の値を amari に代入
end                   # 繰り返しの終わり
puts(shou)            # shou の値を出力
puts(amari)           # amari の値を出力

