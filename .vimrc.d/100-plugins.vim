function! s:packager_init(packager) abort
  call a:packager.add("prabirshrestha/vim-lsp", {"requires": [
  \ "hashivim/vim-terraform"
  \ ]})
  call a:packager.add("mattn/vim-lsp-settings")
  call a:packager.add("prabirshrestha/asyncomplete.vim")
  call a:packager.add("prabirshrestha/asyncomplete-lsp.vim")
  call a:packager.add("dense-analysis/ale")
  call a:packager.add("google/vim-jsonnet")
endfunction

" see: https://github.com/hashivim/vim-terraform/issues/82
filetype off

packadd vim-packager
call packager#setup(function("s:packager_init"))

filetype plugin indent on


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

" vim-lsp-settings
" ================
let g:lsp_settings_filetype_tf = 'terraform-lsp'

let g:lsp_log_verbose = 1
let g:lsp_log_file = expand('~/vim-lsp.log')

let g:lsp_settings = {
\   'pylsp-all': {
\       'workspace_config': {
\           'pylsp': {
\               'configurationSources': ['flake8'],
\               'plugins': {
\                   'flake8': {
\                       'exclude': ['venv/']
\                   }
\               }
\           },
\       },
\   },
\}
