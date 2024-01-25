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
  ### ?????
  return(numbers)

#
## Test Harness
#
size = int(input("the size of numbers (>2) "))
numbers = [0]*size
for i in range(0,len(numbers)):
  random.seed(None,2)
  numbers[i]=random.randint(0,size)
start_time = time.perf_counter_ns()
print("{0},\n processing time(quick sort): {1:10f} nsec\n".format(quick_sort(numbers[:],comp),time.perf_counter_ns()-start_time))
start_time = time.perf_counter_ns()
print("{0},\n processing time(insertion sort): {1:10f} nsec\n".format(insertion_sort(numbers[:],comp),time.perf_counter_ns()-start_time))
start_time = time.perf_counter_ns()
print("{0},\n processing time(bubble sort): {1:10f} nsec\n".format(bubble_sort(numbers[:],comp),time.perf_counter_ns()-start_time))
print("origin:\n{0}".format(numbers))
