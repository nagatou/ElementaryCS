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
  ### ?????
  return(numbers)  

def insertion_sort(numbers,cmp_fun):
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
print("{0},\n processing time(insertion sort): {1:10f} nsec\n".format(insertion_sort(numbers[:],comp),time.perf_counter_ns()-start_time))
start_time = time.perf_counter_ns()
print("{0},\n processing time(bubble sort): {1:10f} nsec\n".format(bubble_sort(numbers[:],comp),time.perf_counter_ns()-start_time))
print("origin:\n{0}".format(numbers))
