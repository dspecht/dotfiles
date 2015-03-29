"VIM MAPPINGS

"BASIC
nnoremap ; :
nnoremap : ;
nnoremap v <C-v>
nnoremap <C-v> v

nnoremap <C-s> <ESC>:w<CR>
inoremap <C-s> <ESC>:w<CR>i

nnoremap <expr> k (v:count == 0 ? 'gk' : 'k')
nnoremap <expr> j (v:count == 0 ? 'gj' : 'j')

nnoremap Y y$

"upper or lowercase the current word
nmap g^ gUiW
nmap gv guiW

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

ino <down> <Esc>
ino <left> <Esc>
ino <right> <Esc>
ino <up> <Esc>

let mapleader = ","
nnoremap <silent> <leader>wab :1,9000bwipeout<CR>
nnoremap <silent> <leader>wtt :set invwrap<CR>

nnoremap <leader>srcw :%s/\<<C-r>=expand('<cword>')<CR>//gc<left><left><left>
nnoremap <leader>srw :%s//gc<left><left><left>

"MSVC COMPLIATION COMMANDS
nnoremap <silent><F6> :call RunCppBuildBatch()<CR>
"nnoremap <silent><F5> :call RunCppExecutable()<CR>

"QuickFixList Toggle
nnoremap <Leader>q :call QuickfixToggle()<cr>

"NERDTree MAPPINGS
nnoremap <Leader>n :NERDTreeToggle<CR>

if has('if_lua')
    "NEOCOMPLETE MAPPINGS
    inoremap <expr><TAB> pumvisible() ? "\<C-n>" : "\<TAB>"
    inoremap <expr><C-l> neocomplete#complete_common_string()
    "NEOSNIPPIT MAPPINGS
    imap <C-k> <Plug>(neosnippet_expand_or_jump)
    smap <C-k> <Plug>(neosnippet_expand_or_jump)
    xmap <C-k> <Plug>(neosnippet_expand_target)
endif
