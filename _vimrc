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
Plug 'xolox/vim-misc', {'on': 'Note'}
Plug 'xolox/vim-notes', {'on': 'Note'}
Plug 'scrooloose/syntastic'

"colors
Plug 'morhetz/gruvbox'
Plug 'junza/Spink'
Plug 'twerth/ir_black'

"Filetype Plugins
Plug 'wlangstroth/vim-racket', {'for': 'racket'}

call plug#end()
filetype plugin indent on

source C:/Vim/vimfiles/startup/mappings.vim
source C:/Vim/vimfiles/startup/settings.vim
source C:/Vim/vimfiles/startup/functions.vim
