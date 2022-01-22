
.PHONY: all images styles deploy

statuten: verein/Statuten.md
	touch verein/Statuten.md

content/verein/Ottos_Plattenbau_Vereinstatuten.pdf: content/verein/Statuten.md
	pandoc -f markdown -t pdf content/verein/Statuten.md -o content/verein/Ottos_Plattenbau_Vereinstatuten.pdf

all: content/verein/Ottos_Plattenbau_Vereinstatuten.pdf
	zola build
	echo Build Complete

deploy: all
	rsync public/* -Cavz otto-deploy@codeanarchy.org:ottopage/_site

