set nocompatible
filetype indent plugin on
syntax enable

let mapleader = "\<Space>"

"TODO lazy load config
call plug#begin('~/.vim/plugged')
Plug 'tpope/vim-fugitive'
Plug 'easymotion/vim-easymotion'
"Plug 'Valloric/YouCompleteMe'
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
Plug 'junegunn/fzf.vim' "configure Ag
Plug 'scrooloose/nerdtree' "netrw / disable unless asked for (lazy)
Plug 'vim-airline/vim-airline' "fix font stuff
Plug 'vim-airline/vim-airline-themes'
Plug 'majutsushi/tagbar'
Plug 'othree/yajs.vim' "check alternatives..
"Plug 'SirVer/ultisnips' "we'll see 
"Plug 'isRuslan/vim-es6'
"Plug 'vim-syntastic/syntastic' "slow af lmao
Plug 'Raimondi/delimitMate'
Plug 'nathanaelkane/vim-indent-guides' "change default colors
"Plug 'Chun-Yang/vim-action-ag' "why the doesn't this work anymore :(
Plug 'styled-components/vim-styled-components'
Plug 'https://github.com/ARM9/arm-syntax-vim'
"Plug 'davidhalter/jedi-vim'
Plug 'zchee/deoplete-jedi'
if has('nvim')
  Plug 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' }
else
  Plug 'Shougo/deoplete.nvim'
  Plug 'roxma/nvim-yarp'
  Plug 'roxma/vim-hug-neovim-rpc'
endif
call plug#end()

let g:deoplete#enable_at_startup = 1
inoremap <expr> <Tab> pumvisible() ? "\<C-n>" : "\<Tab>"
inoremap <expr> <S-Tab> pumvisible() ? "\<C-p>" : "\<S-Tab>"

"ARM SYNTAX
au BufNewFile,BufRead *.s,*.S set filetype=arm " arm = armv6/7

"jedi
set completeopt-=preview

" PLUGIN "

"easymotion
"map <Leader> <Plug>(easymotion-prefix)

"fzf
nmap <leader><tab> <plug>(fzf-maps-n)
xmap <leader><tab> <plug>(fzf-maps-x)
omap <leader><tab> <plug>(fzf-maps-o)
imap <c-x><c-k> <plug>(fzf-complete-word)
imap <c-x><c-f> <plug>(fzf-complete-path)
imap <c-x><c-j> <plug>(fzf-complete-file-ag)
imap <c-x><c-l> <plug>(fzf-complete-line)

nmap <C-n> :NERDTreeToggle<CR>
nmap <C-m> :TagbarToggle<CR>

"let g:ctrlp_map = '<c-p>'
"let g:ctrlp_cmd = 'CtrlPBuffer'
nnoremap <silent> <c-p> :Buffers<CR>
nnoremap <silent> <c-o> :Files<CR>

"let g:UltiSnipsExpandTrigger="<tab>"

let g:airline_powerline_fonts = 1
" air-line
let g:airline_powerline_fonts = 1

if !exists('g:airline_symbols')
    let g:airline_symbols = {}
endif

" unicode symbols
let g:airline_left_sep = '»'
let g:airline_left_sep = '▶'
let g:airline_right_sep = '«'
let g:airline_right_sep = '◀'
let g:airline_symbols.linenr = '␊'
let g:airline_symbols.linenr = '␤'
let g:airline_symbols.linenr = '¶'
let g:airline_symbols.branch = '⎇'
let g:airline_symbols.paste = 'ρ'
let g:airline_symbols.paste = 'Þ'
let g:airline_symbols.paste = '∥'
let g:airline_symbols.whitespace = 'Ξ'

" airline symbols
let g:airline_left_sep = ''
let g:airline_left_alt_sep = ''
let g:airline_right_sep = ''
let g:airline_right_alt_sep = ''
let g:airline_symbols.branch = ''
let g:airline_symbols.readonly = ''
let g:airline_symbols.linenr = ''

"/PLUGIN "

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

" disable <Esc>O arrow key delay
noremap <Esc>O O
set ttimeoutlen=10 "something something ssh, don't matter local I think

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
set visualbell t_vb= "disable bell/flash

set mouse=a

" only works when running cmd from vim
set autoread

set relativenumber
set number

" write as root
cmap w!! w !sudo /usr/bin/tee > /dev/null %

" window nav
"nnoremap <C-H> <C-W>h<C-W><Esc>
"nnoremap <C-J> <C-W>j<C-W><Esc>
"nnoremap <C-K> <C-W>k<C-W><Esc>
"nnoremap <C-L> <C-W>l<C-W><Esc>
""interferes with <C-L>, leader key was some weirdness
