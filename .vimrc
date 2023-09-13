filetype plugin indent on
syntax enable

set autoindent
set autoread
set backspace=indent,eol,start
set backupdir=~/.vim/backup//
set cindent
set cursorline
set directory=~/.vim/swap//
set expandtab
set hidden
set ignorecase
set incsearch
set path=.,**
set ruler
set shiftround
set shiftwidth=4
set smartcase
set smarttab
set tabstop=4
set ttimeout
set ttimeoutlen=1
set undodir=~/.vim/undo//
set undofile
set wildmenu

let &t_SI = "\e[5 q"
let &t_SR = "\e[4 q"
let &t_EI = "\e[2 q"

colorscheme gruber

nnoremap <space> :e %:h<cr>