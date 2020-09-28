# anime.rb
# 入力 : 15個の自然数 0が35個

r1 =  100000000000000000000000000000000000
r2 =  100000000000000000000000000000000000
r3 =  100000000000000000000000000000000000
r4 =  100000000000000001110000000000000000
r5 =  100000000000011111111111000000000000
r6 =  100000000001111111111111110000000000
r7 =  100000000011111111111111111000000000
r8 =  100000000011111111111111111000000000
r9 =  100000000011111111111111111000000000
r10 = 100000000001111111111111110000000000
r11 = 100000000000011111111111000000000000
r12 = 100000000000000001110000000000000000
r13 = 100000000000000000000000000000000000
r14 = 100000000000000000000000000000000000
r15 = 100000000000000000000000000000000000

rb =  100000000000000000000000000000000000
rw =  111111111111111111111111111111111111

rt =  1000000000000000000000000000000000000
ru =  10000000000000000000000000000000000

#1---画面内から右へ等速に横移動

d1 = r1
d2 = r2
d3 = r3
d4 = r4
d5 = r5
d6 = r6
d7 = r7
d8 = r8
d9 = r9
d10 = r10
d11 = r11
d12 = r12
d13 = r13
d14 = r14
d15 = r15

t = 0

while t < 28
	puts(d1)
  	puts(d2)
  	puts(d3)
  	puts(d4)
  	puts(d5)
  	puts(d6)
  	puts(d7)
  	puts(d8)
  	puts(d9)
  	puts(d10)
  	puts(d11)
  	puts(d12)
  	puts(d13)
  	puts(d14)
  	puts(d15)
  	puts()				#空行を出力
  	puts()				#空行を出力

  	sleep(0.05)			#0.05秒休む

  	d1 = d1 / 10 + (ru*9)
  	d2 = d2 / 10 + (ru*9)
  	d3 = d3 / 10 + (ru*9)
  	d4 = d4 / 10 + (ru*9)
  	d5 = d5 / 10 + (ru*9)
  	d6 = d6 / 10 + (ru*9)
  	d7 = d7 / 10 + (ru*9)
  	d8 = d8 / 10 + (ru*9)
  	d9 = d9 / 10 + (ru*9)
  	d10 = d10 / 10 + (ru*9)
  	d11 = d11 / 10 + (ru*9)
  	d12 = d12 / 10 + (ru*9)
  	d13 = d13 / 10 + (ru*9)
  	d14 = d14 / 10 + (ru*9)
  	d15 = d15 / 10 + (ru*9)

  	t = t + 1

end

#2----画面に侵入上から下
e1 = r1
e2 = r2
e3 = r3
e4 = r4
e5 = r5
e6 = r6
e7 = r7
e8 = r8
e9 = r9
e10 = r10
e11 = r11
e12 = r12
e13 = r13
e14 = r14
e15 = r15

d1 = rb
d2 = rb
d3 = rb
d4 = rb
d5 = rb
d6 = rb
d7 = rb
d8 = rb
d9 = rb
d10 = rb
d11 = rb
d12 = rb
d13 = rb
d14 = rb
d15 = rb

t = 0

while t < 15
	puts(d1)
  	puts(d2)
  	puts(d3)
  	puts(d4)
  	puts(d5)
  	puts(d6)
  	puts(d7)
  	puts(d8)
  	puts(d9)
  	puts(d10)
  	puts(d11)
  	puts(d12)
  	puts(d13)
  	puts(d14)
  	puts(d15)
  	puts()				#空行を出力
  	puts()				#空行を出力

  	sleep(0.05)			#0.05秒休む

  	d15 = d14
  	d14 = d13
  	d13 = d12
  	d12 = d11
  	d11 = d10
  	d10 = d9
  	d9 = d8
  	d8 = d7
  	d7 = d6
  	d6 = d5
  	d5 = d4
  	d4 = d3
  	d3 = d2
  	d2 = d1
  	d1 = e15
  	e15 = e14
  	e14 = e13
  	e13 = e12
  	e12 = e11
  	e11 = e10
  	e10 = e9
  	e9 = e8
  	e8 = e7
  	e7 = e6
  	e6 = e5
  	e5 = e4
  	e4 = e3
  	e3 = e2
  	e2 = e1

  	t = t + 1

end

#3---画面内から左へ等速に横移動

d1 = r1
d2 = r2
d3 = r3
d4 = r4
d5 = r5
d6 = r6
d7 = r7
d8 = r8
d9 = r9
d10 = r10
d11 = r11
d12 = r12
d13 = r13
d14 = r14
d15 = r15

t = 0

while t < 28
	puts(d1)
  	puts(d2)
  	puts(d3)
  	puts(d4)
  	puts(d5)
  	puts(d6)
  	puts(d7)
  	puts(d8)
  	puts(d9)
  	puts(d10)
  	puts(d11)
  	puts(d12)
  	puts(d13)
  	puts(d14)
  	puts(d15)
  	puts()				#空行を出力
  	puts()				#空行を出力

  	sleep(0.05)			#0.05秒休む

  	d1 = (d1 - (ru*9) - ((d1 / ru - 10) * ru)) * 10
  	d2 = (d2 - (ru*9) - ((d2 / ru - 10) * ru)) * 10
  	d3 = (d3 - (ru*9) - ((d3 / ru - 10) * ru)) * 10
  	d4 = (d4 - (ru*9) - ((d4 / ru - 10) * ru)) * 10
  	d5 = (d5 - (ru*9) - ((d5 / ru - 10) * ru)) * 10
  	d6 = (d6 - (ru*9) - ((d6 / ru - 10) * ru)) * 10
  	d7 = (d7 - (ru*9) - ((d7 / ru - 10) * ru)) * 10
  	d8 = (d8 - (ru*9) - ((d8 / ru - 10) * ru)) * 10
  	d9 = (d9 - (ru*9) - ((d9 / ru - 10) * ru)) * 10
  	d10 = (d10 - (ru*9) - ((d10 / ru - 10) * ru)) * 10
  	d11 = (d11 - (ru*9) - ((d11 / ru - 10) * ru)) * 10
  	d12 = (d12 - (ru*9) - ((d12 / ru - 10) * ru)) * 10
  	d13 = (d13 - (ru*9) - ((d13 / ru - 10) * ru)) * 10
  	d14 = (d14 - (ru*9) - ((d14 / ru - 10) * ru)) * 10
  	d15 = (d15 - (ru*9) - ((d15 / ru - 10) * ru)) * 10

	t = t + 1

end

#4---画面に下から上
e1 = r1
e2 = r2
e3 = r3
e4 = r4
e5 = r5
e6 = r6
e7 = r7
e8 = r8
e9 = r9
e10 = r10
e11 = r11
e12 = r12
e13 = r13
e14 = r14
e15 = r15

d1 = rb
d2 = rb
d3 = rb
d4 = rb
d5 = rb
d6 = rb
d7 = rb
d8 = rb
d9 = rb
d10 = rb
d11 = rb
d12 = rb
d13 = rb
d14 = rb
d15 = rb

t = 0

while t < 16
	puts(d1)
  	puts(d2)
  	puts(d3)
  	puts(d4)
  	puts(d5)
  	puts(d6)
  	puts(d7)
  	puts(d8)
  	puts(d9)
  	puts(d10)
  	puts(d11)
  	puts(d12)
  	puts(d13)
  	puts(d14)
  	puts(d15)
  	puts()				#空行を出力
  	puts()				#空行を出力

  	sleep(0.05)			#0.05秒休む

  	d1 = d2
  	d2 = d3
  	d3 = d4
  	d4 = d5
  	d5 = d6
  	d6 = d7
  	d7 = d8
  	d8 = d9
  	d9 = d10
  	d10 = d11
  	d11 = d12
  	d12 = d13
  	d13 = d14
  	d14 = d15
  	d15 = e1
  	e1 = e2
  	e2 = e3
  	e3 = e4
  	e4 = e5
  	e5 = e6
  	e6 = e7
  	e7 = e8
  	e8 = e9
  	e9 = e10
  	e10 = e11
  	e11 = e12
  	e12 = e13
  	e13 = e14
  	e14 = e15


	t = t + 1

end

#5—--右斜め上へ移動
d1 = r1
d2 = r2
d3 = r3
d4 = r4
d5 = r5
d6 = r6
d7 = r7
d8 = r8
d9 = r9
d10 = r10
d11 = r11
d12 = r12
d13 = r13
d14 = r14
d15 = r15

e1 = rb
e2 = rb
e3 = rb
e4 = rb
e5 = rb
e6 = rb
e7 = rb
e8 = rb
e9 = rb
e10 = rb
e11 = rb
e12 = rb
e13 = rb
e14 = rb
e15 = rb

t = 0

while t < 14
	puts(d1)
  	puts(d2)
  	puts(d3)
  	puts(d4)
  	puts(d5)
  	puts(d6)
  	puts(d7)
  	puts(d8)
  	puts(d9)
  	puts(d10)
  	puts(d11)
  	puts(d12)
  	puts(d13)
  	puts(d14)
  	puts(d15)
  	puts()				#空行を出力
  	puts()				#空行を出力

  	sleep(0.05)			#0.05秒休む
	
  	d1 = d1 / 10 + (ru*9)
  	d2 = d2 / 10 + (ru*9)
  	d3 = d3 / 10 + (ru*9)
  	d4 = d4 / 10 + (ru*9)
  	d5 = d5 / 10 + (ru*9)
  	d6 = d6 / 10 + (ru*9)
  	d7 = d7 / 10 + (ru*9)
  	d8 = d8 / 10 + (ru*9)
  	d9 = d9 / 10 + (ru*9)
  	d10 = d10 / 10 + (ru*9)
  	d11 = d11 / 10 + (ru*9)
  	d12 = d12 / 10 + (ru*9)
  	d13 = d13 / 10 + (ru*9)
  	d14 = d14 / 10 + (ru*9)
  	d15 = d15 / 10 + (ru*9)

  	d1 = d2
  	d2 = d3
  	d3 = d4
  	d4 = d5
  	d5 = d6
  	d6 = d7
  	d7 = d8
  	d8 = d9
  	d9 = d10
  	d10 = d11
  	d11 = d12
  	d12 = d13
  	d13 = d14
  	d14 = d15
  	d15 = e1
  	e1 = e2
  	e2 = e3
  	e3 = e4
  	e4 = e5
  	e5 = e6
  	e6 = e7
  	e7 = e8
  	e8 = e9
  	e9 = e10
  	e10 = e11
  	e11 = e12
  	e12 = e13
  	e13 = e14
  	e14 = e15

	t = t + 1

end

#6—--画面外右から侵入
d1 = rb
d2 = rb
d3 = rb
d4 = rb
d5 = rb
d6 = rb
d7 = rb
d8 = rb
d9 = rb
d10 = rb
d11 = rb
d12 = rb
d13 = rb
d14 = rb
d15 = rb

t = 0
u = rb

while t < 36
	puts(d1)
  	puts(d2)
  	puts(d3)
  	puts(d4)
  	puts(d5)
  	puts(d6)
  	puts(d7)
  	puts(d8)
  	puts(d9)
  	puts(d10)
  	puts(d11)
  	puts(d12)
  	puts(d13)
  	puts(d14)
  	puts(d15)
  	puts()				#空行を出力
  	puts()				#空行を出力

  	sleep(0.05)			#0.05秒休む

  	d1 = r1 / u + rb - (rb / u)
  	d2 = r2 / u + rb - (rb / u)
  	d3 = r3 / u + rb - (rb / u)
  	d4 = r4 / u + rb - (rb / u)
  	d5 = r5 / u + rb - (rb / u)
  	d6 = r6 / u + rb - (rb / u)
  	d7 = r7 / u + rb - (rb / u)
  	d8 = r8 / u + rb - (rb / u)
  	d9 = r9 / u + rb - (rb / u)
  	d10 = r10 / u + rb - (rb / u)
  	d11 = r11 / u + rb - (rb / u)
  	d12 = r12 / u + rb - (rb / u)
  	d13 = r13 / u + rb - (rb / u)
  	d14 = r14 / u + rb - (rb / u)
  	d15 = r15 / u + rb - (rb / u)

  	u = u / 10
	t = t + 1

end

#7—--放物線運動
d1 = r1
d2 = r2
d3 = r3
d4 = r4
d5 = r5
d6 = r6
d7 = r7
d8 = r8
d9 = r9
d10 = r10
d11 = r11
d12 = r12
d13 = r13
d14 = r14
d15 = r15

t = 0

while t < 16
  	x = 3 / 2 * t - 1 * t * t / 6
  	if x >= 0
  		y = x
  		while y > 0
  			d1 = (d1 - (ru*9) - ((d1 / ru - 10) * ru)) * 10
  			d2 = (d2 - (ru*9) - ((d2 / ru - 10) * ru)) * 10
  			d3 = (d3 - (ru*9) - ((d3 / ru - 10) * ru)) * 10
  			d4 = (d4 - (ru*9) - ((d4 / ru - 10) * ru)) * 10
  			d5 = (d5 - (ru*9) - ((d5 / ru - 10) * ru)) * 10
  			d6 = (d6 - (ru*9) - ((d6 / ru - 10) * ru)) * 10
  			d7 = (d7 - (ru*9) - ((d7 / ru - 10) * ru)) * 10
  			d8 = (d8 - (ru*9) - ((d8 / ru - 10) * ru)) * 10
  			d9 = (d9 - (ru*9) - ((d9 / ru - 10) * ru)) * 10
  			d10 = (d10 - (ru*9) - ((d10 / ru - 10) * ru)) * 10
  			d11 = (d11 - (ru*9) - ((d11 / ru - 10) * ru)) * 10
  			d12 = (d12 - (ru*9) - ((d12 / ru - 10) * ru)) * 10
  			d13 = (d13 - (ru*9) - ((d13 / ru - 10) * ru)) * 10
  			d14 = (d14 - (ru*9) - ((d14 / ru - 10) * ru)) * 10
  			d15 = (d15 - (ru*9) - ((d15 / ru - 10) * ru)) * 10

  			y = y - 1
  		end
  	end

  	if x < 0
  		y = -x
  		while y > 0
  			d1 = d1 / 10 + (ru*9)
  			d2 = d2 / 10 + (ru*9)
  			d3 = d3 / 10 + (ru*9)
  			d4 = d4 / 10 + (ru*9)
  			d5 = d5 / 10 + (ru*9)
  			d6 = d6 / 10 + (ru*9)
  			d7 = d7 / 10 + (ru*9)
  			d8 = d8 / 10 + (ru*9)
  			d9 = d9 / 10 + (ru*9)
  			d10 = d10 / 10 + (ru*9)
  			d11 = d11 / 10 + (ru*9)
  			d12 = d12 / 10 + (ru*9)
  			d13 = d13 / 10 + (ru*9)
  			d14 = d14 / 10 + (ru*9)
  			d15 = d15 / 10 + (ru*9)
  			y = y - 1
  		end
  	end

	t = t + 1

	puts(d1)
  	puts(d2)
  	puts(d3)
  	puts(d4)
  	puts(d5)
  	puts(d6)
  	puts(d7)
  	puts(d8)
  	puts(d9)
  	puts(d10)
  	puts(d11)
  	puts(d12)
  	puts(d13)
  	puts(d14)
  	puts(d15)
  	puts()				#空行を出力
  	puts()				#空行を出力

  	sleep(0.1)			#0.1秒休む

end

#8—--左から画面侵入
d1 = rb
d2 = rb
d3 = rb
d4 = rb
d5 = rb
d6 = rb
d7 = rb
d8 = rb
d9 = rb
d10 = rb
d11 = rb
d12 = rb
d13 = rb
d14 = rb
d15 = rb

t = 0
u = 1

while t < 37
	puts(d1)
  	puts(d2)
  	puts(d3)
  	puts(d4)
  	puts(d5)
  	puts(d6)
  	puts(d7)
  	puts(d8)
  	puts(d9)
  	puts(d10)
  	puts(d11)
  	puts(d12)
  	puts(d13)
  	puts(d14)
  	puts(d15)
  	puts()				#空行を出力
  	puts()				#空行を出力

  	sleep(0.05)			#0.05秒休む

  	d1 = (r1 - r1 / u * u) * rb / u + rb
  	d2 = (r2 - r2 / u * u) * rb / u + rb
  	d3 = (r3 - r3 / u * u) * rb / u + rb
  	d4 = (r4 - r4 / u * u) * rb / u + rb
  	d5 = (r5 - r5 / u * u) * rb / u + rb
  	d6 = (r6 - r6 / u * u) * rb / u + rb
  	d7 = (r7 - r7 / u * u) * rb / u + rb
  	d8 = (r8 - r8 / u * u) * rb / u + rb
  	d9 = (r9 - r9 / u * u) * rb / u + rb
  	d10 = (r10 - r10 / u * u) * rb / u + rb
  	d11 = (r11 - r11 / u * u) * rb / u + rb
  	d12 = (r12 - r12 / u * u) * rb / u + rb
  	d13 = (r13 - r13 / u * u) * rb / u + rb
  	d14 = (r14 - r14 / u * u) * rb / u + rb
  	d15 = (r15 - r15 / u * u) * rb / u + rb

  	u = u * 10
	t = t + 1

end

#9—--反転と縦方向の分割
d1 = r1
d2 = r2
d3 = r3
d4 = r4
d5 = r5
d6 = r6
d7 = r7
d8 = r8
d9 = r9
d10 = r10
d11 = r11
d12 = r12
d13 = r13
d14 = r14
d15 = r15
d15 = rw - r15

t = 0
d8 = rw

while t < 10
	puts(rw - d1 + rb)
  	puts(rw - d2 + rb)
  	puts(rw - d3 + rb)
  	puts(rw - d4 + rb)
  	puts(rw - d5 + rb)
  	puts(rw - d6 + rb)
  	puts(rw - d7 + rb)
  	puts(rw - d8 + rb)
  	puts(rw - d9 + rb)
  	puts(rw - d10 + rb)
  	puts(rw - d11 + rb)
  	puts(rw - d12 + rb)
  	puts(rw - d13 + rb)
  	puts(rw - d14 + rb)
  	puts(rw - d15 + rb)
  	puts()				#空行を出力
  	puts()				#空行を出力

  	sleep(0.1)			#0.1秒休む

	d1 = d1 / 10 + (ru*9)
  	d2 = d2 / 10 + (ru*9)
  	d3 = d3 / 10 + (ru*9)
  	d4 = d4 / 10 + (ru*9)
  	d5 = d5 / 10 + (ru*9)
  	d6 = d6 / 10 + (ru*9)
  	d7 = d7 / 10 + (ru*9)
  	d9 = d9 / 10 + (ru*9)
  	d10 = d10 / 10 + (ru*9)
  	d11 = d11 / 10 + (ru*9)
  	d12 = d12 / 10 + (ru*9)
  	d13 = d13 / 10 + (ru*9)
  	d14 = d14 / 10 + (ru*9)
  	d15 = d15 / 10 + (ru*9)
  	d1 = d2
  	d2 = d3
  	d3 = d4
  	d4 = d5
  	d5 = d6
  	d6 = d7
  	d7 = rb
  	d15 = d14
  	d14 = d13
  	d13 = d12
  	d12 = d11
  	d11 = d10
  	d10 = d9
  	d9 = rb

	t = t + 1

end

#10—--場面変更
d1 = rw
d2 = rw
d3 = rw
d4 = rw
d5 = rw
d6 = rw
d7 = rw
d8 = rb
d9 = rw
d10 = rw
d11 = rw
d12 = rw
d13 = rw
d14 = rw
d15 = rw

t = 0

while t < 8
	puts(d1)
  	puts(d2)
  	puts(d3)
  	puts(d4)
  	puts(d5)
  	puts(d6)
  	puts(d7)
  	puts(d8)
  	puts(d9)
  	puts(d10)
  	puts(d11)
  	puts(d12)
  	puts(d13)
  	puts(d14)
  	puts(d15)
  	puts()				#空行を出力
  	puts()				#空行を出力

  	sleep(0.1)			#0.1秒休む

  	d1 = d2
  	d2 = d3
  	d3 = d4
  	d4 = d5
  	d5 = d6
  	d6 = d7
  	d7 = d8
  	d15 = d14
  	d14 = d13
  	d13 = d12
  	d12 = d11
  	d11 = d10
  	d10 = d9
  	d9 = d8

	t = t + 1

end

#11—--徐々に現れる
d1 = rb
d2 = rb
d3 = rb
d4 = rb
d5 = rb
d6 = rb
d7 = rb
d8 = rb
d9 = rb
d10 = rb
d11 = rb
d12 = rb
d13 = rb
d14 = rb
d15 = rb

t = 0
u = 1000000

while t < 25
	puts(d1)
  	puts(d2)
  	puts(d3)
  	puts(d4)
  	puts(d5)
  	puts(d6)
  	puts(d7)
  	puts(d8)
  	puts(d9)
  	puts(d10)
  	puts(d11)
  	puts(d12)
  	puts(d13)
  	puts(d14)
  	puts(d15)
  	puts()				#空行を出力
  	puts()				#空行を出力

  	sleep(0.1)			#0.1秒休む

  	d1 = r1 - r1 / u * u + rb
  	d2 = r2 - r2 / u * u + rb
  	d3 = r3 - r3 / u * u + rb
  	d4 = r4 - r4 / u * u + rb
  	d5 = r5 - r5 / u * u + rb
  	d6 = r6 - r6 / u * u + rb
  	d7 = r7 - r7 / u * u + rb
  	d8 = r8 - r8 / u * u + rb
  	d9 = r9 - r9 / u * u + rb
  	d10 = r10 - r10 / u * u + rb
  	d11 = r11 - r11 / u * u + rb
  	d12 = r12 - r12 / u * u + rb
  	d13 = r13 - r13 / u * u + rb
  	d14 = r14 - r14 / u * u + rb
  	d15 = r15 - r15 / u * u + rb

  	u = u * 10
	t = t + 1

end

#12—--縦横分割別変化
d8 = r8

aa =  10000000000000000
ab =  100000000000000000
ac =  1000000000000000000
a1 =  r1 / ac
a2 =  r2 / ac
a3 =  r3 / ac
a4 =  r4 / ac
a5 =  r5 / ac
a6 =  r6 / ac
a7 =  r7 / ac
b1 =  r1 - a1 * ac + ab - ((r1 - a1 * ac) / ab * ab) 
b2 =  r2 - a2 * ac + ab - ((r2 - a2 * ac) / ab * ab)
b3 =  r3 - a3 * ac + ab - ((r3 - a3 * ac) / ab * ab)
b4 =  r4 - a4 * ac + ab - ((r4 - a4 * ac) / ab * ab)
b5 =  r5 - a5 * ac + ab - ((r5 - a5 * ac) / ab * ab)
b6 =  r6 - a6 * ac + ab - ((r6 - a6 * ac) / ab * ab)
b7 =  r7 - a7 * ac + ab - ((r7 - a7 * ac) / ab * ab)
a9 =  r9 / ac
a10 = r10 / ac
a11 = r11 / ac
a12 = r12 / ac
a13 = r13 / ac
a14 = r14 / ac
a15 = r15 / ac
b9 =  r9 - a9 * ac + ab - ((r9 - a9 * ac) / ab * ab)
b10 = r10 - a10 * ac + ab - ((r10 - a10 * ac) / ab * ab)
b11 = r11 - a11 * ac + ab - ((r11 - a11 * ac) / ab * ab)
b12 = r12 - a12 * ac + ab - ((r12 - a12 * ac) / ab * ab)
b13 = r13 - a13 * ac + ab - ((r13 - a13 * ac) / ab * ab)
b14 = r14 - a14 * ac + ab - ((r14 - a14 * ac) / ab * ab)
b15 = r15 - a15 * ac + ab - ((r15 - a15 * ac) / ab * ab)
c3 =  0
c4 =  ab
c5 =  ab
c6 =  ab
c7 =  ab
c9 =  ab
c10 = ab
c11 = ab
c12 = ab
c13 = 0
er = 1000000000
el = 10000000000000000000000000

t = 0

while t < 9
	puts(a1 * ac  + b1 - ab )
  	puts(a2 * ac + b2 - ab )
  	puts(a3 * ac + b3 - ab )
  	puts(a4 * ac + b4 + c4 - ab )
  	puts(a5 * ac + b5 + c5 - ab )
  	puts(a6 * ac + b6 + c6 - ab )
  	puts(a7 * ac + b7 + c7 - ab )
  	puts(d8)
  	puts(a9 * ac + b9 + c9 - ab )
  	puts(a10 * ac + b10 + c10 - ab )
  	puts(a11 * ac + b11 + c11 - ab )
  	puts(a12 * ac + b12 + c12 - ab )
  	puts(a13 * ac + b13 - ab )
  	puts(a14 * ac + b14 - ab )
  	puts(a15 * ac + b15 - ab )
  	puts()				#空行を出力
  	puts()				#空行を出力

  	#sleep(2.00)
  	sleep(0.07)			#0.07秒休む

  	a4 = a4 / 10 + aa * 9
  	a5 = a5 / 10 + aa * 9
  	a6 = a6 / 10 + aa * 9
  	a7 = a7 / 10 + aa * 9
  	a9 = a9 / 10 + aa * 9
  	a10 = a10 / 10 + aa * 9
  	a11 = a11 / 10 + aa * 9
  	a12 = a12 / 10 + aa * 9
  	b4 = (b4 - aa * 9 - ((b4 / aa  - 10) * aa)) * 10
  	b5 = (b5 - aa * 9 - ((b5 / aa  - 10) * aa)) * 10
  	b6 = (b6 - aa * 9 - ((b6 / aa  - 10) * aa)) * 10
  	b7 = (b7 - aa * 9 - ((b7 / aa  - 10) * aa)) * 10
  	b9 = (b9 - aa * 9 - ((b9 / aa  - 10) * aa)) * 10
  	b10 = (b10 - aa * 9 - ((b10 / aa  - 10) * aa)) * 10
  	b11 = (b11 - aa * 9 - ((b11 / aa  - 10) * aa)) * 10
  	b12 = (b12 - aa * 9 - ((b12 / aa  - 10) * aa)) * 10

  	a7 = a6
  	a6 = a5
  	a5 = a4
  	a4 = a3
  	a9 = a10
  	a10 = a11
  	a11 = a12
  	a12 = a13
  	b7 = b6
  	b6 = b5
  	b5 = b4
  	b4 = b3
  	b9 = b10
  	b10 = b11
  	b11 = b12
  	b12 = b13
    c7 = c6
  	c6 = c5
  	c5 = c4
  	c4 = c3
  	c9 = c10
  	c10 = c11
  	c11 = c12
  	c12 = c13
  	d8 = d8 - er - el
  	er = er * 10
  	el = el / 10
	t = t + 1

end
	puts(rb)
  	puts(rb)
  	puts(rb)
  	puts(rb)
  	puts(rb)
  	puts(rb)
  	puts(rb)
  	puts(rb)
  	puts(rb)
  	puts(rb)
  	puts(rb)
  	puts(rb)
  	puts(rb)
  	puts(rb)
  	puts(rb)
  	puts()				#空行を出力
  	puts()				#空行を出力