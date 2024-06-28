let data_dir = has('nvim') ? stdpath('data') . '/site' : '~/.vim'
if empty(glob(data_dir . '/autoload/plug.vim'))
  silent execute '!curl -fLo '.data_dir.'/autoload/plug.vim --create-dirs  https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim'
  autocmd VimEnter * PlugInstall --sync |source $MYVIMRC
endif

call plug#begin()
" Colorscheme
Plug 'ghifarit53/tokyonight-vim'

" Status bar
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'

" Devicons + emoji
Plug 'ryanoasis/vim-devicons'
Plug 'junegunn/vim-emoji'

" Show indentations
Plug 'Yggdroot/indentLine'

" Auto pair
Plug 'jiangmiao/auto-pairs'

" Syntax highlighting
Plug 'sheerun/vim-polyglot'
Plug 'fladson/vim-kitty'

" Git integration
Plug 'tpope/vim-fugitive'

" Code completion and more
Plug 'neoclide/coc.nvim', {'branch': 'release'}

" File manager
Plug 'preservim/nerdtree'
Plug 'Xuyuanp/nerdtree-git-plugin'
Plug 'tiagofumo/vim-nerdtree-syntax-highlight'

" Custon home page
Plug 'mhinz/vim-startify'

" Color to hex
Plug 'etdev/vim-hexcolor'

call plug#end()
colorscheme tokyonight
