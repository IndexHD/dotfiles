"""""""""""
" Airline "
"""""""""""
let g:airline_theme='tokyonight'
let g:airline_powerline_fonts = 1
let g:airline_left_sep = ''
let g:airline_left_alt_sep = ''
let g:airline_right_sep = ''
let g:airline_right_alt_sep = ''
let g:airline_symbols_branch = ''

" Tabbar
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#formatter = 'unique_tail_improved'

" Extentions
let g:airline#extensions#coc#enabled = 1

" Extention settings
let airline#extensions#coc#stl_format_err = '%E{[%e(#%fe)]}'
let airline#extensions#coc#stl_format_warn = '%W{[%w(#%fw)]}'
let airline#extensions#coc#warning_symbol = ':'
let airline#extensions#coc#error_symbol = ':'

""""""""""""""""""""
" Emoji + Devicons "
""""""""""""""""""""
set completefunc=emoji#complete

""""""""""""""
" indentLine "
""""""""""""""
let g:indentLine_char_list = ['|', '¦', '┆', '┊']
let g:vim_json_conceal=0
let g:markdown_syntax_conceal=0

""""""""""""
" NerdTree "
""""""""""""
let NERDTreeQuitOnOpen = 1
let NERDTreeShowHidden=1
let NERDChristmasTree=1
let g:NERDTreeMinimalUI = 1
let g:NERDTreeWinSize = 25
let g:NERDTreeDirArrowExpandable = '▷'
let g:NERDTreeDirArrowCollapsible = '▼'
let NERDTreeAutoCenter=1
let g:NERDTreeGitStatusUseNerdFonts = 1

" Exit Vim if NERDTree is the only window remaining in the only tab.
autocmd BufEnter * if tabpagenr('$') == 1 && winnr('$') == 1 && exists('b:NERDTree') && b:NERDTree.isTabTree() | call feedkeys(":quit\<CR>:\<BS>") | endif

" If another buffer tries to replace NERDTree, put it in the other window, and bring back NERDTree.
autocmd BufEnter * if winnr() == winnr('h') && bufname('#') =~ 'NERD_tree_\d\+' && bufname('%') !~ 'NERD_tree_\d\+' && winnr('$') > 1 |
    \ let buf=bufnr() | buffer# | execute "normal! \<C-W>w" | execute 'buffer'.buf | endif

"""""""
" COC "
"""""""
" customize popup

" Define error symbols and colors
"let g:coc_status_warning_sign = 
"
hi CocWarningSign guifg=blue
hi CocErrorSign guifg=red
hi CocInfoSign guifg=yellow
hi CocHintSign guifg=green

" Highlight symbol under cursor on Cursorhold
autocmd CursorHold * silent call CocActionAsync('highlight')

let g:coc_global_extensions = 'coc-clangd'

""""""""""""
" Startify "
""""""""""""
" Headerfile
let g:startify_custom_header = startify#pad(readfile('~/.vim/config/startify_header.txt'))
