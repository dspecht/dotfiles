"FIXING WINDOWS FUCKING MISTAKE NOW HAVE TO REMAKE THIS. SO FUCKING BS
set nocompatible
filetype off

call plug#begin('C:/Vim/vimfiles/plugged')

if has('if_lua')
    Plug 'Shougo/neocomplete'
    Plug 'Shougo/neosnippet.vim'
    Plug 'Shougo/neosnippet-snippets'
endif

if has('if_python')
    Plug 'scrooloose/nerdtree'
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
Plug 'scrooloose/syntastic' "Python Required

"colors
Plug 'morhetz/gruvbox'
Plug 'junza/Spink'

call plug#end()
filetype plugin indent on

source C:/Vim/vimfiles/startup/mappings.vim
source C:/Vim/vimfiles/startup/settings.vim
source C:/Vim/vimfiles/startup/functions.vim
