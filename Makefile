# PAGES=_site/Gallery.html _site/Home.html _site/Projekte.html _site/README.html _site/Ueber_Uns.html _site/ogrrn/Help.html _site/verein/Verein.html
PAGES=_site/Gallery.html _site/index.html _site/Projekte.html _site/projects/HAERT.html _site/projects/The_Broken_Stringthesizer.html _site/projects/NERO_KROMA.html _site/projects/Studio.html _site/README.html _site/Ueber_Uns.html _site/ogrrn/Help.html _site/verein/Verein.html _site/verein/Statuten.html _site/Impressum.html

.PHONY: all images styles deploy

statuten: verein/Statuten.md
	touch verein/Statuten.md

_site/verein/Ottos_Plattenbau_Vereinstatuten.pdf: verein/Statuten.md
	pandoc -f markdown -t pdf verein/Statuten.md -o _site/verein/Ottos_Plattenbau_Vereinstatuten.pdf

_site/%.html.partial: %.md pandoc-settings.yml
		pandoc --from gfm --to html \
		--metadata-file=pandoc-settings.yml $< \
	-o $@

_site/%.html: _site/%.html.partial template.html
	( sed -n '1,/{{ content }}/p' template.html \
		; cat $< \
		; sed -n '/{{ content }}/,$$p' template.html \
		) | grep -v '{{ content }}' > $@

_site/styles:
	cp main.css _site/css/

_site/images: _site/images/logo.png
	cp images/*.png _site/images/

_site/favicon.ico: images/Logo_Otto_Productions.svg _site/images/bgpattern.png _site/favicon.ico _site/images/schallplatte.jpg _site/images/redguitar.png
	convert images/Logo_Otto_Productions.svg -resize 256x256 images/favicon.png
	convert images/favicon.png -resize x128 _site/favicon.ico
	convert images/bgpattern.png -resize 16x16 _site/images/bgpattern.png
	convert images/schallplatte.png -resize x500 _site/images/schallplatte.png
	convert images/redguitar.jpg -resize x800 _site/images/redguitar.jpg

_site/images/logo.png: images/Logo_Otto_Productions.svg
	convert images/Logo_Otto_Productions.png -resize x300 _site/images/logo.png
	convert images/Logo_Otto_Productions.png -resize x768 _site/images/logo_big.png

_site/projects:
	mkdir _site/projects

all: $(PAGES) _site/verein/Ottos_Plattenbau_Vereinstatuten.pdf _site/images _site/styles _site/projects
	echo Build Complete

deploy: all
	rsync _site -Cavz otto-deploy@codeanarchy.org:ottopage/

