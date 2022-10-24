local set = vim.opt
local g = vim.g

vim.cmd([[ colorscheme gruber ]])

set.breakindent = true
set.cindent = true
set.clipboard:append("unnamedplus")
set.completeopt = { "menuone", "preview", "noselect", "noinsert" }
set.cursorline = true
set.expandtab = true
set.ignorecase = true
set.inccommand = "split"
set.laststatus = 2
set.list = true
set.mousemodel = "extend"
set.number = true
set.path:append("**")
set.relativenumber = true
set.scrolloff = 1
set.shiftround = true
set.shiftwidth = 4
set.showmatch = true
set.sidescrolloff = 2
set.signcolumn = "yes:1"
set.smartcase = true
set.softtabstop = 4
set.splitbelow = true
set.splitright = true
set.tabstop = 4
set.termguicolors = true
set.undofile = true
set.updatetime = 500
set.wildignore = { ".git/*", "build/*", ".cache/*", ".clangd/*" }
set.iskeyword:append("-")

-- Global
g.netrw_keepdir = false

-- Neovim defaults
set.autoindent = true
set.autoread = true
set.backspace = { "indent", "eol", "start" }
set.hidden = true
set.hlsearch = true
set.incsearch = true
set.mouse = "nvi"
set.ruler = true
set.showcmd = true
set.smarttab = true
set.switchbuf = "uselast"
set.wildmenu = true
