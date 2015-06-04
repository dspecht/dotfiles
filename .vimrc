set nocompatible
filetype off

call plug#begin('~/.vim/plugged')

"core
Plug 'rking/ag.vim'
Plug 'bling/vim-airline'
Plug 'kien/ctrlp.vim'
Plug 'tpope/vim-surround'
Plug 'tpope/vim-fugitive'
Plug 'tpope/vim-unimpaired'
Plug 'xolox/vim-misc'
Plug 'wikitopian/hardmode'
Plug 'xolox/vim-misc'
Plug 'xolox/vim-notes'
Plug 'scrooloose/syntastic'

"colors
Plug 'morhetz/gruvbox'
Plug 'junza/Spink'

call plug#end()
filetype plugin indent on

source ~/.vim/startup/mappings.vim
source ~/.vim/startup/settings.vim
source ~/.vim/startup/functions.vim


