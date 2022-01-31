# Quiz S
#Mode:: Python3
#
#  フィボナッチ数を求める再帰的なプログラムが (1) に与えられている．

import cProfile

#(1)
def fib (n):
  if (n==0):
    return(0)
  else:
    if (n==1):
      return(1)
    else:
      return(fib(n-1)+fib(n-2))

#(2) 以下の末尾再帰プログラムを繰り返し (while や for) を用いたプログラムに変換せよ．
def fib_iter (n):
  def fib_iter1 (a, b, c):
    if (c==0): 
      return b
    else:
      return(fib_iter1((a+b), a ,(c-1)))
  return(fib_iter1(1,0,n))

#(3) n 番目のフィボナッチ数を求める効率的なアルゴリズムを調べ，そのプログラムを作成せよ．
#Hint: 計算機プログラムの構造と解釈（Google サイトのリンクからたどれます．）の問題 1.19 参照
def fast_fib(n):
  return(None)

# (4) (1,2,3) のプログラムは n が大きくなるとの計算時間に差が出てくる．その理由を Big-O 記法を用いて説明せよ．

# Test Harness
n = int(input("n(>=0)? "))
cProfile.run("print(fast_fib(n))")
cProfile.run("print(fib_iter(n))")
#cProfile.run("print(fib(n))")
