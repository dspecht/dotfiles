"VIM MAPPINGS

"BASIC
nnoremap ; :
nnoremap : ;
nnoremap v <C-v>
nnoremap <C-v> v

nnoremap <leader>cn <ESC>:cn<CR>
nnoremap <leader>cp <ESC>:cp<CR>

nnoremap <C-s> <ESC>:w<CR>

nnoremap <expr> k (v:count == 0 ? 'gk' : 'k')
nnoremap <expr> j (v:count == 0 ? 'gj' : 'j')

nnoremap Y y$

"auto-center on movement commands
nmap G Gzz
nmap n nzz
nmap N Nzz
nmap } }zz
nmap { {zz
nmap <C-d> <C-d>zz
nmap <C-u> <C-u>zz

"disable arrow keys
no <down> <Nop>
no <left> <Nop>
no <right> <Nop>
no <up> <Nop>
"-------------------
ino <down> <Esc>
ino <left> <Esc>
ino <right> <Esc>
ino <up> <Esc>

let mapleader = " "
nnoremap <silent> <leader>wab :1,9000bwipeout<tCR>
nnoremap <silent> <leader>wtt :set invwrap<CR>

"Linux Only due to windows being weird in gvim
nnoremap <silent> Q !!sh<CR>

nnoremap <leader>srcw :%s/\<<C-r>=expand('<cword>')<CR>//gc<left><left><left>
nnoremap <leader>srw :%s//gc<left><left><left>
nnoremap <leader>ccw :%s/\<C-r>=expand('<cword>')<CR>//gn<CR>

nnoremap <silent><F5> <ESC>:make<CR><CR>
nnoremap <silent><F2> <ESC>:cd %:p:h<CR>

"QuickFixList Toggle
nnoremap <Leader>q :call QuickfixToggle()<cr>
