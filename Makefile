FILENAME=main

pdf:
	make clean
	pdflatex $(FILENAME)
	bibtex $(FILENAME)
	pdflatex $(FILENAME)
	make clean

clean:
	rm -rf *~ *.aux *.out *.log *.gz *.toc *.bbl *.blg *.tdo *.lof *.lot
