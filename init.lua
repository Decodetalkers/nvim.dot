local opt = vim.opt
opt.number = true
opt.wrap = true
opt.mouse = "a"
vim.g.do_filetype_lua = 1
--vim.o.cmdheight = 0
--vim.g.did_load_filetypes = 0
--opt.guifont = "DroidSansMono_Nerd_Font:h11"
--vim.cmd([[filetype off]])
local fn = vim.fn
local packer_bootstrap = {}
local data_path = fn.stdpath("data")
local install_path = data_path .. "/site/pack/packer/opt/packer.nvim"
if fn.empty(fn.glob(install_path)) > 0 then
    packer_bootstrap = fn.system({
        "git",
        "clone",
        "--depth",
        "1",
        "https://github.com/wbthomason/packer.nvim",
        install_path,
    })
end
if packer_bootstrap then
    vim.cmd([[packadd packer.nvim]])
    --opt.foldmethod = "syntax"

    local prequire = require("prequire")
    require("plug")

    local nvim_lsp = prequire("lspconfig")
    if nvim_lsp then
        require("key")
        require("cmps")
        require("mydap")
    end
    vim.opt.foldmethod = "expr"
    vim.opt.foldexpr = "nvim_treesitter#foldexpr()"
    opt.termguicolors = true
    opt.background = "dark"
    opt.cursorline = true
    opt.relativenumber = true
    opt.undofile = true
    opt.inccommand = "nosplit"
    opt.undodir = data_path .. "/undo"
    if nvim_lsp then
        require("cmd")
    end
end
-- for test
require("mytreesitter")

local aerial = require('aerial')

-- Format the list representing the symbol path
-- Grab it from https://github.com/stevearc/aerial.nvim/blob/master/lua/lualine/components/aerial.lua
local function format_symbols(symbols, depth, separator, icons_enabled)
    local parts = {}
    depth = depth or #symbols

    if depth > 0 then
        symbols = { unpack(symbols, 1, depth) }
    else
        symbols = { unpack(symbols, #symbols + 1 + depth) }
    end

    for _, symbol in ipairs(symbols) do
        if icons_enabled then
            table.insert(parts, string.format("%s %s", symbol.icon, symbol.name))
        else
            table.insert(parts, symbol.name)
        end
    end

    return table.concat(parts, separator)
end

local function winbar_get()
    local mode = "%-5{%v:lua.string.upper(v:lua.vim.fn.mode())%}"
    --local file_name = "%-.30t"
    local buf_nr = "[%n]"
    local modified = " %-m"
    --local file_type = " %y"
    local right_align = "%="
    local line_no = "%10([%l/%L%)]"
    local pct_thru_file = "%5p%%"
    local symbols = aerial.get_location(true)
    local symbol_path = format_symbols(symbols, nil, ' > ', true)
    return string.format(
        "%s%s%s  %s%s%s%s",
        mode,
        --file_name,
        buf_nr,
        modified,
        --file_type,
        (symbol_path == "" and "..." or symbol_path),
        right_align,
        line_no,
        pct_thru_file
    )

end

vim.opt.winbar = winbar_get()
-- vim.opt.statusline = status_line()
--vim.opt.winbar = status_line()
local winbar_aug = vim.api.nvim_create_augroup("winbar", {})

vim.api.nvim_create_autocmd({ "CursorMoved" }, {
    pattern = "*",
    group = winbar_aug,
    callback = function()
        pcall(vim.api.nvim_set_option_value, 'winbar', winbar_get(), { scope = 'local' })
    end
})
