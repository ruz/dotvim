" content of this file is loaded BEFORE all the plugins
if &compatible
  set nocompatible
endif
filetype off

" plugins list
source ~/.vim/bundles.vim
" general global configuration
source ~/.vim/global.vim
" configuration for plugins that needs to be set BEFORE plugins are loaded
source ~/.vim/plugins.vim
" local BEFORE configs
source ~/.vim/before.vim

" after.vim is loaded from ./after/plugin/after.vim
" which should place it AFTER all the other plugins in the loading order
" bindings.vim and local.vim are loaded from after.vim
