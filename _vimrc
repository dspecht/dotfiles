"FIXING WINDOWS FUCKING MISTAKE NOW HAVE TO REMAKE THIS. SO FUCKING BS
set nocompatible
filetype off

call plug#begin('C:/Vim/vimfiles/plugged')
"core
Plug 'rking/ag.vim'
Plug 'bling/vim-airline'
Plug 'kien/ctrlp.vim'
Plug 'tpope/vim-surround'
Plug 'tpope/vim-fugitive'
Plug 'tpope/vim-unimpaired'
Plug 'wikitopian/hardmode'
Plug 'ludovicchabant/vim-gutentags'
Plug 'xolox/vim-misc'
Plug 'xolox/vim-shell'
Plug 'xolox/vim-notes'
Plug 'scrooloose/syntastic' "Python Required

"colors
Plug 'morhetz/gruvbox'
Plug 'junza/Spink'

call plug#end()
filetype plugin indent on

source C:/Vim/vimfiles/startup/mappings.vim
source C:/Vim/vimfiles/startup/settings.vim
source C:/Vim/vimfiles/startup/functions.vim
