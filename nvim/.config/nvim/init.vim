" Plugin {{{
call plug#begin('~/.vim/plugged')

Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'
Plug 'octol/vim-cpp-enhanced-highlight'
Plug 'itchyny/lightline.vim'
Plug 'sheerun/vim-polyglot'
Plug 'scrooloose/nerdtree'
Plug 'mattn/emmet-vim'
Plug 'joshdick/onedark.vim'
Plug 'scrooloose/nerdcommenter'
Plug 'gorodinskiy/vim-coloresque'
Plug 'tpope/vim-surround'
Plug 'prettier/vim-prettier', {
  \ 'do': 'yarn install',
  \ 'for': ['javascript', 'css', 'json', 'html'] }
    
call plug#end()
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

set background=dark
colorscheme onedark

if (empty($TMUX))
  if (has("nvim"))
    "For Neovim 0.1.3 and 0.1.4 < https://github.com/neovim/neovim/pull/2198 >
    let $NVIM_TUI_ENABLE_TRUE_COLOR=1
  endif
  "For Neovim > 0.1.5 and Vim > patch 7.4.1799 < https://github.com/vim/vim/commit/61be73bb0f965a895bfb064ea3e55476ac175162 >
  "Based on Vim patch 7.4.1770 (`guicolors` option) < https://github.com/vim/vim/commit/8a633e3427b47286869aa4b96f2bfc1fe65b25cd >
  " < https://github.com/neovim/neovim/wiki/Following-HEAD#20160511 >
  if (has("termguicolors"))
    set termguicolors
  endif
endif

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

"Mapping {{{
let mapleader = " "

"python
noremap <leader>r :!python %<CR>
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
