#
### Frequency
#
def rd_statistic (filename)
  statisticFile=File.open(filename)
  statistic=Array.new
  i=0
  statisticFile.each_line do |colmun|
    if !(/^#/ =~ colmun) # ignore comment lines
      statistic[i]=(((colmun.chomp!).split())[1]).to_f
      i=i+1
    end
  end
  statisticFile.close
  return statistic
end
def frequency1 (ciphertext)
  code_a = 97     # 文字 a の文字コード
  kosu = 26       # 英字アルファベットの数
 
  a = (ciphertext.downcase).unpack("C*")
  h = Array.new(kosu, 0.0)
 
  for i in 0..ciphertext.length-1
    sa = a[i] - code_a
    if 0 <= sa && sa < kosu  # 小文字アルファベットならば
      h[sa] = h[sa] + 1.0      # 出現頻度を +1 する
    end
  end
  return h.map {|item| item/ciphertext.length}
end
def frequency (ciphertext)
  return frequency1(ciphertext)
end

#
### Correlation
#
def correlation1 (ciphertext,key)
  sum=0.0
  p=rd_statistic("1-gram.txt")
  f=frequency(ciphertext)
  
  if f.length==p.length
    i=0
    j=0
    for i in 0..f.length-1
      sum=sum+(f[i] * p[i-key])
    end
  end
  return sum
end
def correlation (ciphertext)
  result = Array.new

  for key in 0..25
    result[key]=sprintf("%d %f",key,correlation1(ciphertext,key))
  end
  return (result.sort_by{|item| item.split[1].to_f}).reverse
end

#
### decipher
#
def decipher1(k, c)
  code_a = 97                # 文字 a の文字コード
  kosu = 26                  # 英字アルファベットの数

  leng = c.length            # 文字列の長さ
  a = c.unpack("C*")         # 文字列から文字コードの配列へ変換
  b = Array.new(leng)        # 暗号文（のコード）格納用配列

  for i in 0..leng-1
    code = a[i]                 # i 文字目のコードを得る
    sa = code - code_a          # 文字 a からの差分
    if 0 <= sa && sa < kosu     # 小文字アルファベットならば
       sa = ((26+sa) - k)%26  # 26 を足すべき，言語や処理系に依存してしまうので．
    end
    b[i] = sa + code_a
  end
  m = b.pack("C*")              # コードの配列を文字列に直す
  return(m)
end
def decipher (ciphertext)
  keys=correlation(ciphertext)
  key=0
  plaintext=Array.new

  for i in 0..4 # for the top 5 keys 
    key=keys[i].split()[0].to_i
    plaintext[i]=sprintf("key=%d:%s",key,decipher1(key,ciphertext))
  end
  return plaintext
end

#
### TEST harness
#
angobun = gets.chomp
for i in 0..4
  p decipher(angobun)[i]
  puts("\n")
end
