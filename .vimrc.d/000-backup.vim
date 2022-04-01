if v:version >= 700 && !has("win32")
    " Ensure the container directory
    let s:VIM_DATA_DIR = $HOME . "/.vim.local"
    if !isdirectory(s:VIM_DATA_DIR)
        call mkdir(s:VIM_DATA_DIR, "p")
    endif

    " Backup
    set backup
    exec "set backupdir=" . s:VIM_DATA_DIR . "/backup"
    au BufWritePre * let &bex = "." . strftime("%Y%m%d%H") . "~"
    if !isdirectory(&backupdir)
        call mkdir(&backupdir, "p")
    endif

    " Swapfile
    set swapfile
    exec "set directory=" . s:VIM_DATA_DIR . "/swap"
    set updatecount=200
    if !isdirectory(&directory)
        call mkdir(&directory, "p")
    endif
endif

