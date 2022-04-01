function! s:packager_init(packager) abort
  call a:packager.add("prabirshrestha/vim-lsp")
  call a:packager.add("mattn/vim-lsp-settings")
  call a:packager.add("prabirshrestha/asyncomplete.vim")
  call a:packager.add("prabirshrestha/asyncomplete-lsp.vim")
  call a:packager.add("dense-analysis/ale")
endfunction

packadd vim-packager
call packager#setup(function("s:packager_init"))

" indentLine
" ==========
let g:indentLine_char = '|'

" ale
" ===
" cf. https://github.com/w0rp/ale
let g:ale_linters = {
\    'python': ['flake8'],
\}
let g:ale_set_loclist = 1
let g:ale_set_quickfix = 0
let g:ale_open_list = 1
let g:ale_list_window_size = 3
