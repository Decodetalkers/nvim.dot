local opt = vim.opt
opt.number = true
opt.wrap = true
opt.mouse = "a"
opt.guifont = "DroidSansMono_Nerd_Font:h11"
--vim.cmd([[filetype off]])
vim.cmd([[packadd packer.nvim]])
--opt.foldmethod = "syntax"
require("plug")
require("key")
require("cmps")
vim.g.foldmethod = 'expr'
vim.g.foldexpr = 'nvim_treesitter#foldexpr()'
opt.termguicolors = true
opt.background = "dark"
opt.cursorline = true
opt.relativenumber = true
opt.undofile = true
opt.inccommand = "nosplit"
opt.undodir = os.getenv("HOME") .. "/.vim/undo"
vim.cmd([[filetype on]])
vim.cmd([[colorscheme one]])
vim.cmd([[hi CursorLine cterm=bold  guibg=#333333]])
vim.cmd([[hi CocFadeOut cterm=bold  guibg=#666666]])
vim.cmd([[let g:airline#extensions#tabline#enabled = 1 ]])
vim.cmd([[let g:airline_powerline_fonts = 1]])
vim.cmd([[hi Normal guibg=#1b1e27]])
vim.cmd([[let g:Hexokinase_highlighters = ['backgroundfull'] ]])
vim.cmd([[autocmd BufNewFile,BufWritePre,BufRead *.* exec ":lua require('functions.files').Settab()" ]])
vim.cmd([[autocmd BufNewFile,BufRead *.conf,*.ini set filetype=dosini ]])
vim.cmd([[autocmd! BufNewFile,BufRead *    setlocal nofoldenable]])
vim.cmd([[let g:blamer_enabled = 1]])
-- for scrollbars
vim.cmd([[augroup ScrollbarInit]])
vim.cmd([[autocmd!]])
vim.cmd([[autocmd WinScrolled,VimResized,QuitPre * silent! lua require('scrollbar').show()]])
vim.cmd([[autocmd WinEnter,FocusGained           * silent! lua require('scrollbar').show()]])
vim.cmd([[autocmd WinLeave,BufLeave,BufWinLeave,FocusLost  * silent! lua require('scrollbar').clear()]])
vim.cmd([[augroup end]])
-- for fsharp
-- vim.cmd([[au FileType glsl set filetype=fsharp]])
-- vim.cmd([[au BufNewFile,BufRead *.fs  set filetype=fsharp]])
--vim.cmd([[autocmd BufNewFile,BufRead *.fsproj set filetype=xml]])
-- for vimspector
vim.cmd([[let g:vimspector_enable_mappings = 'HUMAN']])
vim.cmd([[packadd! vimspector]])

--vim.cmd(
--    [[autocmd BufEnter,BufWinEnter,TabEnter *.rs :lua require'lsp_extensions'.inlay_hints{enabled = {"TypeHint", "ChainingHint", "ParameterHint"}}]]
--)
vim.cmd([[highlight Function cterm=italic gui=italic]])
vim.cmd([[highlight Comment cterm=italic gui=italic]])
