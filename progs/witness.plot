set xl "input size"
set yl "f(n)"
set xrange [0:3]
set yrange [0:6]
set xtics 1,1,3
set terminal pdfcairo enhanced color
set output "witness.pdf"
plot 4*x**2, x**2+2*x+1, x**2 ,x
