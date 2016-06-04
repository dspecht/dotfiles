set nocompatible
filetype off

call plug#begin('~/.vim/plugged')

"core
Plug 'rking/ag.vim'
Plug 'vim-airline/vim-airline'
Plug 'ctrlp/ctrlp.vim'
Plug 'tpope/vim-surround'
Plug 'tpope/vim-fugitive'
Plug 'tpope/vim-unimpaired'
Plug 'wikitopian/hardmode'
Plug 'xolox/vim-misc', {'on': 'Note'}
Plug 'xolox/vim-notes', {'on': 'Note'}
Plug 'scrooloose/syntastic'
Plug 'vim-pandoc/vim-pandoc', {'for': 'markdown'}
Plug 'zah/nim.vim', {'for': 'nim'}

"colors
Plug 'morhetz/gruvbox'
Plug 'alessandroyorba/alduin'
Plug 'junza/Spink'
Plug 'twerth/ir_black'
Plug 'wlangstroth/vim-racket', {'for': 'racket'}
"Filetype Plugins
Plug 'vim-pandoc/vim-pandoc-syntax', {'for': 'markdown'} call plug#end()
filetype plugin indent on

source ~/.vim/startup/mappings.vim
source ~/.vim/startup/settings.vim
source ~/.vim/startup/functions.vim


