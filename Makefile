TEX = pdflatex
DIR = cache
TEXFLAG = -output-directory=$(DIR)
file = cv_cn

all: CV

CV: $(file).tex resume.cls
	@test -d $(DIR) || mkdir $(DIR)
	pdflatex $(TEXFLAG) $<

.PHONY: clean open

clean:
	rm -rf $(DIR)

open: CV
	open $(DIR)/$(file).pdf
