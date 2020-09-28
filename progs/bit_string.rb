# Bit string representation for set of integers.
#E.g. U={0,1,2,3,4,5,6,7,8,9,10}
#Mode: ruby

### Declaration of sample sets
Size=11
u=[true,true,true,true,true,true,true,true,true,true,true]
even=[true,false,true,false,true,false,true,false,true,false,true]
odd=[false,true,false,true,false,true,false,true,false,true,false]
a=[false,true,false,true,false,true,false,false,false,false,false]
b=[false,true,true,true,false,true,false,false,false,false,false]

### Set operations
def union(seta,setb,result)
  i=0
  while i<=Size
    result[i]=seta[i]||setb[i]
    i=i+1
  end
end
def intersection(seta,setb,result)
  i=0
  while i<=Size
    result[i]=seta[i]&&setb[i]
    i=i+1
  end
end
def complement(seta,result)
  i=0
  while i<=Size
    result[i]=!seta[i]
    i=i+1
  end
end
def difference(seta,setb,result)
  i=0
  tmp=Array.new()
  while i<=Size
    complement(setb,tmp)
    intersection(seta,tmp,result)
    i=i+1
  end
end

### Test Harness
result=Array.new()
union(a,b,result)
p a
p b
p result
intersection(a,b,result)
p a
p b
p result
complement(a,result)
p a
p result
difference(a,b,result)
p a
p b
p result
