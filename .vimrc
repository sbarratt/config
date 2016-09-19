" Shane Barratt's .vimrc
"
" Type ':h setting' if you don't understand a setting
"

" No arrow keys allowed
noremap <Up> <Nop>
noremap <Down> <Nop>
noremap <Left> <Nop>
noremap <Right> <Nop>
inoremap <Up> <Nop>
inoremap <Down> <Nop>
inoremap <Left> <Nop>
inoremap <Right> <Nop>

" Remap jj to <Esc>
:imap jj <Esc>

"===== LaTeX =====

" filetype: LaTeX instead of TeX for *.tex
let g:tex_flavor='latex'

" indent: don't indent braces
let g:tex_indent_brace=0

"===== Save & Load =====

" do not create *.swp files
set noswapfile

" save file before :make or switching buffers
set autowrite

" load file when it is changed externally
set autoread

"===== Indentation =====

" Note -- never use smartindent

" inherit indentation from previous line
set autoindent

" smartindent is deprecated in favor of cindent
set nosmartindent

" disable C-style indentation
set nocindent

" show line-number
set number

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

" highlight search
set hlsearch

" Command line completion
set wildmenu

" Show matching parentheses  
set showmatch

" Show matching parentheses for 200ms
set matchtime=2

" 80 characters max per line
set colorcolumn=80

" For indents that consist of 4 space characters but are entered with the tab
" key:
set tabstop=4 softtabstop=0 expandtab shiftwidth=4 smarttab

" Set 7 lines to the cursor - when moving vertically using j/k
set so=7

" When searching try to be smart about cases
set smartcase

" Set 7 lines to the cursor - when moving vertically using j/k
set so=7

" No annoying sound on errors
set noerrorbells
set novisualbell
set t_vb=
set tm=500

" Treat long lines as break lines (useful when moving around in them)
map j gj
map k gk

" Smart way to move between windows
map <C-j> <C-W>j
map <C-k> <C-W>k
map <C-h> <C-W>h
map <C-l> <C-W>l

""""""""""""""""""""""""""""""
" => Status line
""""""""""""""""""""""""""""""
" Always show the status line
set laststatus=2

" Format the status line
set statusline=\ %{HasPaste()}%F%m%r%h\ %w\ \ CWD:\ %r%{getcwd()}%h\ \ \ Line:\ %l\ \ Column:\ %c

" Remap VIM 0 to first non-blank character
map 0 ^

" Delete trailing white space on save, useful for Python and CoffeeScript ;)
func! DeleteTrailingWS()
  exe "normal mz"
  %s/\s\+$//ge
  exe "normal `z"
endfunc
autocmd BufWrite *.py :call DeleteTrailingWS()
autocmd BufWrite *.coffee :call DeleteTrailingWS()

" Return to last edit position when opening files (You want this!)
au BufReadPost * if line("'\"") > 1 && line("'\"") <= line("$") | exe "normal! g'\"" | endif

" Returns true if paste mode is enabled
function! HasPaste()
    if &paste
        return 'PASTE MODE  '
    endif
    return ''
endfunction

" Theme
set t_Co=256
colorscheme wombat256

" New Line no insert
nmap <S-Enter> O<Esc>
nmap <CR> o<Esc>
