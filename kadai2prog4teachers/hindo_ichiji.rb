# hindo.rb
# 解読プログラム作成のための参考プログラム (頻度を求める)
# 入力: 暗号文
# 出力: 文字．出現回数，

# 文字コードをアルファベットに変換する関数
def code2char(code)
  return([code].pack("C*"))
end

# 初期設定
length = 26                               # アルファベットの文字数
code_A = "A".ord                          # 文字 A の文字コード
code_a = "a".ord                          # 文字 a の文字コード
hindo = Array.new(length, 0)              # 出現頻度配列，長さ 26，初期値 0

# 入力
angobun = gets.chomp                      # 入力文字列から改行を除去

# アルファベット出現回数の計測
puts(angobun)
for k in 0..angobun.length-1
  moji = angobun[k]                       # angobun の k 文字目を得る (k は 0から始まる)
  code = moji.ord                         # 文字 moji の文字コードを得る
  if code >= code_a                       # 文字が小文字と思われれば，
    sabun = code - code_a                 # 文字が a のいくつ後ろかを計算
  else                                    # 文字が大文字と思われれば，
    sabun = code - code_A                 # 文字が A のいくつ後ろかを計算
  end
  if 0 <= sabun && sabun < length         # アルファベットならば，
    hindo[sabun] = hindo[sabun] + 1       # 出現回数を 1 大きくする
    end
end

for k in 0..length-1
  alphabet = code2char(code_a + k)
  puts(alphabet + ": " + hindo[k].to_s)
end
