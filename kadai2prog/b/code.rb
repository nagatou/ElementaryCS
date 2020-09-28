# code.rb
# 文字列処理の復習用
# 入力: 文字列
# 出力: 文字列の文字で小文字のみ，文字と各種情報を出力する

# 初期設定
code_a = 97                 # 文字 a の文字コード
kosu = 26                   # 英字アルファベットの数

# 入力
bun = gets.chomp            # 入力文字列から改行を除去
cc = bun.unpack("C*")       # 文字列→文字コードの配列
leng = bun.length           # 文字列の長さ

puts("** 文字，文字コード，a からの差分**")
for i in 0..leng-1
  moji = bun[i]             # bun の i 文字目を得る (i は 0から始まる)
  code = cc[i]              # その文字のコードを得る
  sabun = code - code_a
  if 0 <= sabun && sabun < kosu                  # 小文字アルファベットならば
     print(moji, ": ", code, ", ", sabun, "\n")  # 　情報を表示する
  else                                           # そうでないときは
     print(moji, ": ", code, "\n")               # 　差分は表示しない
  end
end

