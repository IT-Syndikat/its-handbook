TEX      = latexrun
TEXFLAGS =

SRC = $(wildcard content/*.tex)

.PHONY: all clean

all: handbook.pdf

clean:
	$(TEX) --clean-all
	$(RM) -r latex.out

handbook.pdf: handbook.tex $(SRC)
	$(TEX) $(TEXFLAGS) $<
