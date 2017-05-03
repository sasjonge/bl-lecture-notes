FILENAME=main
INFILES= main.tex $(wildcard settings/*) $(wildcard chapters/*) bibtex/bibliography.bib

main.pdf: $(INFILES)
	pdflatex $(FILENAME)
	biber $(FILENAME)
	pdflatex $(FILENAME)
	pdflatex $(FILENAME)

very-clean: clean
	rm -f main.pdf

.PHONY: clean
clean:
	rm -f *~ *.aux *.out *.log *.gz *.toc *.bbl *.bcf *.blg *.tdo *.lof *.lot *.loe *.run.xml
