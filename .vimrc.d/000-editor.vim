set nocompatible

set number
set ruler
colorscheme desert

" indentation
set autoindent
set tabstop=4
set shiftwidth=4
set expandtab
set lcs=tab:>\ ,trail:_,extends:\
set list


" wrapping
set wrap
set textwidth=0

" search
set incsearch
set ignorecase
set smartcase
set wrapscan
set hlsearch

" status line
set showcmd
set laststatus=2
set statusline=%<%f\ %r%h%w%=%{'['.(&fenc!=''?&fenc:&enc).']['.&ff.']'}%y[%3l,%3c][%3p%%]%m

" misc
set foldmethod=marker
set history=10000
set wildmode=longest,list
set fileencodings=utf-8,cp932,euc-jp,ucs-bom,iso-2022-jp-3,iso-2022-jp,eucjp-ms,euc-jisx0213

" Turnon omni complete
" set omnifunc=syntaxcomplete#Complete
syntax on

