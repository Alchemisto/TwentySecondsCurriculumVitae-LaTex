# Makefile twentyseconds cv
# Build requirements:
#
# LaTex packages required:	 	
#	- ClearSans, fontenc
#	- tikz
#	- xcolor
#	- textpos
#	- ragged2e
#	- etoolbox
#	- ifmtarg
#	- ifthen
#	- pgffor
#	- marvosym
#	- parskip
#	- fontawesome
#
#	As an alternative, install the following pacakge "texlive-full" 
#	package (very large, but includes a ton of LaTex packages) by typing:
#		sudo apt-get update
#		sudo apt-get -y install texlive-full

files_tex = $(wildcard *.tex)
cv_name = "Twenty-Seconds_cv"
all: pdf
	@echo "Done!"
pdf: *.tex
	@echo "Building.... $^"
	@$(foreach var,$(files_tex),pdflatex -interaction=nonstopmode -jobname=$(cv_name) '$(var)' 1>/dev/null;)
clean:
	@rm -f *.aux *.dvi *.log *.out *.pdf *.bak
	@echo "Clean done.";
