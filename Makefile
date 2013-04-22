INSTALL_DIR = ~/texmf/bibtex/bib
TARGET_DIR = local
CLONE_DIR = $(shell pwd)/

install :	
	if  ! (test -d $(INSTALL_DIR));\
	then 		mkdir -p $(INSTALL_DIR);\
			cp -r $(shell pwd) ~/texmf/bibtex/bib;\
			mv $(INSTALL_DIR)/$(shell basename `pwd`) $(INSTALL_DIR)/$(TARGET_DIR);\
			texhash ~/texmf;\
	fi
