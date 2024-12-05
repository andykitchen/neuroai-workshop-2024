all: submission.pdf

submission.pdf: submission.tex
	latexmk -pdf submission.tex
