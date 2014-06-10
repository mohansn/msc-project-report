#!/bin/bash
OUTPUTS:=main.aux main.log main.pdf main.dvi main.toc main.out *.bbl main.blg
all:main.pdf
main.pdf:main.tex chapters/* *.bib
	pdflatex main.tex
	bibtex main.aux
	pdflatex main.tex
	pdflatex main.tex
# Thrice to ensure TOC and bibliography are updated

.PHONY:clean
clean:
	@rm -fvr $(OUTPUTS) *~
.PHONY:rebuild
rebuild:
	make clean all
