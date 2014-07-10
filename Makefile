TEX2DVI=platex
DVI2PDF=dvipdfmx

EDITOR=vim
VIEWER=mupdf
TARGET=sample

view:	$(TARGET).pdf
	$(VIEWER) $<

edit:
	$(EDITOR) $(TARGET).tex

clean:	
	@rm $(TARGET).pdf
	@rm $(TARGET).dvi
	@rm $(TARGET).log
	@rm $(TARGET).aux

$(TARGET).pdf:	$(TARGET).dvi
	$(DVI2PDF) -f ipa.map $<
$(TARGET).dvi:	$(TARGET).tex
	$(TEX2DVI) $<
	$(TEX2DVI) $<
