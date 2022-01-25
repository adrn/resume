LATEX       = xelatex
RM          = rm -rf

TMP_SUFFS   = aux bbl blg log dvi ps eps out synctex.gz fdb_latexmk fls
RM_TMP      = ${RM} $(foreach suff, ${TMP_SUFFS}, *.${suff})

all: build

build: 
	${LATEX} resume.tex

clean:
	${RM_TMP} resume.pdf
	rm *~
