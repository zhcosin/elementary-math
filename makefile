
MAIN=elementary-math-note

TEXMAINDOC=elementary-math-note

TEMPFILECLASS=\
*.log \
*.aux \
*.blg \
*.bbl \
*.lof \
*.toc \
*.lot \

LATEXCMD=xelatex

LATEXOPTIONS=-file-line-error   -interaction=nonstopmode

PDFVIEWER=evince

viewpdf : $(MAIN).pdf
	$(PDFVIEWER) $(MAIN).pdf &

$(MAIN).pdf :
	$(LATEXCMD) $(LATEXOPTIONS) $(TEXMAINDOC)
	$(LATEXCMD) $(LATEXOPTIONS) $(TEXMAINDOC)

clean :
	rm -f $(TEMPFILECLASS)
