set background=dark
" showmarks
let g:showmarks_enable = 0 " disabled by default by populardemand ;)
hi! link ShowMarksHLl LineNr
hi! link ShowMarksHLu LineNr
hi! link ShowMarksHLo LineNr
hi! link ShowMarksHLm LineNr

" syntastic
let g:syntastic_enable_signs=1
let g:syntastic_auto_loc_list=2
let g:syntastic_perl_flags='-I./ -Ilib/'
let g:syntastic_check_on_wq=0
let g:syntastic_error_symbol='✗'
let g:syntastic_warning_symbol='⚠'

" nerdtree
" Ctrl-P to Display the file browser tree
nmap <C-P> :NERDTreeTabsToggle<CR>
" ,p to show current file in the tree
nmap <leader>p :NERDTreeFind<CR>

" nerdcommenter
" ,/ to invert comment on the current line/selection
nmap <leader>/ :call NERDComment(0, "invert")<cr>
vmap <leader>/ :call NERDComment(0, "invert")<cr>

" ,t to show tags window
let Tlist_Show_Menu=1
nmap <leader>t :TlistToggle<CR>

let g:Conque_Read_Timeout = 50 " timeout for waiting for command output.
let g:Conque_TERM = 'xterm'
" ,sh shell window
nmap <Leader>sh :ConqueSplit bash<cr>
" ,r run command
nmap <Leader>R :ConqueSplit

" yankring
let g:yankring_replace_n_pkey = '<leader>['
let g:yankring_replace_n_nkey = '<leader>]'
" ,y to show the yankring
nmap <leader>y :YRShow<cr>
" put the yankring_history file in ~/.backup
let g:yankring_history_dir = '~/.backup'

" command-t
"nmap <unique> <silent> <Leader>, :CommandT<CR>
"nmap <unique> <silent> <Leader>. :CommandTFlush<CR>:CommandT<CR>
"let g:CommandTMatchWindowAtTop=1

let g:ctrlp_map = '<leader>,'
let g:ctrlp_cmd = 'CtrlP'

nmap <leader>. :CtrlPClearCache<cr>:CtrlP<cr>
nmap <leader>l :CtrlPLine<cr>
nmap <leader>b :CtrlPBuff<cr>
nmap <leader>m :CtrlPBufTag<cr>
nmap <leader>M :CtrlPBufTagAll<cr>

let g:ctrlp_clear_cache_on_exit = 1
" ctrlp leaves stale caches behind if there is another vim process running
" which didn't use ctrlp. so we clear all caches on each new vim invocation
cal ctrlp#clra()

let g:ctrlp_max_height = 40

" show on top
"let g:ctrlp_match_window_bottom = 0
"let g:ctrlp_match_window_reversed = 0

" jump to buffer in the same tab if already open
let g:ctrlp_switch_buffer = 1

" if in git repo - use git file listing command, should be faster
" using this option overrides standard CtrlP ignore list based on vim wildignore
" so use 'grep -v ...' to exclude common image and font files from the search
let g:ctrlp_user_command = ['.git', 'cd %s && git ls-files --exclude-standard -cod | grep -viE "\.(png|gif|jpg|gz|woff|eot|tiff|ttf|otf)$"']

" open multiple files with <c-z> to mark and <c-o> to open. v - opening in
" vertical splits; j - jump to first open buffer; r - open first in current buffer
let g:ctrlp_open_multiple_files = 'vjr'

let g:ctrlp_extensions = ['tag', 'buffertag', 'quickfix', 'mixed', 'line']

" Fugitive
" ,g for Ggrep
nmap <leader>g :silent Ggrep<space>

" ,f for global git serach for word under the cursor (with highlight)
nmap <leader>f :let @/="\\<<C-R><C-W>\\>"<CR>:set hls<CR>:silent Ggrep -w "<C-R><C-W>"<CR>:ccl<CR>:cw<CR><CR>

" same in visual mode
:vmap <leader>f y:let @/=escape(@", '\\[]$^*.')<CR>:set hls<CR>:silent Ggrep -F "<C-R>=escape(@", '\\"#')<CR>"<CR>:ccl<CR>:cw<CR><CR>
" Ag
" ,a for Ag
nmap <leader>k :Ag<space>

" vim-indentobject
" add Markdown to the list of indentation based languages
let g:indentobject_meaningful_indentation = ["haml", "sass", "python", "yaml", "markdown"]

" indent-guides
"let g:indent_guides_start_level = 2
let g:indent_guides_enable_on_vim_startup = 1
"let g:indent_guides_guide_size = 1
"let g:indent_guides_color_change_percent = 5
let g:indent_guides_auto_colors=0

" Gundo
nmap <leader>u :GundoToggle<CR>
let g:gundo_close_on_revert = 1

" DetectIndent
au BufReadPost * :DetectIndent
let g:detectindent_preferred_indent = 4
let g:detectindent_preferred_expandtab = 1

let g:blockle_mapping = '<Leader>B'

" solarized
let g:solarized_termcolors=256

" vim-airline
let g:airline_powerline_fonts=1
set noshowmode

" uncomment to define your own bindings for tmux-vim-navigator
"let g:tmux_navigator_no_mappings = 1
