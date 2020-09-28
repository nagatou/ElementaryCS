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
Benchmark.bm(7) do |tmp|
  tmp.report(" "){
#  (numbers.dup).sort
#  quick_sort(numbers.dup)
  }
end
Benchmark.bm(7) do |tmp|
  tmp.report(" "){
  insertion_sort(numbers.dup)
  }
end
Benchmark.bm(7) do |tmp|
  tmp.report(" "){
  bubble_sort(numbers.dup)
  }
end
