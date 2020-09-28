# Several sorting algorithms
#Mode:: Ruby

require 'benchmark'

def swap (numbers,x,y)
  numbers[x],numbers[y]=numbers[y],numbers[x]
end
def insertion_sort(numbers)
  for i in 1..numbers.length-1
    j=i
    while (j!=0)&&(numbers[j] < numbers[j-1])
      swap(numbers,j,j-1)
      j=j-1
    end
  end
  return numbers  
end
def bubble_sort(numbers)
  for i in 0..numbers.length-2
    for j in 0..numbers.length-2-i
      if numbers[j] > numbers[j+1]
        swap(numbers,j,j+1)
      end
    end
  end
  return numbers  
end
def findpivot(numbers,front,rear)
  pivot=numbers[front]
  for indx in front..rear
    if numbers[indx]>pivot then
      return indx
    else
      if numbers[indx]<pivot then
        return front
      end
    end
  end
  return (-1)
end
def partition(numbers,front,rear,pivot)
  left=front
  right=rear
  while left<=right do
    swap(numbers,left,right)
    while (numbers[left]<pivot) do
      left=left+1
    end
    while (numbers[right]>=pivot) do
      right=right-1
    end
  end
  return(left)
end
def quick_sort1(numbers,front,rear)
  pivot_index=findpivot(numbers,front,rear)
  if (pivot_index==-1) then
    return numbers
  else
    pivot=numbers[pivot_index]
    k=partition(numbers,front,rear,pivot)
    quick_sort1(numbers,front,k-1)
    quick_sort1(numbers,k,rear)
    return numbers
  end
end
def quick_sort(numbers)
  return quick_sort1(numbers,0,numbers.length-1)
end

#
## Test Harness
#
puts "input the size of numbers (2<)"
size=gets.to_i
numbers = Array.new(size)
random = Random.new
for i in 0..numbers.length-1
  numbers[i]=random.rand(1..size)
end
p numbers
Benchmark.bm(7) do |tmp|
  tmp.report(" "){
#  p (numbers.dup).sort
    p quick_sort(numbers.dup)
  }
end
Benchmark.bm(7) do |tmp|
  tmp.report(" "){
    p insertion_sort(numbers.dup)
  }
end
Benchmark.bm(7) do |tmp|
  tmp.report(" "){
    p bubble_sort(numbers.dup)
  }
end
