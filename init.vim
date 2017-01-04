" Plugins
call plug#begin('~/.vim/plugged')

Plug 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' }
Plug 'airblade/vim-gitgutter'
Plug 'vim-airline/vim-airline'
Plug 'fatih/vim-go'
Plug 'sheerun/vim-polyglot'
Plug 'ctrlpvim/ctrlp.vim'
Plug 'editorconfig/editorconfig-vim'
Plug 'scrooloose/nerdcommenter'
Plug 'scrooloose/nerdtree'
Plug 'tpope/vim-fugitive'
Plug 'scrooloose/syntastic'
Plug 'tpope/vim-surround'
Plug 'leafgarland/typescript-vim'
Plug 'terryma/vim-multiple-cursors'
Plug 'stanangeloff/php.vim'
Plug 'shawncplus/phpcomplete.vim'
Plug 'chrisbra/csv.vim'
Plug 'Shougo/vimproc.vim', {'do' : 'make'}
Plug 'quramy/tsuquyomi'
Plug 'eslint/eslint'
Plug 'chiel92/vim-autoformat'

call plug#end()

source ~/.config/nvim/basic.vim

set history=1000

set number

set timeout timeoutlen=1500

set showbreak=↪\ 
set listchars=tab:→\ ,nbsp:␣,trail:•,extends:⟩,precedes:⟨," eol:↲,nbsp:·,
set list

" Theme
" let g:onedark_termcolors=16
set background=dark
colorscheme onedark
hi SpecialKey ctermfg=8
set termguicolors
set cc=80

" 1 tab == 2 spaces
set shiftwidth=2
set tabstop=2

" Plugins
let g:airline_powerline_fonts = 1
let g:airline_theme = 'onedark'

autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * if argc() == 1 && isdirectory(argv()[0]) && !exists("s:std_in") | exe 'NERDTree' argv()[0] | wincmd p | ene | endif
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif

let g:NERDSpaceDelims = 1
let g:NERDCompactSexyComs = 1
let g:NERDDefaultAlign = 'left'
let NERDTreeShowHidden=1

