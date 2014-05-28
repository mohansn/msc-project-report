#!/bin/bash
OUTPUTS:=main.aux main.log main.pdf main.toc main.out
all:main.pdf
main.pdf:main.tex chapters/* images/*
	pdflatex main.tex
	pdflatex main.tex
	pdflatex main.tex
# Thrice to ensure TOC and bibliography are updated

.PHONY:clean
clean:
	@rm -fvr $(OUTPUTS) *~
.PHONY:rebuild
rebuild:
	make clean all
