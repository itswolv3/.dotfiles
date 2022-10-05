set nocompatible              " be iMproved, required
filetype off                  " required
set backspace=2
set nowrap
 
set number
set relativenumber

" Syntax Highlighting
syntax on

" Vim Indent
set autoindent expandtab tabstop=4 shiftwidth=4

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

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required

" AG
let g:ackprg = 'ag --vimgrep'

" Theme
colorscheme onedark
" Background Transparency
hi Normal  guibg=NONE ctermbg=NONE 

" NERDTree show on start uncomment here
" autocmd VimEnter * NERDTree | wincmd p
