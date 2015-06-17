#!/bin/sh
latex report1.tex
bibtex report1.bib
latex report1.tex
latex report1.tex
dvips -o report1.ps report1.dvi
ps2pdf report1.ps
#evince report1.pdf
