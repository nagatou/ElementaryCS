# Several sorting algorithms
#Mode:: Python3

import os, time, random

def swap (x,y):
  return(y,x)
def comp (x,y):
  if (x < y):
    return(True)
  else:
    return(False)

def bubble_sort(numbers,cmp_fun):
  for i in range(0,len(numbers)):
    for j in range(len(numbers)-1,i,-1):
      if cmp_fun(numbers[j],numbers[j-1]):
        numbers[j],numbers[j-1] = swap(numbers[j],numbers[j-1])
  return(numbers)  

def insertion_sort(numbers,cmp_fun):
  for i in range(1,len(numbers)):
    j=i
    while (j>0) and cmp_fun(numbers[j],numbers[j-1]):
      numbers[j],numbers[j-1] = swap(numbers[j],numbers[j-1])
      j=j-1
  return(numbers)

def quick_sort(numbers,cmp_fun):
  def findpivot(numbers,front,rear):
    pivot=numbers[front]
    for indx in range(front+1,rear+1):
      if (numbers[indx]>pivot):
        return(indx)
      else:
        if (numbers[indx]<pivot):
          return(front)
    return(-1)
  def partition(numbers,left,right,pivot):
    while left<=right:
      numbers[left],numbers[right] = swap(numbers[left],numbers[right])
      while (cmp_fun(numbers[left],pivot)):
        left=left+1
      while (not cmp_fun(numbers[right],pivot)):
        right=right-1
    return(left)
  def quick_sort1(numbers,front,rear):
    pivot_index=findpivot(numbers,front,rear)
    if (pivot_index==-1):
      return(numbers)
    else:
      k=partition(numbers,front,rear,numbers[pivot_index])
      quick_sort1(numbers,front,k-1)
      quick_sort1(numbers,k,rear)
      return(numbers)
  return(quick_sort1(numbers,0,len(numbers)-1))

#
## Test Harness
#
size = int(input("the size of numbers (>2) "))
numbers = [0]*size
for i in range(0,len(numbers)):
  random.seed(None,2)
  numbers[i]=random.randint(0,size)
start_time = time.time()
print("{0},\n processing time(quick sort): {1} sec\n".format(quick_sort(numbers[:],comp),time.time()-start_time))
start_time = time.time()
print("{0},\n processing time(insertion sort): {1} sec\n".format(insertion_sort(numbers[:],comp),time.time()-start_time))
start_time = time.time()
print("{0},\n processing time(bubble sort): {1} sec\n".format(bubble_sort(numbers[:],comp),time.time()-start_time))
print("oridin:\n{0}".format(numbers))
