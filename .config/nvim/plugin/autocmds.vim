augroup TrimTrailingWhitespaces
    autocmd!
    autocmd BufWritePre * :lua require("utils").trim_trailing_whitespaces()
augroup END

augroup YankHighlight
    autocmd!
    autocmd TextYankPost * silent! :lua vim.highlight.on_yank()
augroup END
