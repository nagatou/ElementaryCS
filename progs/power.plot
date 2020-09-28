#set xl "input size"
#set yl "f(n)"
set xrange [1:10]
#set yrange [0:6]
#set xtics 1,1,3
#set terminal pdfcairo enhanced color
#set output "power.pdf"
plot (0.5)*x, log10(x)/log10(2)
