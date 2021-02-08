# find out where ruby is. can override this by providing environment or command
# line variable
RUBY ?= $(shell ./find-ruby.sh)

.PHONY: help delete
default: help

.PHONY: compile-command-t compile

compile-command-t:
	test ! -d bundle/Command-T || (cd bundle/Command-T/ruby/command-t/ && $(RUBY) extconf.rb && make)

compile: compile-command-t

.PHONY: edit-bundles edit

edit-bundles:
	vim bundles.vim

edit: edit-bundles

.PHONY: cleanup-bundles update-bundles update

cleanup-bundles:
	vim -c ':call dein#recache_runtimepath()' -c ':call map(dein#check_clean(), "delete(v:val, \"rf\")")' -c ':qall'

update-bundles: ${NEOBUNDLE}
	vim -c ':DeinUpdate'

update: cleanup-bundles update-bundles

.PHONY: help

help:
	@echo COMMON:
	@echo 'make help                        (default) print this message'
	@echo 'make edit                        edit bundles file'
	@echo 'make update                      update installed bundles'
