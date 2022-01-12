
statuten: verein/Verein.md
	touch verein/Verein.md

verein/Ottos_Plattenbau_Vereinstatuten.pdf: verein/Verein.md
	pandoc -f markdown -t pdf Verein.md -o Ottos_Plattenbau_Vereinstatuten.pdf

all: verein/Ottos_Plattenbau_Vereinstatuten.pdf
	jekyll build
