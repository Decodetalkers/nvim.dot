local opt = vim.opt
opt.number = true
opt.wrap = true
opt.mouse = "a"
vim.cmd([[filetype off]])
vim.cmd([[packadd packer.nvim]])
opt.foldmethod = "syntax"
require("plug")
require("key")
require("cmps")
opt.termguicolors = true
opt.background = "dark"
opt.cursorline = true
opt.relativenumber = true
opt.undofile = true
opt.inccommand = "nosplit"
--opt.undodir = os.getenv("HOME") .. "/.vim/undo"
vim.cmd([[colorscheme one]])
vim.cmd([[hi CursorLine cterm=bold  guibg=#333333]])
vim.cmd([[hi CocFadeOut cterm=bold  guibg=#666666]])
--vim.cmd([[autocmd ColorScheme * hi Normal guibg=#1b1e27]])
vim.cmd([[hi Normal guibg=#1b1e27]])
vim.cmd([[let g:Hexokinase_highlighters = ['backgroundfull'] ]])
vim.cmd([[autocmd BufNewFile,BufWritePre,BufRead *.* lua require('functions.files').Settab()]])
vim.cmd([[autocmd BufNewFile,BufRead *.conf,*.ini set filetype=dosini ]])
vim.cmd([[autocmd!   BufNewFile,BufRead *    setlocal nofoldenable]])
vim.cmd([[let g:blamer_enabled = 1]])
vim.cmd([[syntax on]])
-- for scrollbars
vim.cmd([[augroup ScrollbarInit]])
vim.cmd([[autocmd!]])
vim.cmd([[autocmd WinScrolled,VimResized,QuitPre * silent! lua require('scrollbar').show()]])
vim.cmd([[autocmd WinEnter,FocusGained           * silent! lua require('scrollbar').show()]])
vim.cmd([[autocmd WinLeave,BufLeave,BufWinLeave,FocusLost            * silent! lua require('scrollbar').clear()]])
vim.cmd([[augroup end]])
--vim.cmd([[au FileType glsl set filetype=fsharp]])
--vim.cmd([[autocmd BufNewFile,BufRead *.fsproj set filetype=xml]])
-- for vimspector
--vim.cmd([[let g:vimspector_enable_mappings = 'HUMAN']])
--vim.cmd([[packadd! vimspector]])

vim.cmd([[filetype on]])
vim.cmd([[filetype plugin on]])
