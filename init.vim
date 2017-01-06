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
Plug 'terryma/vim-multiple-cursors'
Plug 'stanangeloff/php.vim'
Plug 'shawncplus/phpcomplete.vim'
Plug 'chrisbra/csv.vim'
Plug 'eslint/eslint'
Plug 'chiel92/vim-autoformat'
Plug 'mhartington/deoplete-typescript'
Plug 'zchee/deoplete-clang'

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

let g:deoplete#enable_at_startup = 1
let g:deoplete#enable_ignore_case = 1
let g:deoplete#enable_refresh_always = 1

let g:deoplete#sources#clang#libclang_path = '/usr/lib/llvm-3.8/lib/libclang.so.1'
let g:deoplete#sources#clang#clang_header = '/usr/lib/llvm-3.8/lib/clang'

let g:syntastic_cpp_compiler = 'clang++'
let g:syntastic_cpp_compiler_options = ' -std=c++11'
