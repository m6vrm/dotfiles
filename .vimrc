filetype plugin indent on
syntax enable

set autoindent
set autoread
set backspace=indent,eol,start
set backupdir=~/.vim/backup//
set cindent
set colorcolumn=80,100,120
set cursorline
set directory=~/.vim/swap//
set expandtab
set hidden
set ignorecase
set incsearch
set langmap=ёйцукенгшщзхъфывапролджэячсмитьбюЁЙЦУКЕHГШЩЗХЪФЫВАПРОЛДЖЭЯЧСМИТЬБЮ;`qwertyuiop[]asdfghjkl\\;'zxcvbnm\\,.~QWERTYUIOP{}ASDFGHJKL:\\"ZXCVBNM<>
set laststatus=2
set number
set path=.,**
set ruler
set shiftround
set shiftwidth=4
set signcolumn=number
set smartcase
set smarttab
set tabstop=4
set ttimeout
set ttimeoutlen=1
set undodir=~/.vim/undo//
set undofile
set updatetime=300
set wildignore=**/*.git/**,**/build/**,**/.build/**
set wildmenu

let &t_SI = "\e[5 q"
let &t_SR = "\e[4 q"
let &t_EI = "\e[2 q"

colorscheme retrobox

" Highlight trailing whitespaces
highlight TrailingWhitespace ctermbg=red guibg=red
match TrailingWhitespace /\s\+$/

" Autocmds
autocmd FileType * setlocal formatoptions-=c formatoptions-=r formatoptions-=o
autocmd CursorHold * silent call CocActionAsync('highlight')

" Plugins
call plug#begin()
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'
Plug 'scrooloose/nerdtree', { 'on': 'NERDTreeToggle' }
Plug 'neoclide/coc.nvim', {'branch': 'release'}
call plug#end()

" NERDTree
nnoremap <C-n> :NERDTreeToggle<CR>

" CoC
nmap <silent><nowait> [g <Plug>(coc-diagnostic-prev)
nmap <silent><nowait> ]g <Plug>(coc-diagnostic-next)
nmap <silent><nowait> gd <Plug>(coc-definition)
nmap <silent><nowait> gy <Plug>(coc-type-definition)
nmap <silent><nowait> gi <Plug>(coc-implementation)
nmap <silent><nowait> gr <Plug>(coc-references)
nmap <leader>rn <Plug>(coc-rename)
