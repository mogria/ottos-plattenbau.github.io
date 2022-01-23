
.PHONY: all images styles deploy

statuten: verein/Statuten.md
	touch verein/Statuten.md

content/verein/Ottos_Plattenbau_Vereinstatuten.pdf: content/verein/Statuten.md
	pandoc -f markdown -t pdf content/verein/Statuten.md -o content/verein/Ottos_Plattenbau_Vereinstatuten.pdf

all: content/verein/Ottos_Plattenbau_Vereinstatuten.pdf
	zola build

deploy: all
	zola build
	scp -r public/ otto-deploy@codeanarchy.org:ottopage

