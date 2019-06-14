include config.mk

###########

# you may override any or all of these in config.mk

## Pandoc executable and filters
PANDOC ?= /usr/local/bin/pandoc
CROSSREF ?= /usr/local/bin/pandoc-crossref
CITEPROC ?= /usr/local/bin/pandoc-citeproc
METAVARS ?= filters/metavars.py

## paths to basic commands
OPEN ?= /usr/bin/open
CP ?= /bin/cp
MKDIR ?= /bin/mkdir
DELETE ?= /bin/rm -f

## project metadata and source files
BASENAME ?= test-editor-success-story
SRC ?= contents
CONFIG ?= config
BIB ?= bib/test-editor-success-story.bib
TEMPLATE ?= templates/pandoc-reference.docx
HTMLSTYLE ?= templates/htmlstyle.css

## output directories
PRINTOUT ?= out/print
WEBOUT ?= out/web
PLAINOUT ?= out/plain
TEXOUT ?= out/latex
###########


MD_FILES := $(wildcard $(SRC)/[0-9][0-9]*_*.md)
FIGURES := $(wildcard figures/*.png)


default: clean docx openpdf

run: clean docx openpdf

plain: $(PLAINOUT)/$(BASENAME).txt

docx: $(PRINTOUT)/$(BASENAME).docx

pdf: $(PRINTOUT)/$(BASENAME).pdf
	
html: $(WEBOUT)/$(BASENAME).html

tex: $(TEXOUT)/$(BASENAME).tex

all: docx pdf html


$(PLAINOUT)/$(BASENAME).txt: $(BIB) $(MD_FILES) $(FIGURES)
	$(MKDIR) -p $(PLAINOUT)
	$(PANDOC) --number-sections -F $(METAVARS) -F $(CROSSREF) -F $(CITEPROC) -f markdown+smart -so $@ -t plain --bibliography $(BIB) $(MD_FILES)

$(PRINTOUT)/$(BASENAME).docx: $(BIB) $(MD_FILES) $(FIGURES)
	$(MKDIR) -p $(PRINTOUT)
	$(PANDOC) --number-sections -F $(METAVARS) -F $(CROSSREF) -F $(CITEPROC) -f markdown+smart -so $@ --reference-doc $(TEMPLATE) --bibliography $(BIB) $(MD_FILES)

$(PRINTOUT)/$(BASENAME).pdf: $(BIB) $(MD_FILES) $(FIGURES)
	$(MKDIR) -p $(PRINTOUT)
	$(PANDOC) -H $(CONFIG)/header.tex --number-sections -F $(METAVARS) -F $(CROSSREF) -F $(CITEPROC) -f markdown+smart -so $@ --bibliography $(BIB) $(MD_FILES)
	
$(TEXOUT)/$(BASENAME).tex: $(BIB) $(MD_FILES) $(FIGURES)
	$(MKDIR) -p $(TEXOUT)
	$(PANDOC) -H $(CONFIG)/header.tex --number-sections -F $(METAVARS) -F $(CROSSREF) -F $(CITEPROC) -f markdown+smart -so $@ --bibliography $(BIB) $(MD_FILES)

$(WEBOUT)/$(BASENAME).html: $(BIB) $(MD_FILES) $(FIGURES) $(HTMLSTYLE)
	$(MKDIR) -p $(WEBOUT)
	$(PANDOC) --section-divs --toc -H $(HTMLSTYLE) \
	--self-contained -t html5 --number-sections -F $(METAVARS) -F $(CROSSREF) -F $(CITEPROC) -f markdown+smart -so $@ --bibliography $(BIB) $(MD_FILES)


.PHONY: clean open openpdf opendocx openhtml

clean:
	$(DELETE) $(PRINTOUT)/$(BASENAME).docx $(PRINTOUT)/$(BASENAME).pdf $(WEBOUT)/$(BASENAME).html

open: openpdf

openpdf: pdf
	$(OPEN) $(PRINTOUT)/$(BASENAME).pdf

opendocx: docx
	$(OPEN) $(PRINTOUT)/$(BASENAME).docx
	
openhtml: html
	$(OPEN) $(WEBOUT)/$(BASENAME).html
