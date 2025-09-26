#!/bin/sh 

echo "starting building latex"
set -e
set -x

/Library/TeX/texbin/lualatex -halt-on-error -jobname=cv cv.tex

echo "finished building latex"
