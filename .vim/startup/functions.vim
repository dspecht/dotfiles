" STRIP TRAILING WHITE SPACE
fun! <SID>StripTrailingWhiteSpaces()
    let l = line(".")
    let c = col(".")
    %s/\s\+$//e
    call cursor(l,c)
endfun

"On all file Types
autocmd BufWritePre * :call <SID>StripTrailingWhiteSpaces()

let g:quickfix_is_open = 0

fun! QuickfixToggle()
    if g:quickfix_is_open
        cclose
        let g:quickfix_is_open = 0
        execute g:quickfix_return_to_window . "wincmd w"
    else
        let g:quickfix_return_to_window = winnr()
        copen
        let g:quickfix_is_open = 1
    endif
endfun

fun! MergeTabs()
    if tabpagenr() == 1
        return
    endif
    let bufferName = bufname("%")
    if tabpagenr("$") == tabpagenr()
        close!
    else
        close!
        tabprev
    endif
    split
    execute "buffer " . bufferName
endfun
nmap <C-w>u :call MergeTabs()<CR>

fun! RenameFile() " Thanks to Gary Bernhardt & Ben Orenstein
    let old_name = expand('%')
    let new_name = input('New file name: ', expand('%'), 'file')
    if new_name != '' && new_name != old_name
        exec ':saveas ' . new_name
        exec ':silent !rm ' . old_name
        redraw!
    endif
endfun

fun! s:Sinit(filen)
	echo expand(a:filen)
	exec "ScreenShell cd " . expand(a:filen) . "; \\clear"
endfun

fun! FindDigitsToChange()
    let l:digitword=expand("<cword>")
    let l:wordLength=strlen(digitword)
    :normal! mm
    if wordLength < 6
        let l:extraNeeded = 6 - wordLength
        let l:extraWord=""
        while extraNeeded >= 1
           let l:extraWord = "0" . extraWord
           let extraNeeded -= 1
        endwhile
        let digitword = extraWord . digitword
        let digitword .= " "
    endif
    :normal! dwD`m
    :put=digitword
    :normal! $pkgJ
endfun

