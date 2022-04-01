let s:HERE = expand("<sfile>:p:h")
let s:VIMRC_DIR = s:HERE . "/.vimrc.d"

if !isdirectory(s:VIMRC_DIR)
    call mkdir(s:VIMRC_DIR, "p")
endif

for f in split(glob(s:VIMRC_DIR . "/*.vim"), "\n")
    exe "source" f
endfor
