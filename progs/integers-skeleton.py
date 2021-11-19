# Mode: Python3
# An array representation of integers; z=[natural number, natural number].
# 1st element: a natural number (if z>0)
# 2nd        : a natural number (if z<0)
#
# False is represented by 0, and True is represented by non-zero.
#
##### Quiz S
#  これまで，計算とは数え上げること，数え上げるとは自然数と対応づけられることとして
# 計算の基本的な構成要素を +1 とした．また +1 の逆演算を -1 で表した．
# 逆演算の意味は， y-1 とすれば，+1 を適用して y となるような数という意味である．
#
# +1 とその逆演算を用いて四則演算を定義した．例えば，a+b は a に +1 を b 回適用したものとした．
# b が自然数である場合には意味をもつ．しかし， b が 0 や負の数の場合にはどう定義すればよいか考える．
# 自然数が定義できれば自然に整数に拡張することができることを見て行く．
#
# N を自然数の集合とする．- と N の要素を組み合わせて負の数といい，この集合を -N={-n|n is in N} で表す．
# -N を導入してそれぞれの和集合を整数の集合 Z=-N U {0} U N とする．ある整数 z を自然数だけを用いて表すことを考える．
# 0 は (0,0)=(m,m) とし， N と -N の要素はそれぞれ (n,0) か (0,n) で表す．もう少し考察を加える．
# (-1) の次の数は 0 すなわち (-1)+1=0，0 の次の数は 1 すなわち 0+1=1，n を自然数とすれば -(n+1) の次の数は -n であると定める．
# (+1) を右から n 回施して 0 となる数を -n と解釈する．
# N と -N を区別するためにベクトルを導入して (n,0) と (0,n) とで区別する．以上を踏まえて，整数 z を自然数の組 (m,n) で表す．
# 云い方を変えて整数を m,n を自然数，k を整数として m-n=k とする．よって (m,n) を代表元とする集合は直線 m=n+k となる．
# この直線の m 軸との交点はちょうど m 軸を数直線と見なしたときの数直線上の整数になっている．これで整数と自然数の組の集合が一意に
# 対応付くことがわかる．後は自然数の組の集合が交わらないことが云えればいいが，それはまた別の講義で．
#
# (m,n) について m+n'=m'+n となるような組 (m',n') 全体を [m,n] で表す． [m,n] を整数 z と表す． (m,n) を代表元と呼ぶ．
# (m,0) は N の要素，(0,n) は -N 要素とする．[m,n]=[m,0]+[0,n]=m-n=z である．0 から m 回 (+1) を施して n 回 (-1) を施した数を (m,n) で
# 表すと解釈する．よって，m-n とすれば普段見慣れている整数になる．
#
# Python は便利な機能が多く含まれている．数も自然数ではなく整数や実数を表現する方法が提供されているし，多くの演算も提供されている．
# ここでは，自然数を表現する方法しかないと勝手に制限し，この制限の元で整数上の演算を定義するのが今回の課題．
# 自然数上の加法，乗法，比較が以下のように与えられたとして整数上の以下の演算を作成せよ．
#  (1) これらの関数だけを用いて整数上の加法
#  (2) これらの関数だけを用いて整数上の乗法
#  (3) これらの関数だけを用いて整数上の比較
#  (4) これらの関数だけを用いて整数上の減算

import os

### On Natural Number
def succ(num):
  return(num+1)
def pred (x):
  def pred1 (x,k1,k2):
    if (x==k2):
      return(k1)
    else:
      return(pred1(x,succ(k1),succ(k2)))
  if (x==0):
    raise ValueError("OUT OF THE SET NAT")
  else:
    return(pred1(x,0,1))
def add_on_nat(a,b):
  if (a==0):
    return(b)
  else:
    return(succ(add_on_nat(pred(a),b)))
def mult_on_nat(a,b):
  if (b==0):
    return(0)
  else:
    return(add_on_nat(add_on_nat(0,a),mult_on_nat(a,pred(b))))
def comp_on_nat (a,b):
  if ((b==0) and (a>=0)):
    return(0) # if a >= b then set to zero
  else:
    if ((a==0) and (b>=0)):
      return(1) # if a < b then set to non-zero
    else:
      return(comp_on_nat(pred(a),pred(b)))

### A Pair Representation for Integers
integers = [[0 for i in range(2)] for j in range(128)]
top = current = 0
bottom = len(integers)

def new_num (non_negative, negative):
  global integers, top, bottom, current
  if current < bottom:
    integers[current][0] = non_negative
    integers[current][1] = negative
    current+=1
    return(integers[current-1])
  else:
    raise ValueError("ARRAY EMPTY")
def num2pair (z):
  if z < 0:
    return(new_num(0,z*(-1)))
  else:
    return(new_num(z,0))
def pair2num (num):
  return(num[0]-num[1])

### On Integer
#(1)
# 整数の加法は (m-n)+(m'-n')=(m+m'-n+n') と定義する．
# この演算を整数の加法と呼ぶ．
def add_on_int(za,zb):
# ...
#(2)
# 乗法は (m-n)(m'-n')=(mm'+nn'-mn'+nm') と定義する．
# この演算を整数の乗法と呼ぶ．
def mult_on_int(za,zb):
# ...
#(3)
# (m,n) と (m',n') の大小関係 を (m+n' < n+m') と定義する．
# この関係を整数の大小関係と呼ぶ．
# 以下の関数 comp_on_int では za < zb のとき 1 を返し，そうでないとき 0 を返すようにすること．
def comp_on_int (za,zb):
# ...
#(4)
# inverse_on_int は z の逆元を求める関数．逆元とは，加法に関する単位元 (0,0) として，(a,b)+(a',b')=(a',b')+(a,b)=(0,0) となるような (a',b') のことを (a,b) の加法に関する逆元という．
# 逆元がわかれば減算は逆元を足せばいい．
def inverse_on_int(z):
# ...
def sub_on_int(za,zb):
# ...


### TEST HARNESS
#os.system('clear')
z = int(input("integer? "))
zz = int(input("integer? "))
print('add({0},{1})={2}'.format(z,zz,pair2num(add_on_int(num2pair(z),num2pair(zz)))))
print('mult({0},{1})={2}'.format(z,zz,pair2num(mult_on_int(num2pair(z),num2pair(zz)))))
print('comp({0},{1})={2}'.format(z,zz,comp_on_int(num2pair(z),num2pair(zz))))
print('sub({0},{1})={2}'.format(z,zz,pair2num(sub_on_int(num2pair(z),num2pair(zz)))))
