# Compute the Fibonacci numbers
#Mode:: Python3
#
#  フィボナッチ数を求める再帰的なプログラムが (1) に与えられている．(2) は (1) を末尾再帰に変換したプログラムである．

import timeit
import cProfile
import sys
sys.setrecursionlimit(2000)

def iseven (n):
  if (n%2==0):
    return(True)
  else:
    return(False)
#(1)
#O(2^n)
def fib (n):
  if (n==0):
    return(0)
  else:
    if (n==1):
      return(1)
    else:
      return(fib(n-1)+fib(n-2))

#(2) 以下のプログラムを繰り返しを用いたプログラムに変換せよ．
#O(n)
def fib_iter (n):
  def fib_iter1 (a, b, c):
    if (c==0): 
      return b
    else:
      return(fib_iter1((a+b), a ,(c-1)))
  return(fib_iter1(1,0,n))
def fib_while (n):
  c=n
  a=1
  b=0
  s=0
  while (c>0):
    s=a
    a=a+b
    b=s
    c=c-1
  return(b)

#(3) n 番目のフィボナッチ数を求める効率的なアルゴリズムを調べ，そのプログラムを作成せよ．
#Hint: 計算機プログラムの構造と解釈（Google サイトのリンクからたどれます．）の問題 1.19 参照
#O(log n)
def fast_fib(n):
  def fast_fib1(n):
    if (n==0):
      return(0,1)
    else:
      a,b=fast_fib1(n//2)
      if (iseven(n)):
        return(a*(2*b-a),a**2+b**2)
      else:
        return(b**2+a**2,a*(2*b-a)+a**2+b**2)
  return(fast_fib1(n)[0])

def fast_fib_tail(n):
  def fast_fib1(a,b,p,q,k):
    if (k == 0):
      return(b)
    else:
      if (iseven(k)):
        return(fast_fib1(a,b,((p**2)+(q**2)),((2*p*q)+(q**2)),k//2))
      else:
        return(fast_fib1((b*q+a*q+a*p),(b*p+a*q),p,q,k-1))
  return(fast_fib1(1,0,0,1,n))

def fast_fib_while(n):
  a,b,p,q=1,0,0,1
  while (n != 0):
    if (iseven(n)):
      p,q=(p**2)+(q**2),(2*p*q)+(q**2)
      n=n//2
    else:
      a,b=b*q+a*q+a*p, b*p+a*q
      n=n-1
  return(b)


# (4) (1,2,3) のプログラムは n が大きくなるとの実行時間に差が出てくる．その理由を Big-O 記法を用いて説明せよ．

# Test Harness
n = int(input("n(>=0)? "))
cProfile.run("print(fast_fib_while(n))")
cProfile.run("print(fast_fib_tail(n))")
cProfile.run("print(fast_fib(n))")
cProfile.run("print(fib_iter(n))")
cProfile.run("print(fib_while(n))")
cProfile.run("print(fib(n))")
