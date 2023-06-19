local opt = vim.opt
opt.number = true
opt.wrap = true
opt.mouse = "a"
vim.g.do_filetype_lua = 1

local uselazy = true
--vim.o.cmdheight = 0
--vim.g.did_load_filetypes = 0
--opt.guifont = "DroidSansMono_Nerd_Font:h11"
--vim.cmd([[filetype off]])
local fn = vim.fn
local packer_bootstrap = {}
local data_path = fn.stdpath("data")
if uselazy then
    local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
    if not vim.loop.fs_stat(lazypath) then
        packer_bootstrap = vim.fn.system({
            "git",
            "clone",
            "--filter=blob:none",
            "https://github.com/folke/lazy.nvim.git",
            "--branch=stable", -- latest stable release
            lazypath,
        })
    end
    vim.opt.rtp:prepend(lazypath)
else
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
end


if packer_bootstrap then
    opt.foldenable = false
    opt.termguicolors = true
    opt.background = "dark"
    opt.cursorline = true
    opt.relativenumber = true
    opt.undofile = true
    opt.inccommand = "nosplit"
    opt.undodir = data_path .. "/undo"
    vim.g.Hexokinase_highlighters = { "backgroundfull" }
    if not uselazy then
        vim.cmd([[packadd packer.nvim]])
    end

    --opt.foldmethod = "syntax"

    local prequire = require("prequire")
    if uselazy then
        require("lazyplug")
    else
        require("plug")
    end

    local nvim_lsp = prequire("lspconfig")
    if nvim_lsp then
        require("key")
        require("cmps")
        require("mydap")
    end
    vim.opt.foldmethod = "expr"
    vim.opt.foldexpr = "nvim_treesitter#foldexpr()"

    if nvim_lsp then
        require("cmd")
    end
    -- for test
    require("mytreesitter")
end
