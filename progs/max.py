# max.py
# 入力: 整数の列
# 出力: 最大値

import os

os.system('clear')
array = list(map(int,input("numbers? ").split()))
if not array:  # array が空の場合
	raise ValueError("Cannot find max value in an empty array")  # エラーを起こす
# 以下が計算部分
max_value = array[0]      # array[0] を一時的に最大値に
max_index = 0
for i in range(1,(len(array))):
  if array[i] > max_value:
    max_value = array[i]
    max_index = i
print(max_value, max_index)
