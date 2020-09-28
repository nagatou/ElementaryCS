# mult_basiconly.rb
# 入力: 自然数 x, y
# 出力: x × y

x = gets().to_i             # 入力された自然数を x に代入
y = gets().to_i             # 入力された自然数を y に代入
seki = 0                    # 0 を seki に代入
while y > 0                 # y が 0 より大きい間は end までを繰り返す
  a = seki; b = x; wa = a   #   和のプログラム add.rb を挿入
  while b > 0
    wa = wa + 1; b = b - 1
  end                       #   和のプログラム add.rb はここまで
  seki = wa                 #   wa の値 (seki + x) を seki に代入
  y = y - 1                 #   y - 1 の値を y に代入
end                         # 繰り返しの終わり
puts(seki)                  # seki の値を出力
