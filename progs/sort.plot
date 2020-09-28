
set xl "data size"
set yl "CPU time"
set xrange [100:1600]
set yrange [0:0.38]
plot 'sort.dat' using 1:2 w lp title "quick sort"

f(x)=a*x*x+b*x+c
a=0.5
b=0.5
c=0.5
fit f(x) 'sort.dat' using 1:3 via a,b,c
replot f(x), 'sort.dat' using 1:3 w lp title "insertion sort"

set terminal pdfcairo enhanced color
set output "sort.pdf"
g(x)=e*x*x+f*x+g
e=1
f=1
g=1
fit g(x) 'sort.dat' using 1:4 via e,f,g
replot g(x), 'sort.dat' using 1:4 w lp title "bubble sort"
