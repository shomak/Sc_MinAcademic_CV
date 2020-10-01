PAPER = Balls

all: $(PAPER).pdf

$(PAPER).pdf: $(PAPER).tex
	latexmk -pvc -pvctimeout -pvctimeoutmins=1 -pdf $(PAPER).tex
	latexmk -c -bibtex
