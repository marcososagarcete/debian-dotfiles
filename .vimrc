set clipboard=unnamedplus

syntax on
filetype plugin indent on
set tabstop=4
set shiftwidth=4
set expandtab
set autoindent

set number relativenumber
autocmd FileType c set makeprg=gcc\ %\ -o\ %:r
