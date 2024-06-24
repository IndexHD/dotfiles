set nocompatible

" Filetypes
augroup specify_Filetype
  autocmd!
  autocmd BufRead,BufNewFile *.md set filetype=markdown
  autocmd BufRead,BufNewFile *.txt set filetype=text
augroup END

" Spellchecking
autocmd FileType text,markdown setlocal spell
" Limit linelength
autocmd FileType text,markdown,tex setlocal textwidth=180

"""""""""
" Looks "
"""""""""
" Colors
  set termguicolors
" Split windows
  set splitright
" Line numbers
  set number
  set relativenumber
  hi cursorLineNR cterm=bold term=bold
  set cursorline cursorlineopt=number
" Lines
  set wrap
" Syntax
  syntax on
" Modes
  set noshowmode

""""""""""""
" Behavior "
""""""""""""
" Clipboard
  set clipboard=unnamedplus
" Buffer Opening
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
  set smartindent
  set shiftround
" Search
  set ignorecase
  set smartcase
