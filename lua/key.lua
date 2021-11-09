local keys = {}

keys.keys =function ()
  vim.api.nvim_set_keymap("n","<M-f>",":NvimTreeToggle<cr>",{ noremap = false, silent = true })
  vim.api.nvim_set_keymap("n","<M-g>",":Flog<cr>",{ noremap = false, silent = true })
  vim.api.nvim_set_keymap("n","<M-w>",":Tagbar<cr>",{ noremap = false, silent = true })
  vim.api.nvim_set_keymap("n","<M-d>","<cmd> lua require('functions/vista').Open()<cr>",{ noremap = false, silent = true })
end
return keys
