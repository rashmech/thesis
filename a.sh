#!/bin/bash
latex report1.tex
dvips -o report1_version1.ps report1
ps2pdf report1_version1.ps
#latex report1.tex 
#dvips report1.ps
#ps2pdf report1.ps
evince report1_version1.pdf &
