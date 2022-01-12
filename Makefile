# PAGES=_site/Gallery.html _site/Home.html _site/Projekte.html _site/README.html _site/Ueber_Uns.html _site/ogrrn/Help.html _site/verein/Verein.html
PAGES=_site/Gallery.html _site/Home.html _site/Projekte.html _site/README.html _site/Ueber_Uns.html _site/ogrrn/Help.html _site/verein/Verein.html

statuten: verein/Verein.md
	touch verein/Verein.md

verein/Ottos_Plattenbau_Vereinstatuten.pdf: verein/Verein.md
	pandoc --metadat-f markdown -t pdf Verein.md -o Ottos_Plattenbau_Vereinstatuten.pdf

_site/%.html: %.md
	pandoc --from markdown --to latex $< \
		--metadata-file=pandoc-settings.yml \
	-o $@

all: $(PAGES) verein/Ottos_Plattenbau_Vereinstatuten.pdf
	jekyll build
