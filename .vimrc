set nocompatible              " be iMproved, required
filetype off                  " required
set backspace=2

" Set scrolling relative numbers
set number
set relativenumber

" Syntax Highlighting
syntax on

" Vim Indent
set autoindent expandtab tabstop=4 shiftwidth=4

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" YCM
Plugin 'valloric/youcompleteme'
" NERDTree
Plugin 'scrooloose/nerdtree'
" Airlines
Plugin 'vim-airline/vim-airline'
" Autoclose
Plugin 'AutoClose'
" Python
Plugin 'klen/python-mode'
" Emmet
Plugin 'mattn/emmet-vim'
" Vim-go
Plugin 'fatih/vim-go'
" SuperTab
Plugin 'ervandew/supertab'
" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'

Plugin 'tpope/vim-fugitive'

Plugin 'rstacruz/sparkup', {'rtp': 'vim/'}

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required


" Other Plugin Actions
" NERDTree show on start uncomment here
" autocmd VimEnter * NERDTree | wincmd p

