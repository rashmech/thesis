 reset
set terminal postscript eps color
set title "Benchmark results"
 set xlabel "SPEC Benchmarks"
 set ylabel "Average size of data set"
set xrange [1:6]
set yrange [0:120]
set ytics(0,10,20,30,40,50,60,70,80,90,100,110,120)
set style data histogram
set style histogram cluster gap 4
set style fill solid 1.0 border lt -1
set boxwidth .9
set grid xtics ytics 
set autoscale x

set output "graph_new.eps"
plot './data.dat'  every ::1 using  2:xticlabels(1) title 'Without Liveness', '' every ::1 using 3:xticlabels(1) title 'With Liveness'
