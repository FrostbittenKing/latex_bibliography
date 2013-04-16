INSTALL_DIR = ~/texmf/bibtex/bib/local
CLONE_DIR = $(shell pwd)/

install :	
	if  ! (test -d $(INSTALL_DIR));\
	then 		mkdir -p ~/texmf/bibtex/bib/local;\
			cp -r $(shell pwd)/* ~/texmf/bibtex/bib/local;\
			texhash ~/texmf;\
	fi
