set shell=bash

" Plugins
call plug#begin('~/.vim/plugged')

Plug 'airblade/vim-gitgutter'
Plug 'vim-airline/vim-airline'
" Plug 'fatih/vim-go'
Plug 'sheerun/vim-polyglot'
Plug '/usr/local/opt/fzf' | Plug 'junegunn/fzf.vim'
Plug 'editorconfig/editorconfig-vim'
Plug 'tpope/vim-commentary'
Plug 'tpope/vim-surround'
Plug 'stanangeloff/php.vim'
Plug 'chrisbra/csv.vim'
Plug 'chiel92/vim-autoformat'
Plug 'w0rp/ale'
Plug 'racer-rust/vim-racer'
Plug 'pangloss/vim-javascript'

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

let g:javascript_plugin_flow = 1

let g:ale_completion_enabled = 1
let g:ale_fix_on_save = 1
let g:ale_go_golangci_lint_options = '--enable-all
\ --disable typecheck
\ --disable gochecknoglobals
\ --disable gochecknoinits'

nmap <leader>f :GFiles<CR>
nmap <leader>F :GFiles?<CR>

nmap gs  <plug>(GrepperOperator)

set mouse=
set completeopt-=preview

let g:ale_linters = {
\   'javascript': ['eslint', 'flow-language-server'],
\   'javascript.jsx': ['eslint', 'flow-language-server'],
\   'go': ['golangserver', 'gotype', 'golint', 'golangci-lint'],
\}

let g:ale_fixers = {
\   'go': ['goimports', 'gofmt'],
\   'javascript': ['prettier'],
\   'javascript.jsx': ['prettier'],
\   'css': ['prettier'],
\}
