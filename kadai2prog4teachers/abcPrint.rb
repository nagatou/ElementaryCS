# abcPrint.rb
# 文字列処理の練習プログラム，小文字だけ出力
# 入力: 文字列
# 出力: 文字列の文字で小文字のみ出力する

# 初期設定
code_a = 97              # 文字 a の文字コード
code_z = 122             # アルファベットの文字数

puts("文字列を入力しよう")
ss = gets().chomp        # 入力文字列から改行を除去したものを ss に格納
aa = ss.unpack("C*")     # 文字列を文字コードの配列に変換し aa に格納
leng = ss.length         # 文字列の長さを変数 leng に格納
for  k in 0..(leng-1)
  moji = ss[k]                   # ss の k 文字目を得る (k は 0から始まる)
  code = aa[k]                   # その文字のコードを得る
  if code_a <= code && code <= code_z    # 小文字アルファベットならば
     print(moji,"\n")       # 　　情報を表示する
#     print(moji, ": ", code, "\n")       # 　　情報を表示する
#  else                                   # そうでないときは
#     print(moji, "\n")                   # 　　文字のみ表示する
  end
end
