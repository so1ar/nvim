let mapleader=" "
syntax on
set number
set relativenumber
set cursorline
set wrap
set showcmd
set nohlsearch
set wildmenu
set incsearch
set ignorecase
set smartcase

set nocompatible
filetype on
filetype indent on
filetype plugin on
filetype plugin indent on
set mouse=a
set encoding=utf-8
set list
set listchars=tab:▸\ ,trail:▫
set scrolloff=5
set backspace=indent,eol,start

au BufReadPost * if line("'\"") > 1 && line("'\"") <= line("$") | exe "normal! g'\"" | endif

vnoremap Y "+y
noremap J 5j
noremap K 5k
noremap L $
noremap H 0

map sl :set splitright<CR>:vsplit<CR>
map sh :set nosplitright<CR>:vsplit<CR>
map sk :set nosplitbelow<CR>:split<CR>
map sj :set splitbelow<CR>:split<CR>

map <LEADER>l <C-w>l
map <LEADER>k <C-w>k
map <LEADER>h <C-w>h
map <LEADER>j <C-w>j

map tn :tabe<CR>
map th :-tabnext<CR>
map tl :+tabnext<CR>

call plug#begin('~/.config/nvim/plugged')

Plug 'vim-airline/vim-airline'

call plug#end()
