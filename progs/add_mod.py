# add.py
# Input: 自然数 a, b
# Output: a + b
###

def add(a,b):
  wa = a               # a の値を wa に代入
  while b > 0:         # b が 0 より大きい間繰り返す
    wa = wa + 1        #   wa + 1 の値を wa に代入
    b = b - 1          #   b - 1 の値を b に代入
  return(wa)           # 結果を返す
