#!/bin/bash
OUTPUTS:=main.aux main.log main.pdf
all:main.pdf
main.pdf:main.tex chapters/*
	pdflatex main.tex
.PHONY:clean
clean:
	@rm -fvr $(OUTPUTS) *~
