" unlet! skip_defaults_vim
" source $VIMRUNTIME/defaults.vim

filetype plugin indent on
syntax enable

set autoindent
set autoread
set backspace=indent,eol,start
set backupdir=~/.vim/backup//
set cindent
set colorcolumn=80
set cursorline
set directory=~/.vim/swap//
set expandtab
set hidden
set ignorecase
set incsearch
set langmap=ёйцукенгшщзхъфывапролджэячсмитьбюЁЙЦУКЕHГШЩЗХЪФЫВАПРОЛДЖЭЯЧСМИТЬБЮ;`qwertyuiop[]asdfghjkl\\;'zxcvbnm\\,.~QWERTYUIOP{}ASDFGHJKL:\\"ZXCVBNM<>
set laststatus=2
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
set wildignore=**/*.git/**,**/build/**,**/.cache/**,**/.clangd/**
set wildmenu

let &t_SI = "\e[5 q"
let &t_SR = "\e[4 q"
let &t_EI = "\e[2 q"

colorscheme gruber-plain

highlight TrailingWhitespace ctermbg=red guibg=red
call matchadd("TrailingWhitespace", '\v\s+$')

command -nargs=1 GG vimgrep /<args>/gj `git ls-files` | cw
command -nargs=1 GA vimgrep /<args>/gj ** | cw

autocmd FileType * setlocal formatoptions-=c formatoptions-=r formatoptions-=o
