vim.cmd([[
autocmd WinEnter * set wrap

fun! SetRelativeNumber()
    " Don't strip on these filetypes
    " disable multiple filetypes example: if &ft =~ 'ruby\|javascript\|perl'
    if &ft =~ 'toggleterm'
        return
    endif

    set number
    set rnu
endfun

autocmd BufRead,WinEnter * call SetRelativeNumber()
]])
