# ango.rb
# 暗号化サブルーチンの定義と利用
# 入力: 文字列
# 出力: 暗号化した文字列

# 平文を暗号化するサブルーチン
# enc(秘密鍵 k, 平文 m) = 暗号文 c
def enc(k, m)
  code_a = 97                # 文字 a の文字コード
  kosu = 26                  # 英字アルファベットの数

  leng = m.length            # 文字列の長さ
  a = m.unpack("C*")         # 文字列から文字コードの配列へ変換
  b = Array.new(leng)        # 暗号文（のコード）格納用配列

  for i in 0..leng-1
    code = a[i]                 # i 文字目のコードを得る
    sa = code - code_a
    if 0 <= sa && sa < kosu     # 小文字アルファベットならば
       sa = (sa + k) % 26       #                 文字コードをずらす
    end
    b[i] = sa + code_a
  end
  c = b.pack("C*")              # コードの配列を文字列に直す
  return(c)
end
# サブルーチン enc （終）

##### プログラム本文 #####
# 暗号鍵の設定
K = 3

hirabun = gets.chomp            # 平文を入力（注：入力文字列から改行を除去）
angobun = enc(K, hirabun)       # 暗号文に変換
puts(angobun)                   # 暗号文を出力
