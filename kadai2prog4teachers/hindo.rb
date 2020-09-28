# hindo.rb
# 暗号文中の文字の出現頻度を数える
# 入力: 文字列
# 出力: 頻度の配列

code_a = 97     # 文字 a の文字コード
kosu = 26       # 英字アルファベットの数

angobun = gets.chomp       # 暗号文を入力（注：入力文字列から改行を除去）
leng = angobun.length      # 文字列の長さ
a = angobun.unpack("C*")   # 暗号文の文字列から文字コードの配列へ変換
h = Array.new(kosu, 0)     # 出現頻度配列の準備，長さ 26，初期値 0

for i in 0..leng-1
  code = a[i]              # i 文字目のコードを得る
  sa = code - code_a
  if 0 <= sa && sa < kosu  # 小文字アルファベットならば
    h[sa] = h[sa] + 1      # 出現頻度を +1 する
  end
end

puts(h)
