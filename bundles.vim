set nocompatible
filetype off

if has('vim_starting')
  set runtimepath+=~/.vim/bundle/neobundle.vim/
endif

call neobundle#begin(expand('~/.vim/bundle/'))

" plugin management
NeoBundleFetch 'Shougo/neobundle.vim'

" file tree
NeoBundle 'scrooloose/nerdtree'
" file tree and tabs interaction
NeoBundle 'jistr/vim-nerdtree-tabs'
" commenting
NeoBundle 'scrooloose/nerdcommenter'
" fuzzy file open
NeoBundle 'kien/ctrlp.vim'
" popup completion menu
NeoBundle 'AutoComplPop'
" tags list navigation
NeoBundle 'taglist.vim'
" yank history
NeoBundle 'YankRing.vim'
" git integration
NeoBundle 'tpope/vim-fugitive'
" syntax checking on save
NeoBundle 'scrooloose/syntastic'
" manipulation of surraunding parens, quotes, etc.
NeoBundle 'tpope/vim-surround'
" vertical alignment tool
NeoBundle 'tsaleh/vim-align'
" text object based on indent level (ai, ii)
NeoBundle 'austintaylor/vim-indentobject'
" global search & replace
NeoBundle 'greplace.vim'
" better looking statusline
NeoBundle 'vim-airline/vim-airline'
NeoBundle 'vim-airline/vim-airline-themes'
" plugin for visually displaying indent levels
NeoBundle 'Indent-Guides'
" end certain structures automatically, e.g. begin/end etc.
"NeoBundle 'tpope/vim-endwise'
" automatic closing of quotes, parenthesis, brackets, etc.
"NeoBundle 'Raimondi/delimitMate'
" A clone of Emacs' Org-mode for Vim
NeoBundle 'hsitz/VimOrganizer'
" visual undo tree
NeoBundle 'sjl/gundo.vim'
" switch segments of text with predefined replacements. e.g. '' -> ""
NeoBundle 'AndrewRadev/switch.vim'
" async external commands with output in vim
NeoBundle 'tpope/vim-dispatch'
" git diff in the gutter (sign column) and stages/reverts hunks
NeoBundle 'airblade/vim-gitgutter'
" hi-speed html coding
NeoBundle 'mattn/emmet-vim'
" editorconfig.org support
NeoBundle 'editorconfig/editorconfig-vim'
" tmux + vim = love
"NeoBundle 'christoomey/vim-tmux-navigator'
" trace highlighting code 
NeoBundle 'gerw/vim-HiLinkTrace'
" detect indentation style and adjust settings
NeoBundle 'aclindsa/detectindent'
" typescript syntax
NeoBundle 'leafgarland/typescript-vim'

" perl
NeoBundle 'vim-perl/vim-perl'
NeoBundle 'mileszs/ack.vim'

" Ruby/Rails

" rails support
"NeoBundle 'tpope/vim-rails'
" bundler integration (e.g. :Bopen)
"NeoBundle 'tpope/vim-bundler'
" rake integration
"NeoBundle 'tpope/vim-rake'
" A custom text object for selecting ruby blocks (ar/ir)
"NeoBundle 'nelstrom/vim-textobj-rubyblock'
" ruby refactoring
"NeoBundle 'ecomba/vim-ruby-refactoring'
" apidock.com docs integration
"NeoBundle 'apidock.vim'
" toggle ruby blocks style
"NeoBundle 'vim-scripts/blockle.vim'
" lightweight Rspec runner for Vim
NeoBundle 'josemarluedke/vim-rspec'
" i18n extraction plugin
"NeoBundle 'stefanoverna/vim-i18n'

" color themes
NeoBundle 'altercation/vim-colors-solarized'
"NeoBundle 'tpope/vim-vividchalk'
"NeoBundle 'chriskempson/tomorrow-theme', {'rtp': 'vim/'}

" syntax support
"NeoBundle 'vim-ruby/vim-ruby'
"NeoBundle 'tsaleh/vim-tmux'
"NeoBundle 'Puppet-Syntax-Highlighting'
NeoBundle 'JSON.vim'
"NeoBundle 'tpope/vim-cucumber'
"NeoBundle 'tpope/vim-haml'
NeoBundle 'tpope/vim-markdown'
"NeoBundle 'kchmck/vim-coffee-script'
"NeoBundle 'vitaly/vim-syntastic-coffee'
"NeoBundle 'vim-scripts/jade.vim'
NeoBundle 'wavded/vim-stylus'
"NeoBundle 'slim-template/vim-slim'
"NeoBundle 'elixir-lang/vim-elixir'
"NeoBundle 'Blackrush/vim-gocode'
NeoBundle 'ekalinin/Dockerfile.vim'
NeoBundle 'groenewege/vim-less'
NeoBundle 'mustache/vim-mustache-handlebars'
NeoBundle 'mtscout6/vim-cjsx'
"NeoBundle 'vitaly/vim-literate-coffeescript'
"NeoBundle 'rust-lang/rust', {'rtp': 'src/etc/vim/'}
NeoBundle 'pangloss/vim-javascript'
NeoBundle 'mxw/vim-jsx'

" clojure
"NeoBundle 'VimClojure'
"NeoBundle 'guns/vim-clojure-static'
NeoBundle 'tpope/vim-fireplace'
NeoBundle 'kien/rainbow_parentheses.vim'

" Support and minor

" Support for user-defined text objects
NeoBundle 'kana/vim-textobj-user'
" replacement for the repeat mapping (.) to support plugins
NeoBundle 'tpope/vim-repeat'
" hide .gitignore-d files from vim
NeoBundle 'vitaly/vim-gitignore'
" repeat motion with <Space>
NeoBundle 'scrooloose/vim-space'
" Github's gist support
NeoBundle 'mattn/gist-vim'
" web APIs support
NeoBundle 'mattn/webapi-vim'

NeoBundle 'Shougo/denite.nvim'

if filereadable(expand("~/.vimrc.bundles"))
  source ~/.vimrc.bundles
endif

call neobundle#end()

filetype plugin indent on

