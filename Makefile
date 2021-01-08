TARGET=conference-abstracts

clean:
	rm -f $(TARGET).aux $(TARGET).pdf $(TARGET).synctex.gz $(TARGET).fdb_latexmk $(TARGET).fls $(TARGET).log
	rm -f $(TARGET).html

html:
	pandoc -o $(TARGET).html --template=template.html abstracts.yaml