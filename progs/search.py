# Binary Search Algorithm
#Mode:: Python3

import os, time, random

def swap (x,y):
  return(y,x)
def comp (x,y):
  if (x < y):
    return(True)
  else:
    return(False)

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

def bin_search(numbers,target):
  def bin_search1(numbers,front,rear,target):
    if (front>=rear):
      if (numbers[front]==target):
        return(front)
      else:
        return(None)
    mid=((front+rear))//2
    if (numbers[mid]<target):
      return(bin_search1(numbers,mid+1,rear,target))
    else:
      return(bin_search1(numbers,front,mid,target))
  return(bin_search1(numbers,0,(len(numbers)-1),target))

#
## Test Harness
#
size = int(input("the size of numbers (>2) "))
numbers = [0]*size
for i in range(0,len(numbers)):
  random.seed(None,1)
  numbers[i]=random.randint(0,size)
print("origin:\n{0}".format(quick_sort(numbers[:],comp)))
target = int(input("target? "))
print(bin_search(quick_sort(numbers[:],comp),target))
