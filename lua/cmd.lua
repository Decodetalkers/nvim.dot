vim.cmd([[filetype on]])
--vim.cmd([[colorscheme one]])
vim.g.Hexokinase_highlighters = { "backgroundfull" }
--vim.cmd([[let g:Hexokinase_highlighters = ['backgroundfull'] ]])
local aug = vim.api.nvim_create_augroup("tabs", {})
vim.api.nvim_create_autocmd({ "BufNewFile", "BufWritePre", "BufRead" }, {
    pattern = "*",
    group = aug,
    callback = function()
        require("cmd.files").Settab()
        vim.cmd([[setlocal nofoldenable]])
    end,
})
--vim.api.nvim_create_autocmd("BufWritePre", {
--    pattern = { "*.c", "*.h", "*.cpp", "*.cs", "*.ts", "*.kt" },
--    callback = vim.lsp.buf.formatting_sync
--})
--vim.highlight.create({"Function","Comment"}, {cterm="italic", gui="italic"}, false)
--vim.cmd([[
--highlight Function cterm=italic gui=italic
--highlight Comment cterm=italic gui=italic
--]])

vim.cmd([[
au FileType zsh set filetype=sh
]])
