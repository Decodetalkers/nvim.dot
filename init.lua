local opt = vim.opt
opt.number=true
opt.wrap=true;
opt.mouse = 'a'
opt.guifont = "DroidSansMono_Nerd_Font:h11"
vim.cmd [[filetype off]]
vim.cmd [[packadd packer.nvim]]
opt.foldmethod="syntax"
pcall(require,'plug')
require'nvim-tree'.setup{}
require('gitsigns').setup()

--require'gitsigns'.setup{}

--local sumneko_root_path = vim.fn.stdpath('cache')..'/lspconfig/sumneko_lua/lua-language-server'
--local sumneko_binary = sumneko_root_path.."/bin/"..system_name.."/lua-language-server"
--local sumneko_root_path = '/usr/bin/lua-language-server'
--local sumneko_binary = '/usr/bin/lua-language-server'

opt.termguicolors=true
opt.background="dark"
opt.cursorline=true
opt.undofile=true
opt.undodir="/home/cht/.vim/undo"
vim.cmd [[colorscheme one]]
vim.cmd [[hi CursorLine cterm=bold  guibg=#333333]]
vim.cmd [[hi CocFadeOut cterm=bold  guibg=#666666]]
vim.cmd [[let g:airline#extensions#tabline#enabled = 1 ]]
vim.cmd [[let g:airline_powerline_fonts = 1]]
vim.cmd [[autocmd ColorScheme * hi Normal guibg=#1b1e27]]
vim.cmd [[let g:Hexokinase_highlighters = ['backgroundfull'] ]]

vim.api.nvim_set_keymap("n","<M-f>",":NvimTreeToggle<cr>",{ noremap = false, silent = true })
vim.api.nvim_set_keymap("n","<M-g>",":Flog<cr>",{ noremap = false, silent = true })
vim.api.nvim_set_keymap("n","<M-w>",":Tagbar<cr>",{ noremap = false, silent = true })
vim.api.nvim_set_keymap("n","<M-d>",":Vista<cr>",{ noremap = false, silent = true })
