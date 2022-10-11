set nocompatible              " be iMproved, required
filetype off                  " required
set backspace=indent,eol,start
set nowrap
set ruler 
set number
set relativenumber
set showcmd
set showmatch
set ignorecase
set autoread
set cursorline

" Vim Indent
set autoindent expandtab tabstop=4 shiftwidth=4

" Syntax Highlighting
syntax on

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" Completion 
Plugin 'valloric/youcompleteme'
Plugin 'ervandew/supertab'

" Language Stuff
Plugin 'klen/python-mode'
Plugin 'mattn/emmet-vim'
Plugin 'fatih/vim-go'
Plugin 'AutoClose'
Plugin 'mxw/vim-jsx'
Plugin 'pangloss/vim-javascript'
Plugin 'rstacruz/sparkup', {'rtp': 'vim/'}

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'

" Search Stuff
Plugin 'scrooloose/nerdtree'
Plugin 'rking/ag.vim'
Plugin 'junegunn/fzf'

" Git Stuff
Plugin 'tpope/vim-fugitive'

" Visual Stuff
Plugin 'joshdick/onedark.vim'
Plugin 'vim-airline/vim-airline'
Plugin 'sickill/vim-monokai'

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required

" AG
let g:ackprg = 'ag --vimgrep'

" Theme
colorscheme monokai
" Background Transparency
hi Normal  guibg=NONE ctermbg=NONE 

" NERDTree show on start uncomment here
" autocmd VimEnter * NERDTree | wincmd p

" Insert movement
inoremap <C-h> <Left>
inoremap <C-j> <Down>
inoremap <C-k> <Up>
inoremap <C-l> <Right>

