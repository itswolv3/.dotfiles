set nocompatible              " be iMproved, required
filetype off                  " required
set backspace=2
 
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
" Ag.vim
Plugin 'rking/ag.vim'
" Fzf
Plugin 'junegunn/fzf'
" Vim-fugitive
Plugin 'tpope/vim-fugitive'
" Sparkip
Plugin 'rstacruz/sparkup', {'rtp': 'vim/'}

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required

" To ignore plugin indent changes, instead use:
"filetype plugin on
"
" Brief help
" :PluginList       - lists configured plugins
" :PluginInstall    - installs plugins; append `!` to update or just
" :PluginUpdate
" :PluginSearch foo - searches for foo; append `!` to refresh local cache
" :PluginClean      - confirms removal of unused plugins; append `!` to
" auto-approve removal
"
" see :h vundle for more details or wiki for FAQ
" Put your non-Plugin stuff after this line

let g:ackprg = 'ag --vimgrep'

" NERDTree show on start uncomment here
" autocmd VimEnter * NERDTree | wincmd p
