" update and install:
"   call dein#update()
" clean not used plugins:
"   :call dein#recache_runtimepath()
"   :call map(dein#check_clean(), "delete(v:val, 'rf')")

set runtimepath+=~/.vim/bundles/repos/github.com/Shougo/dein.vim

if dein#load_state('~/.vim/bundles')
  call dein#begin('~/.vim/bundles')

  " Let dein manage dein
  call dein#add('Shougo/dein.vim')
  call dein#add('wsdjeg/dein-ui.vim')

  " Better terminal support: focus events,
  " cursor shape, mouse and bracketed paste
  call dein#add( 'wincent/terminus' )

  " file tree
  call dein#add( 'scrooloose/nerdtree' )
  " file tree and tabs interaction
  call dein#add( 'jistr/vim-nerdtree-tabs' )
  " commenting
  call dein#add( 'scrooloose/nerdcommenter' )
  " fuzzy file open
  call dein#add( 'kien/ctrlp.vim' )
  " auto completion
  call dein#add( 'Valloric/YouCompleteMe', {'build': './install.py --go-completer'} )
  " tags list navigation
  call dein#add( 'vim-scripts/taglist.vim' )
  " yank history
  call dein#add( 'vim-scripts/YankRing.vim' )
  " git integration
  call dein#add( 'tpope/vim-fugitive' )
  " syntax checking on save
  call dein#add( 'scrooloose/syntastic' )
  " manipulation of surraunding parens, quotes, etc.
  call dein#add( 'tpope/vim-surround' )
  " vertical alignment tool
  call dein#add( 'tsaleh/vim-align' )
  " text object based on indent level (ai, ii)
  call dein#add( 'austintaylor/vim-indentobject' )
  " global search & replace
  call dein#add( 'vim-scripts/greplace.vim' )
  " better looking statusline
  call dein#add( 'vim-airline/vim-airline' )
  call dein#add( 'vim-airline/vim-airline-themes' )
  " plugin for visually displaying indent levels
  call dein#add( 'vim-scripts/Indent-Guides' )
  " end certain structures automatically, e.g. begin/end etc.
  "call dein#add( 'tpope/vim-endwise' )
  " automatic closing of quotes, parenthesis, brackets, etc.
  "call dein#add( 'Raimondi/delimitMate' )
  " dep of orgmode
  call dein#add( 'tpope/vim-speeddating' )
  " A clone of Emacs' Org-mode for Vim
  call dein#add( 'jceb/vim-orgmode' )
  " visual undo tree
  call dein#add( 'sjl/gundo.vim' )
  " switch segments of text with predefined replacements. e.g. '' -> ""
  call dein#add( 'AndrewRadev/switch.vim' )
  " async external commands with output in vim
  call dein#add( 'tpope/vim-dispatch' )
  " git diff in the gutter (sign column) and stages/reverts hunks
  call dein#add( 'airblade/vim-gitgutter' )
  " hi-speed html coding
  call dein#add( 'mattn/emmet-vim' )
  " editorconfig.org support
  call dein#add( 'editorconfig/editorconfig-vim' )
  " trace highlighting code
  call dein#add( 'gerw/vim-HiLinkTrace' )
  " detect indentation style and adjust settings
  call dein#add( 'aclindsa/detectindent' )
  " typescript syntax
  call dein#add( 'leafgarland/typescript-vim' )
  call dein#add( 'ervandew/supertab' )
  " snippets
  call dein#add( 'SirVer/ultisnips' )

  " perl
  call dein#add( 'vim-perl/vim-perl' )
  call dein#add( 'mileszs/ack.vim' )

  " color themes
  call dein#add( 'lifepillar/vim-solarized8' )
  call dein#add( 'dahu/vim-zebra' )

  " go
  "call dein#add( 'Blackrush/vim-gocode' )
  call dein#add( 'fatih/vim-go', { 'do': ':GoInstallBinaries' } )
  call dein#add( 'mdempsky/gocode', {'rtp': 'vim/'} )

  " syntax support
  call dein#add( 'vim-scripts/JSON.vim' )
  call dein#add( 'tpope/vim-markdown' )
  call dein#add( 'wavded/vim-stylus' )
  call dein#add( 'ekalinin/Dockerfile.vim' )
  call dein#add( 'groenewege/vim-less' )
  call dein#add( 'mustache/vim-mustache-handlebars' )
  call dein#add( 'joukevandermaas/vim-ember-hbs' )
  call dein#add( 'mtscout6/vim-cjsx' )
  call dein#add( 'posva/vim-vue' )
  call dein#add( 'hail2u/vim-css3-syntax' )
  call dein#add( 'cakebaker/scss-syntax.vim' )
  call dein#add( 'othree/es.next.syntax.vim' )
  call dein#add( 'othree/yajs.vim' )
  " simple log hi-lighter
  call dein#add( 'dzeban/vim-log-syntax' )
  " color marking
  call dein#add( 'inkarkat/vim-ingo-library' )
  call dein#add( 'inkarkat/vim-mark' )

  " Support and minor

  " Support for user-defined text objects
  call dein#add( 'kana/vim-textobj-user' )
  " replacement for the repeat mapping (.) to support plugins
  call dein#add( 'tpope/vim-repeat' )
  " hide .gitignore-d files from vim
  call dein#add( 'vitaly/vim-gitignore' )
  " repeat motion with <Space>
  call dein#add( 'scrooloose/vim-space' )
  " Github's gist support
  call dein#add( 'mattn/gist-vim' )
  " web APIs support
  call dein#add( 'mattn/webapi-vim' )
  " parens
  call dein#add( 'kien/rainbow_parentheses.vim' )

  call dein#add( 'Shougo/denite.nvim' )

  call dein#end()
  call dein#save_state()
endif
