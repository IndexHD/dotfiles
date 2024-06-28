" General options
set nocompatible
set termguicolors

" Filetypes
augroup specify_Filetype
  autocmd!
  autocmd BufRead, BufNewFile *.md     set filetype=markdown
  autocmd BufRead, BufNewFile *.txt    set filetype=text
augroup END

"""""""""
" Looks "
"""""""""
" UI
  set noshowmode 
" Line (Numbers)
  set number
  set relativenumber 
  hi cursorLineNR term=bold term=italic cterm=bold cterm=italic
  set cursorline cursorlineopt=number
  set wrap
" Syntax
  syntax on
  set foldmethod=indent
  set foldnestmax=10
  set nofoldenable
  set foldlevel=2


""""""""""""
" Behavior "
""""""""""""
"Clipboard
  set clipboard=unnamedplus
" Buffer
if has("autocmd")
  au BufReadPost * if line ("'\"") <= line ("$")
    \|exe "normal! g'\"" | endif
endif
" Indentation
  set expandtab
  set tabstop=2
  set shiftwidth=2
  set smarttab
  set autoindent
  set shiftround
" Search
  set ignorecase
  set smartcase
