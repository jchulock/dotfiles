set nocompatible
filetype indent plugin on
syntax enable

highlight LineNr ctermfg=grey
set shortmess+=I
set ruler
set number
set showcmd
set cmdheight=2
set history=100
set wildmenu

map <F1> <Esc>
imap <F1> <Esc>

set tabstop=4
set shiftwidth=4
set expandtab
"set autoindent

set lazyredraw

" search stuff
set magic
set ignorecase
set smartcase
set incsearch
set hlsearch
set showmatch
map N Nzz
map n nzz
nnoremap <C-L> :nohlsearch<CR><C-L>

" first check for these i guess. also use like let vimdir = ~/.vim etc
silent !mkdir -p ~/.vim/tmp/backup
silent !mkdir -p ~/.vim/tmp/swap
" // at end of path writes full path, (weakly) ensuring uniqueness
set backupdir=~/.vim/tmp/backup//
set directory=~/.vim/tmp/swap//
if has('persistent_undo')
    silent !mkdir -p ~/.vim/tmp/undo
    set undofile
    set undodir=~/.vim/tmp/undo//
endif

nnoremap Y y$
set backspace=indent,eol,start

set confirm
set visualbell

set mouse=a

"only works when running cmd from vim
set autoread

set relativenumber
set number
