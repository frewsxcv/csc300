#!/bin/sh

NAME='paper'
OUT='dist/'

# Commands
LATEX='latex'
BIBTEX='bibtex'
DVIPDF='dvipdfm'

$LATEX $NAME.tex
$BIBTEX $NAME
$LATEX $NAME.tex
$DVIPDF $NAME.dvi

mkdir $OUT
mv $NAME.pdf $OUT
mv $NAME.dvi $OUT
rm $NAME.toc $NAME.blg $NAME.log $NAME.bbl $NAME.aux
