TARGET=conference-abstracts

clean:
	rm -f *.aux *.pdf *.synctex.gz *.fdb_latexmk *.fls *.log
	rm -f $(TARGET).html

html:
	pandoc --template=template.html -o $(TARGET).html abstracts.yaml

pdf:
	pandoc --template=template.tex --pdf-engine=xelatex -o $(TARGET).pdf abstracts.yaml
