set nocompatible
filetype off

call plug#begin('~/.vim/plugged')

if has('if_lua')
    Plug 'Shougo/neocomplete'
    Plug 'Shougo/neosnippet.vim'
    Plug 'Shougo/neosnippet-snippets'
endif

if has('if_python')
    Plug 'scrooloose/nerdtree'
    Plug 'scrooloose/syntastic'
endif

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

"colors
Plug 'junza/Spink'

call plug#end()
filetype plugin indent on

source ~/.vim/startup/mappings.vim
source ~/.vim/startup/settings.vim
source ~/.vim/startup/functions.vim


