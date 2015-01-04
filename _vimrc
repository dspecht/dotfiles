"FIXING WINDOWS FUCKING MISTAKE NOW HAVE TO REMAKE THIS. SO FUCKING BS
set nocompatible
filetype off

set rtp+=C:/Vim/vimfiles/bundle/Vundle.vim
let path='C:/Vim/vimfiles/bundle/'

call vundle#begin()

"core
Plugin 'garmik/Vundle.vim'
Plugin 'flazz/vim-colorschemes'
Plugin 'kien/ctrlp.vim'
Plugin 'bling/vim-airline'
Plugin 'tpope/vim-surround'
Plugin 'rking/ag.vim'
Plugin 'edsono/vim-matchit'
Plugin 'lokaltog/vim-easymotion'
Plugin 'scrooloose/nerdtree'
Plugin 'scrooloose/syntastic'
Plugin 'Shougo/neocomplete'
Plugin 'Shougo/neosnippit.vim'
Plugin 'Shougo/neosnippet-snippets'
Plugin 'xolox/vim-misc'
Plugin 'xolox/vim-notes'

Plugin 'Junza/Spink'

call vundle#end()
filetype plugin indent on

source C:/Vim/vimfiles/startup/mappings.vim
source C:/Vim/vimfiles/startup/settings.vim
source C:/Vim/vimfiles/startup/functions.vim
