map <F4> :NERDTreeToggle<CR>
set relativenumber
set smartindent
set tabstop=4
set showcmd
set shiftwidth=4
set expandtab
set autoindent
set nu rnu
set laststatus=2
syntax enable

colorscheme solarized
set cursorline
set t_Co=256

set background=dark

let g:lightline = {
      \ 'colorscheme': 'solarized',
      \ }

"=======================================================
set nocompatible              " be iMproved, required
filetype off                  " required
" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim

call vundle#begin()

Plugin 'VundleVim/Vundle.vim'

Plugin 'tpope/vim-surround'
Plugin 'scrooloose/nerdtree'
Plugin 'lervag/vimtex'
Plugin 'ap/vim-css-color'
Plugin 'mattn/emmet-vim'
Plugin 'itchyny/lightline.vim'
Plugin 'preservim/nerdcommenter'

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required

