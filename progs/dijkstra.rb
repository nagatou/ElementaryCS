require 'benchmark'
load 'expressway.rb'

def min_el(dis,rest)
  tmp=rest.first
  rest.each do |ii|
    if(dis[tmp]>dis[ii])
      tmp=ii
    end
  end
  return(tmp)
end
def min(a,b)
  if(a<b)
    return(a)
  else
    return(b)
  end
end 
def dijkstra(start, destination, graph, p)
  d=Array.new(28)
  s=Array.new(28)
  rest=[0,1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20,21,22,23,24,25,26,27]
  for i in 0..27
    d[i]=graph[start][i]
  end
  s.push(start)
  rest.delete(start)
  n=rest.length
  i=0
  while i<n
    w=min_el(d,rest)
    s.push(w)
    rest.delete(w)
    rest.each do |v|
      if(d[w]+graph[w][v]<d[v])
        d[v]=d[w]+graph[w][v]
        p[v]=w
      end
    end
    i=i+1
  end
  return(p)
end

def prologue(hash)
  hash.each do |ic, indx|
    puts "#{ic}: #{indx}"
  end
end
def epilogue(path,ic,des,start)
#  path.each do |ii|
#    puts(ic.key(path[ii]))
#  end
  ii=des
  while ii!=start
    puts(ic.key(ii))
    ii=path[ii]
  end
  puts(ic.key(start))
end
### Test Harness
prologue(IC_JCT)
puts("Start ?")
start=gets().to_i
puts("Destination ?")
destination=gets().to_i

#
### Shotest Path 
#
Benchmark.bm(7) do |x|
  x.report(" "){
    path=dijkstra(start, destination, Cost, Array.new(28,start))
    epilogue(path,IC_JCT,destination,start)
  }
end

#puts(IC_JCT.key(start))
#puts(IC_JCT.key(destination))
#value_pair=IC_JCT.values_at(IC_JCT.key(start),IC_JCT.key(destination))
#puts(Cost[value_pair[0]][value_pair[1]])
