" Shane Barratt's .vimrc
"
" Type ':h setting' if you don't understand a setting

" No arrow keys allowed
noremap <Up> <Nop>
noremap <Down> <Nop>
noremap <Left> <Nop>
noremap <Right> <Nop>
inoremap <Up> <Nop>
inoremap <Down> <Nop>
inoremap <Left> <Nop>
inoremap <Right> <Nop>

" Use Vim settings, rather than Vi settings (much better!).
" This must be first, because it changes other options as a side effect.
set nocompatible

" Make backspace behave in a sane manner.
set backspace=indent,eol,start

" Syntax highlighting
syntax on

" Enable file type detection and do language-dependent indenting
filetype plugin indent on

" Incremental searching
set incsearch

" Command line completion
set wildmenu

" Show matching parentheses  
set showmatch
