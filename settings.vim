"VIM SETTINGS
set showcmd
set nonumber
set autoindent
set autoread
set autowrite
set backspace=indent,eol,start  " make that backspace key work the way it should
set mousehide
set incsearch
set vb t_vb=

set list
syntax on
colorscheme Spink

set guifont=Liberation_Mono:h10
set enc=utf-8
set t_Co=256

set history=1000
set lazyredraw
set undofile
set scrolloff=4

highlight colorcolumn ctermbg=DarkRed
call matchadd('colorcolumn', '\%81v.', 100)

if has('gui_running')
    "remove crappy gui stuff
    set guioptions-=m
    set guioptions-=T
    set guioptions-=l
    set guioptions-=L
    set guioptions-=r
    set guioptions-=R
endif

set expandtab
set tabstop=4
set sw=4
set listchars=tab:▸\ ,eol:¬

"AIRLINE CONFIG
set laststatus=2
let g:airline#extensions#tabline#enabled = 1
let g:airline#theme = 'hybrid'

"NEOCOMPLETE CONFIG
let g:neocomplete#enable_at_startup = 1
let g:neocomplete#enable_smart_case = 1
let g:neocomplete#sources#syntax#min_keyworld_length = 3

"CtrlP CONFIG
set wildignore+=*/tmp/*,*.o,*.so,*.swp,*.zip,*\\tmp\\,*.exe
let g:ctrlp_custom_ignore = '\v[\/]\.(git|hg|svn)$'
"let g:ctrlp_custom_ignore = {
	\ 'dir': '\v[\/]\.(git|hg|svn)$',
	\ 'file': '\v\.(exe|so|dll)$' }

let g:ctrlp_working_path_mode = 'ra'
let g:neocomplete#enable_at_startup = 1
let g:neocomplete#enable_smart_case = 1
let g:neocomplete#sources#syntax#min_keyworld_length = 3

"CtrlP CONFIG
set wildignore+=*/tmp/*,*.so,*.swp,*.zip,*\\tmp\\,*.exe
let g:ctrlp_custom_ignore = '\v[\/]\.(git|hg|svn)$'
let g:ctrlp_working_path_mode = 'ra'
