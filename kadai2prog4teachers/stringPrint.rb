# stringPrint.rb
# 文字列処理の練習プログラム（未使用）
# 入力: 文字列
# 出力: 文字列の文字を１行１文字で出す

puts("文字列を入力しよう")
str = gets().chomp        # 入力文字列から改行を除去したものを str に格納
n = str.length            # 入力文字列の長さを変数 n に格納
puts( str )
for  i in 0..(n-1)
   puts( str[i] )
end
