# hukugo.rb
# 復号サブルーチンの定義と利用
# 入力: 暗号文の文字列
# 出力: 復号した文字列

# 平文を暗号化するサブルーチン
# dec(秘密鍵 k, 暗号文 c) = 平文 m
def dec(k, c)
  code_a = 97                # 文字 a の文字コード
  kosu = 26                  # 英字アルファベットの数

  leng = c.length            # 文字列の長さ
  a = c.unpack("C*")         # 文字列から文字コードの配列へ変換
  b = Array.new(leng)        # 平文（のコード）格納用配列

  for i in 0..leng-1
    code = a[i]                 # i 文字目のコードを得る
    sa = code - code_a          # 文字 a からの差分
    #
    # ここに埋め込む
    #
    b[i] = sa + code_a          # 平文用のコードの格納
  end
  m = b.pack("C*")              # コードの配列を文字列に直す
  return(m)
end
# サブルーチン dec （終）

##### プログラム本文 #####
# 暗号鍵の設定
k = 3

angobun = gets.chomp            # 暗号文を入力（注：入力文字列から改行を除去）
hirabun = dec(k, angobun)       # 平文に変換
puts(hirabun)                   # 平文を出力
