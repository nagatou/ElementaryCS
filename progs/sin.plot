set yr[-1.1:1.1]
set xr[0:2*pi]
plot sin(x),\
 x,\
 x-((x**3)/(3!)),\
 x-((x**3)/(3!))+((x**5)/(5!)),\
 x-((x**3)/(3!))+((x**5)/(5!))-((x**7)/(7!)),\
 x-((x**3)/(3!))+((x**5)/(5!))-((x**7)/(7!))+((x**9)/(9!)),\
 x-((x**3)/(3!))+((x**5)/(5!))-((x**7)/(7!))+((x**9)/(9!))-((x**11)/(11!)),\
 x-((x**3)/(3!))+((x**5)/(5!))-((x**7)/(7!))+((x**9)/(9!))-((x**11)/(11!))+((x**13)/(13!)),\
 x-((x**3)/(3!))+((x**5)/(5!))-((x**7)/(7!))+((x**9)/(9!))-((x**11)/(11!))+((x**13)/(13!))-((x**15)/(15!))
