# PAGES=_site/Gallery.html _site/Home.html _site/Projekte.html _site/README.html _site/Ueber_Uns.html _site/ogrrn/Help.html _site/verein/Verein.html
PAGES=_site/Gallery.html _site/Home.html _site/Projekte.html _site/README.html _site/Ueber_Uns.html _site/ogrrn/Help.html _site/verein/Verein.html

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

all: $(PAGES) verein/Ottos_Plattenbau_Vereinstatuten.pdf
	jekyll build

deploy: all
	rsync _site -Cavz otto-deploy@codeanarchy.org:ottopage/_site

