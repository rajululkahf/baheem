C=pdflatex
NAME=bahim

.PHONY: all
all: $(NAME).pdf

$(NAME).pdf: $(NAME).tex
	$(C) $(NAME).tex
	$(C) $(NAME).tex
	$(C) $(NAME).tex

.PHONY: clean
clean:
	rm -f *.log *.aux *.toc
