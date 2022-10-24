local keymap = vim.keymap

vim.g.mapleader = " "

keymap.set("i", "jk", "<ESC>")
keymap.set("n", "x", '"_x')
keymap.set({ "n", "v" }, "<Space>", "<NOP>")
keymap.set("n", "<C-L>", "<Cmd>nohlsearch<Bar>diffupdate<Bar>normal! <C-L><CR>")

-- telescope
keymap.set("n", "<Leader>ff", "<Cmd>Telescope find_files<CR>")
keymap.set("n", "<Leader>fg", "<Cmd>Telescope live_grep<CR>")
keymap.set("n", "<Leader>fb", "<Cmd>Telescope buffers<CR>")
keymap.set("n", "<Leader>fh", "<Cmd>Telescope help_tabs<CR>")
