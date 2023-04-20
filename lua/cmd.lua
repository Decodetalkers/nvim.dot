vim.cmd([[filetype on]])
--vim.cmd([[colorscheme one]])
vim.g.Hexokinase_highlighters = { "backgroundfull" }

local function file_exists(name)
    local f = io.open(name, "r")
    if f ~= nil then
        io.close(f)
        return true
    else
        return false
    end
end

--vim.cmd([[let g:Hexokinase_highlighters = ['backgroundfull'] ]])
local aug = vim.api.nvim_create_augroup("tabs", {})
vim.api.nvim_create_autocmd({ "BufNewFile", "BufWritePre", "BufRead" }, {
    pattern = "*",
    group = aug,
    callback = function()
        -- check if .editorconfig exist
        if not file_exists(".editorconfig") then
            require("cmd.files").Settab()
        end
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
