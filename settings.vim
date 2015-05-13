"VIM SETTINGS
set showcmd
set nonumber
set autoindent
"set autoread
set autowrite
set backspace=indent,eol,start
set mousehide
set incsearch
set vb t_vb= "never found a reason why this doesn't work
set t_Co=256

if &t_Co > 2 || has('gui running') "if term supports highlighting turn it on
    syntax on
    set hlsearch
    colors gruvbox "this is a 256 color theme
endif

set grepprg=ag
set makeprg=build.bat
set noesckeys
set ttimeout
set ttimeoutlen=1

set nobackup
set noswapfile

"please make sure you change this file path to something that exists on your system
set undodir=~/.vim/undo
set undofile

set list
set guifont=Liberation_Mono:h10
set enc=utf-8

set history=1000
set lazyredraw
set scrolloff=4

highlight colorcolumn guibg=DarkBlue
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
if has('if_lua')
    let g:neocomplete#enable_at_startup = 1
    let g:neocomplete#enable_smart_case = 1
    let g:neocomplete#sources#syntax#min_keyworld_length = 3
    inoremap <expr><C-h> neocomplete#smart_close_popup()."\<C-h>"
    inoremap <expr><BS> neocomplete#smart_close_popup()."\<C-h>"
endif

"CtrlP CONFIG
set wildignore+=*/tmp/*,*.o,*.so,*.swp,*.zip,*\\tmp\\,*.exe
let g:ctrlp_working_path_mode = 'ra'
let g:ctrlp_custom_ignore = '\v[\/]\.(git|hg|svn)$'
"let g:ctrlp_custom_ignore = {
	\ 'dir': '\v[\/]\.(git|hg|svn)$',
	\ 'file': '\v\.(exe|so|dll)$' }

