set relativenumber 
set smartindent
set nowrap

set tabstop=4
set showcmd
set shiftwidth=4
set expandtab
set autoindent
set nu rnu
set laststatus=2
syntax enable

colorscheme slate
set cursorline

set background=dark
set t_Co=256

call plug#begin('~/.vim/plugged')

Plug 'itchyny/lightline.vim'
Plug 'scrooloose/nerdtree'
Plug 'scrooloose/nerdcommenter'
Plug 'gorodinskiy/vim-coloresque'

call plug#end()


let mapleader = " "

nnoremap <leader>h :wincmd h<CR>
nnoremap <leader>j :wincmd j<CR>
nnoremap <leader>k :wincmd k<CR>
nnoremap <leader>l :wincmd l<CR>


map <F4> :NERDTreeToggle<CR>
