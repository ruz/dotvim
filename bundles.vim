set nocompatible
filetype off

if has('vim_starting')
  set runtimepath+=~/.vim/bundle/neobundle.vim/
endif

call neobundle#begin(expand('~/.vim/bundle/'))

" plugin management
NeoBundleFetch 'Shougo/neobundle.vim'

" Better terminal support: focus events,
" cursor shape, mouse and bracketed paste
NeoBundle 'wincent/terminus'

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
" trace highlighting code 
NeoBundle 'gerw/vim-HiLinkTrace'
" detect indentation style and adjust settings
NeoBundle 'aclindsa/detectindent'
" typescript syntax
NeoBundle 'leafgarland/typescript-vim'
NeoBundle 'ervandew/supertab'
" snippets
NeoBundle 'SirVer/ultisnips'

" perl
NeoBundle 'vim-perl/vim-perl'
NeoBundle 'mileszs/ack.vim'

" color themes
NeoBundle 'altercation/vim-colors-solarized'

" go
"NeoBundle 'Blackrush/vim-gocode'
NeoBundle 'fatih/vim-go', { 'do': ':GoInstallBinaries' }
NeoBundle 'mdempsky/gocode', {'rtp': 'vim/'}


" syntax support
NeoBundle 'JSON.vim'
NeoBundle 'tpope/vim-markdown'
NeoBundle 'wavded/vim-stylus'
NeoBundle 'ekalinin/Dockerfile.vim'
NeoBundle 'groenewege/vim-less'
NeoBundle 'mustache/vim-mustache-handlebars'
NeoBundle 'joukevandermaas/vim-ember-hbs'
NeoBundle 'mtscout6/vim-cjsx'
NeoBundle 'posva/vim-vue'
NeoBundle 'hail2u/vim-css3-syntax'
NeoBundle 'cakebaker/scss-syntax.vim'
NeoBundle 'othree/es.next.syntax.vim'
NeoBundle 'othree/yajs.vim'

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

