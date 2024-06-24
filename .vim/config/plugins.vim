let data_dir = has('nvim') ? stdpath('data') . '/site' : '~/.vim'
if empty(glob(data_dir . '/autoload/plug.vim'))
  silent execute '!curl -fLo '.data_dir.'/autoload/plug.vim --create-dirs  https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim'
  autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
endif

call plug#begin()
" Autocompletion
Plug 'neoclide/coc.nvim', {'branch': 'release'}

" Autopairs 
Plug 'jiangmiao/auto-pairs'

" Shows indentation
Plug 'Yggdroot/indentLine'

" Custom startpage
Plug 'mhinz/vim-startify'

" Syntax highlighting for a lot of languges = kitty.conf
let g:polyglot_disabled = ['latex']
Plug 'sheerun/vim-polyglot'
Plug 'fladson/vim-kitty'

" Status bar + themes
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'

" Nerd Tree File manager
Plug 'scrooloose/nerdtree', {'on': ['NERDTreeToggle', 'NERDTreeFind' ]}
Plug 'Xuyuanp/nerdtree-git-plugin'
Plug 'tiagofumo/vim-nerdtree-syntax-highlight'

" Devicons and emojis
Plug 'ryanoasis/vim-devicons'
Plug 'junegunn/vim-emoji'

" Translator
Plug 'voldikss/vim-translator'

" Color to Color
Plug 'etdev/vim-hexcolor'
call plug#end()
