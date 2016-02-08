set nocompatible
filetype off
set rtp+=~/.vim/bundle/vundle/
call vundle#rc()

" plugin management
Bundle 'gmarik/vundle'

" file tree
Bundle 'scrooloose/nerdtree'
" file tree and tabs interaction
Bundle 'jistr/vim-nerdtree-tabs'
" commenting
Bundle 'scrooloose/nerdcommenter'
" fuzzy file open
Bundle 'kien/ctrlp.vim'
" popup completion menu
Bundle 'AutoComplPop'
" tags list navigation
Bundle 'taglist.vim'
" yank history
Bundle 'YankRing.vim'
" git integration
Bundle 'tpope/vim-fugitive'
" syntax checking on save
Bundle 'scrooloose/syntastic'
" TextMate-style snippets
Bundle 'msanders/snipmate.vim'
" manipulation of surraunding parens, quotes, etc.
Bundle 'tpope/vim-surround'
" vertical alignment tool
Bundle 'tsaleh/vim-align'
" 'ack' searching integration
Bundle 'mileszs/ack.vim'
" text object based on indent level (ai, ii)
Bundle 'austintaylor/vim-indentobject'
" global search & replace
Bundle 'greplace.vim'
" better looking statusline
Bundle 'astrails/vim-powerline'
" plugin for resolving three-way merge conflicts
Bundle 'sjl/threesome.vim'
" plugin for visually displaying indent levels
" end certain structures automatically, e.g. begin/end etc.
"Bundle 'tpope/vim-endwise'
" automatic closing of quotes, parenthesis, brackets, etc.
"Bundle 'Raimondi/delimitMate'
" calendar, duh!
Bundle 'calendar.vim--Matsumoto'
" A Narrow Region Plugin (similar to Emacs)
Bundle 'chrisbra/NrrwRgn'
" url based hyperlinks for text files
Bundle 'utl.vim'
" A clone of Emacs' Org-mode for Vim
Bundle 'hsitz/VimOrganizer'
" visual undo tree
Bundle 'sjl/gundo.vim'
" switch segments of text with predefined replacements. e.g. '' -> ""
Bundle 'AndrewRadev/switch.vim'
" async external commands with output in vim
Bundle 'tpope/vim-dispatch'
" trace highlighting code 
Bundle 'gerw/vim-HiLinkTrace'
" detect indentation style and adjust settings
Bundle 'aclindsa/detectindent'

" perl
Bundle 'petdance/vim-perl'

" Ruby/Rails

" rails support
"Bundle 'tpope/vim-rake'
" bundler integration (e.g. :Bopen)
"Bundle 'ecomba/vim-ruby-refactoring'
" rake integration
" A custom text object for selecting ruby blocks (ar/ir)
" ruby refactoring
" apidock.com docs integration
" toggle ruby blocks style
" Bundle 'vim-scripts/blockle.vim'

" color themes
Bundle 'altercation/vim-colors-solarized'
Bundle 'tpope/vim-vividchalk'
Bundle 'chriskempson/tomorrow-theme', {'rtp': 'vim/'}

" syntax support

"Bundle 'vim-ruby/vim-ruby'
Bundle 'tsaleh/vim-tmux'
Bundle 'Puppet-Syntax-Highlighting'
Bundle 'JSON.vim'
Bundle 'tpope/vim-cucumber'
Bundle 'tpope/vim-haml'
Bundle 'tpope/vim-markdown'
Bundle 'kchmck/vim-coffee-script'
Bundle 'vitaly/vim-syntastic-coffee'
Bundle 'vim-scripts/jade.vim'
Bundle 'wavded/vim-stylus'
Bundle 'VimClojure'
Bundle 'slim-template/vim-slim'
Bundle 'elixir-lang/vim-elixir'

" Support and minor

" Support for user-defined text objects
Bundle 'kana/vim-textobj-user'
" replacement for the repeat mapping (.) to support plugins
Bundle 'tpope/vim-repeat'
" hide .gitignore-d files from vim
Bundle 'vitaly/vim-gitignore'
" repeat motion with <Space>
Bundle 'scrooloose/vim-space'
" Github's gist support
Bundle 'mattn/gist-vim'
" web APIs support
Bundle 'mattn/webapi-vim'

"Bundle 'ShowMarks'
"Bundle 'tpope/vim-unimpaired'
"Bundle 'reinh/vim-makegreen'

Bundle 'Shougo/vimproc'
Bundle 'Shougo/unite.vim'
Bundle 'Shougo/unite-outline'
Bundle 'ujihisa/unite-colorscheme'
