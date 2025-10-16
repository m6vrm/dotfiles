filetype plugin indent on
syntax enable

set background=dark
colorscheme retrobox

set guioptions-=T
set guioptions-=m
set guioptions-=r

set autoread
set backupdir=~/.vim/backup//
set directory=~/.vim/swap//
set expandtab
set ignorecase
set incsearch
set langmap=ёйцукенгшщзхъфывапролджэячсмитьбюЁЙЦУКЕHГШЩЗХЪФЫВАПРОЛДЖЭЯЧСМИТЬБЮ;`qwertyuiop[]asdfghjkl\\;'zxcvbnm\\,.~QWERTYUIOP{}ASDFGHJKL:\\"ZXCVBNM<>
set nomagic
set number
set path=.,**
set ruler
set shiftwidth=4
set smartcase
set smarttab
set tabstop=4
set ttimeout
set ttimeoutlen=1
set undodir=~/.vim/undo//
set undofile

:highlight ExtraWhitespace ctermbg=red guibg=red
:match ExtraWhitespace /\s\+$/

let &t_SI = "\e[5 q"
let &t_SR = "\e[4 q"
let &t_EI = "\e[2 q"
