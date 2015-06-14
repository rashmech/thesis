reset
set title "pip-channel-hop"
 set xlabel "WiFi inter-packet gap(milli-seconds)"
 set ylabel "Throughput (Kbps)"
 set yrange [0.001:70]
 set ytics (0,10,20,30,40,50,60)
 set mytics 5
 set style data histogram
 set style histogram cluster gap 4
 set style fill solid 1.0 border lt -1
 set boxwidth .9
 set grid xtics ytics 
 set key at 5,60
 set autoscale x
plot 'data.dat'  every ::1 using  2:xticlabels(1) title 'Without hopping', '' every ::1 using 3:xticlabels(1) title 'With hopping', '' every ::1 using 4 title 'without interference' with linespoints lt 0 lc 3 lw 3 pt 1
