local opt = vim.opt
opt.number = true
opt.wrap = true
opt.mouse = "a"
--opt.guifont = "DroidSansMono_Nerd_Font:h11"
--vim.cmd([[filetype off]])
vim.cmd([[packadd packer.nvim]])
--opt.foldmethod = "syntax"
require("plug")
require("key")
require("cmps")
vim.g.foldmethod = "expr"
vim.g.foldexpr = "nvim_treesitter#foldexpr()"
opt.termguicolors = true
opt.background = "dark"
opt.cursorline = true
opt.relativenumber = true
opt.undofile = true
opt.inccommand = "nosplit"
opt.undodir = os.getenv("HOME") .. "/.vim/undo"
require("cmd")
