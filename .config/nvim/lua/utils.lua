local Utils = {}

function Utils.trim_trailing_whitespaces()
    if not vim.o.binary and vim.o.filetype ~= "diff" then
        local saved_view = vim.fn.winsaveview()
        vim.cmd([[ keeppatterns %s/\s\+$//e ]])  -- trim trailing whitespaces
        vim.cmd([[ keeppatterns %s/\n*\%$//e ]]) -- trim trailing newlines
        vim.fn.winrestview(saved_view)
    end
end

return Utils
