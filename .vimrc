" Vundle plugin setup
set nocompatible " makes vim more compatible with vi (?) I think
filetype off

" set the runtime path to include Vundle and initialize it
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

Plugin 'VundleVim/Vundle.vim'
Plugin 'valloric/youcompleteme'
Plugin 'rhysd/vim-clang-format'
Plugin 'vim-python/python-syntax'
Plugin 'psf/black'

call vundle#end()
filetype plugin indent on

" global editor setup
let python_highlight_all=1
set exrc
set secure
set number
set expandtab
set tabstop=4
set softtabstop=4
set autoindent
set shiftwidth=4
set hlsearch
set colorcolumn=80
set backspace=indent,eol,start
highlight ColorColumn ctermbg=darkgray
syntax on

" python-syntax
let g:python_highlight_all=1

" status line
set statusline+=%f
set laststatus=2 " this is needed to make statusline always visible

" run Black on *.py file save; Black needs to be installed for this to work.
" autocmd BufWritePre *.py 'Black'

set path+=**
set wildmenu
