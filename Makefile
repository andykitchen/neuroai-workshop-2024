all: submission.pdf

dist: neuroai-workshop-2024-arxiv.tar.gz

submission.pdf: submission.tex
	latexmk -pdf $<

neuroai-workshop-2024-arxiv.tar.gz: submission.tex neurips_2024.sty bibliography.bib submission.bbl
	tar -czf $@ $^

clean:
	rm -f submission.pdf neuroai-workshop-2024-arxiv.tar.gz


.PHONY: all dist
