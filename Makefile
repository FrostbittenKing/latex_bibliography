INSTALL_DIR = ~/texmf/bibtex/bib/local

install :	
	if  ! (test -d $(INSTALL_DIR));\
	then 		mkdir -p ~/texmf/bibtex/bib/local;\
			cp -r $(shell pwd) ~/texmf/bibtex/bib;\
			texhash ~/texmf;\
	fi
