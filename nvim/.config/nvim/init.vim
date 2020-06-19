" Plugin {{{
call plug#begin('~/.vim/plugged')

Plug 'itchyny/lightline.vim'
Plug 'scrooloose/nerdtree'
Plug 'mattn/emmet-vim'
Plug 'scrooloose/nerdcommenter'
Plug 'gorodinskiy/vim-coloresque'
Plug 'tpope/vim-surround'
Plug 'ThePrimeagen/vim-be-good' 
Plug 'pangloss/vim-javascript'
Plug 'maxmellon/vim-jsx-pretty'

call plug#end()
"}}}

" Ui {{{
syntax enable

set nocompatible

set relativenumber
set showcmd
set nu rnu
set laststatus=2
set cursorline
set scrolloff=8
set nowrap
set incsearch
set t_Co=256
set background=dark
colorscheme solarized

" }}}

" Tabs n Spaces {{{

set smartindent
set shiftwidth=2
set tabstop=2
set expandtab
set autoindent

" }}}

" find {{{
set path+=**
set wildmenu
set wildignore+=**/node_modules/** 
set hidden
" }}}

" LightLine {{{
let g:lightline = {'colorscheme': 'solarized',}
"}}}

" Mapping {{{
let mapleader = " "

nnoremap <leader>o o<Esc>
nnoremap <leader>O o<Esc>
                                                        
nnoremap <leader>h :wincmd h<CR>
nnoremap <leader>j :wincmd j<CR>
nnoremap <leader>k :wincmd k<CR>
nnoremap <leader>l :wincmd l<CR>

noremap " ""<left>
inoremap ' ''<left>
inoremap ( ()<left>
inoremap [ []<left>
inoremap { {}<left>
inoremap {<CR> {<CR>}<ESC>O
inoremap {;<CR> {<CR>};<ESC>O

map <F4> :NERDTreeToggle<CR>
"}}}

" NerdTree {{{
"let NERDTreeMapOpenInTab='<ENTER>'
"}}}

" Section Folding {{{
set foldenable
set foldlevelstart=10
set foldnestmax=10
set foldmethod=syntax
" }}}

" VIMRC {{{

nnoremap <leader>ev :vsp $MYVIMRC<CR>
nnoremap <leader>sv :source $MYVIMRC <bar> :doautocmd BufRead<CR>

" }}}

" vim:foldmethod=marker:foldlevel=0
