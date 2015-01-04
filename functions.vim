" STRIP TRAILING WHITE SPACE
fun! <SID>StripTrailingWhiteSpaces()
	let l = line(".")
	let c = col(".")
	%s/\s\+$//e
	call cursor(l,c)
endfun

"On all file Types
autocmd BufWritePre * :call <SID>StripTrailingWhiteSpaces()

"Build C or CPP project from batch file
fun! RunCppBuildBatch()
    "Relient on the current working directory to be correct

    ""TODO: make this more universal for all C|CPP projects compiling from a
    "compiling from a batch file

    "NOTE: output should be going to like error.txt soon so we can start
    "   filling the quickfix list with the complation errors

    execute 'silent !start cmd /c "build.bat" & pause'

    "add file to quickfix list
    "cgetfile '../build/CompilationErrors.txt'
endfun

fun! RunCppExecutable()
	" TODO: Make this actually run the .exe or maybe devenv .exe
endfun

fun! s:Sinit(filen)
	echo expand(a:filen)
	exec "ScreenShell cd " . expand(a:filen) . "; \\clear"
endfun

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
