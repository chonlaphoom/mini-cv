#!/bin/sh 

echo "starting building latex"
set -e
set -x

/Library/TeX/texbin/pdflatex -halt-on-error -interaction=mode -jobname=chonlaphom-2025 cv.tex

echo "finished building latex"
