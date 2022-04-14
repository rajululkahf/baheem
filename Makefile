TEX=pdflatex
BIB=bibtex
NAME=baheem

.PHONY: all
all: $(NAME).pdf

$(NAME).pdf: $(NAME).tex references.bib
	$(TEX) $(NAME)
	$(BIB) $(NAME)
	$(TEX) $(NAME)
	$(TEX) $(NAME)

.PHONY: clean
clean:
	rm -f *.log *.aux *.toc *.bbl *.blg *.acn *.glo *.ist *.out
