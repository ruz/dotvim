update: submodules vundles install-command-t

install: cleanup update

cleanup:
	rm -rf bundle

submodules:
	git submodule update --init

vundles:
	vim -u ./vundles.vim +BundleInstall

install-command-t:
	cd bundle/command-t/ruby/command-t/ && ruby extconf.rb && make
