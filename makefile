INPUT = main

# Perform the pdflatex build process, including bibtex
all:
	pdflatex $(INPUT).tex
	bibtex $(INPUT)
	pdflatex "\def\only{1} \input{$(INPUT).tex}"
	pdflatex "\def\only{1} \input{$(INPUT).tex}"
	make move

# Cleanup post-build, move to external folder
move:
	mkdir -p build/
	mv -f *.aux *.log *.bbl *.blg build/

# Remove build folder
clean:
	rm -rf build

