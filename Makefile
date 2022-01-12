# PAGES=_site/Gallery.html _site/Home.html _site/Projekte.html _site/README.html _site/Ueber_Uns.html _site/ogrrn/Help.html _site/verein/Verein.html
PAGES=_site/Gallery.html _site/index.html _site/Projekte.html _site/README.html _site/Ueber_Uns.html _site/ogrrn/Help.html _site/verein/Verein.html

.PHONY: all images styles deploy

statuten: verein/Verein.md
	touch verein/Verein.md

verein/Ottos_Plattenbau_Vereinstatuten.pdf: verein/Verein.md
	pandoc -f markdown -t pdf verein/Verein.md -o Ottos_Plattenbau_Vereinstatuten.pdf

_site/%.html.partial: %.md
		pandoc --from gfm --to html \
		--metadata-file=pandoc-settings.yml $< \
	-o $@

_site/%.html: _site/%.html.partial
	( sed -n '1,/{{ content }}/p' template.html \
		; cat $< \
		; sed -n '/{{ content }}/,$$p' template.html \
		) | grep -v '{{ content }}' > $@

_site/styles:
	cp main.css _site/css/

_site/images: _site/images/logo.png _site/favicon.ico
	cp images/*.png _site/images/

_site/favicon.ico: images/Logo_Otto_Productions.svg
	convert images/Logo_Otto_Productions.svg -resize 256x256 images/favicon.png
	convert images/favicon.png -resize x128 _site/favicon.ico

_site/images/logo.png: images/Logo_Otto_Productions.svg
	convert images/Logo_Otto_Productions.svg -resize x300 _site/images/logo.png

all: $(PAGES) verein/Ottos_Plattenbau_Vereinstatuten.pdf _site/images _site/styles
	echo Build Complete

deploy: all
	rsync _site -Cavz otto-deploy@codeanarchy.org:ottopage/

