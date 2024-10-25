# find out where ruby is. can override this by providing environment or command
# line variable
RUBY ?= $(shell ./find-ruby.sh)

.PHONY: default
default: help


.PHONY: install-links
install-links:
	ln -sf ~/projs/dotvim/vimrc ~/.vimrc
	ln -sf ~/projs/dotvim ~/.vim

.PHONY: compile
compile: compile-command-t

.PHONY: compile-command-t
compile-command-t:
	test ! -d bundle/Command-T || (cd bundle/Command-T/ruby/command-t/ && $(RUBY) extconf.rb && make)


.PHONY: edit
edit:
	vim bundles.vim


.PHONY: update
update: update-bundles cleanup-bundles

.PHONY: cleanup-bundles
cleanup-bundles:
	vim -c ':call dein#recache_runtimepath()' -c ':call map(dein#check_clean(), "delete(v:val, \"rf\")")' -c ':qall'

.PHONY: update-bundles
update-bundles:
	vim -c ':DeinUpdate'



.PHONY: help
help:
	@echo 'make help                        (default) print this message'
	@echo 'make install-links               install symlinks'
	@echo 'make edit                        edit bundles file'
	@echo 'make update                      update installed bundles'
