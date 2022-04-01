" Moving among buffers
nnoremap <C-N> :next <CR>
nnoremap <C-P> :previous <CR>

" Moving among tabs
nnoremap <C-L> :redraw!<CR>:tabn<CR>
nnoremap <C-H> :tabp <CR>

" Clear hlsearch
nmap <ESC><ESC> :nohlsearch<CR>:set nopaste<CR><ESC>

" cf. https://stackoverflow.com/a/4257175
nnoremap * *``
nnoremap # #``

" Open a buffers list in the QuickFix window
cabbrev ls ListBuffers
