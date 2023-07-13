" Plugin {{{
call plug#begin('~/.vim/plugged')


" Enhancements
Plug 'joshdick/onedark.vim'
Plug 'sbdchd/neoformat'
Plug 'lervag/vimtex'
Plug 'itchyny/lightline.vim'
Plug 'scrooloose/nerdtree'
Plug 'scrooloose/nerdcommenter'
Plug 'gorodinskiy/vim-coloresque'
Plug 'tpope/vim-surround'
Plug 'machakann/vim-highlightedyank'

" Fuzzy Finder
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'

call plug#end()
"}}}

" Neoformat {{{

let g:latexindent_opt="-m --yaml='modifyLineBreaks:textWrapOptions:columns:110\;'"

" Enable alignment
let g:neoformat_basic_format_align = 1

" Enable tab to spaces conversion
let g:neoformat_basic_format_retab = 1

" Enable trimmming of trailing whitespace
let g:neoformat_basic_format_trim = 1
"}}}

"Ui {{{
syntax on

set nocompatible
let g:python_highlight_all = 1
set relativenumber
set showcmd
set nu rnu
set laststatus=2
set cursorline
set scrolloff=8
set nowrap
set incsearch
set t_Co=256
set mouse=a

set background=dark
colorscheme onedark

set termguicolors

let g:highlightedyank_highlight_duration = 300

"spellchecker {{{
" set spell
" }}}

" LightLine {{{
let g:lightline = {'colorscheme': 'onedark',}
"}}}

" Tabs n Spaces {{{
autocmd Filetype javascript setlocal tabstop=2
set smartindent
set shiftwidth=4
set tabstop=4
set expandtab
set autoindent

" }}}

" find {{{ set path+=**
set wildmenu
set wildignore+=**/node_modules/** 
set hidden
" }}}

" mappings {{{
let mapleader = " "

noremap <leader>r :!cargo r --quiet<CR>
" Neoformat
nnoremap <leader>z :Neoformat<CR>

noremap <leader>r :!cargo r --quiet<CR>

noremap <leader>; A;<Esc>

""new line
nnoremap <leader>o o<Esc>
nnoremap <leader>O O<Esc>
                                                        
"no highlight
nnoremap <leader>n :nohl<CR>

"window navigation 
nnoremap <leader>h :wincmd h<CR>
nnoremap <leader>j :wincmd j<CR>
nnoremap <leader>k :wincmd k<CR>
nnoremap <leader>l :wincmd l<CR>

nnoremap <leader>p "+p
vnoremap <leader>p "+p
nnoremap <leader>P "+P
vnoremap <leader>P "+P
nnoremap <leader>y "+y
vnoremap <leader>y "+y
nnoremap <leader>Y "+y$

"tab navigation  
nnoremap <leader>1 1gt
nnoremap <leader>2 2gt
nnoremap <leader>3 3gt
nnoremap <leader>4 4gt
nnoremap <leader>5 5gt
nnoremap <leader>6 6gt
nnoremap <leader>7 7gt
nnoremap <leader>8 8gt
nnoremap <leader>9 9gt
nnoremap <leader>0 10gt

" fuzzy finder  
nnoremap <Leader>f :Files<CR>

inoremap " ""<left>
inoremap ' ''<left>
inoremap ( ()<left>
inoremap [ []<left>
inoremap { {}<left>

inoremap {<CR> {<CR>}<ESC>O
inoremap {;<CR> {<CR>};<ESC>O

map <F4> :NERDTreeToggle<CR>


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
