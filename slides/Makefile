PDFS=saw-tutorial.pdf
TEXS=saw-tutorial.tex

PANDOC_OPTS=-s -t beamer --pdf-engine=xelatex \
            -f markdown+grid_tables+raw_tex \
            -H header.tex \
            -V theme:Galois # -V section-titles:false # --listings
all: ${PDFS}

tex: ${TEXS}

%.pdf: %.md
	pandoc ${PANDOC_OPTS} -o $@ $<

%.tex: %.md
	pandoc ${PANDOC_OPTS} -o $@ $<

clean:
	rm -f ${PDFS} ${TEXS}
