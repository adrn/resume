LATEX       = xelatex
RM          = rm -rf

TMP_SUFFS   = aux bbl blg log dvi ps eps out synctex.gz fdb_latexmk fls
RM_TMP      = ${RM} $(foreach suff, ${TMP_SUFFS}, *.${suff})

all: build

build: 
	${LATEX} PriceWhelan-resume.tex

clean:
	${RM_TMP} PriceWhelan-resume.pdf
	rm *~
