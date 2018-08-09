set shell=bash

" Plugins
call plug#begin('~/.vim/plugged')

Plug 'airblade/vim-gitgutter'
Plug 'vim-airline/vim-airline'
Plug 'fatih/vim-go'
Plug 'sheerun/vim-polyglot'
Plug '/usr/local/opt/fzf' | Plug 'junegunn/fzf.vim'
Plug 'editorconfig/editorconfig-vim'
Plug 'tpope/vim-commentary'
Plug 'zchee/deoplete-go', { 'do': 'make' }
Plug 'tpope/vim-surround'
Plug 'stanangeloff/php.vim'
Plug 'padawan-php/deoplete-padawan'
Plug 'chrisbra/csv.vim'
Plug 'chiel92/vim-autoformat'
Plug 'w0rp/ale'
Plug 'racer-rust/vim-racer'
Plug 'mhartington/nvim-typescript', { 'do': './install.sh' }
Plug 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' }

call plug#end()

source ~/.config/nvim/basic.vim

set history=1000

set number

set showbreak=↪\ 
set listchars=tab:→\ ,nbsp:␣,trail:•,extends:⟩,precedes:⟨," eol:↲,nbsp:·,
set list

" Theme
" let g:onedark_termcolors=256
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

let g:deoplete#enable_at_startup = 1
let g:deoplete#enable_ignore_case = 1
let g:deoplete#enable_refresh_always = 1

nmap <leader>f :GFiles<CR>
nmap <leader>F :GFiles?<CR>

nmap gs  <plug>(GrepperOperator)

set mouse=
