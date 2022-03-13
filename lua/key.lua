vim.api.nvim_set_keymap("n", "<M-f>", ":NvimTreeToggle<cr>", { noremap = false, silent = true })
--vim.api.nvim_set_keymap("n", "<M-f>", ":CocCommand explorer<cr>", { noremap = false, silent = true })
vim.api.nvim_set_keymap("n", "<M-g>", ":Gdiffsplit<cr>", { noremap = false, silent = true })
--vim.api.nvim_set_keymap("n", "<M-y>", ":Gitsigns toggle_current_line_blame<cr>", { noremap = false, silent = true })
vim.api.nvim_set_keymap("n", "<M-r>", ":Lspsaga lsp_finder<CR>", { noremap = false, silent = true })
vim.api.nvim_set_keymap("n", "sd", ":Lspsaga show_line_diagnostics<CR>", { noremap = false, silent = true })
vim.api.nvim_set_keymap("n", "df", ":Lspsaga preview_definition<CR>", { noremap = false, silent = true })
vim.api.nvim_set_keymap("n", "fg", ":Telescope<CR>", { noremap = false, silent = true })
vim.api.nvim_set_keymap("n", "<M-j>", ":lua vim.lsp.diagnostic.goto_next()<CR>", { noremap = false, silent = true })
vim.api.nvim_set_keymap("n", "<M-k>", ":lua vim.lsp.diagnostic.goto_prev()<CR>", { noremap = false, silent = true })
--vim.api.nvim_set_keymap(
--	"n",
--	"sw",
--	':lua require\'lsp_extensions\'.inlay_hints{enabled = {"TypeHint", "ChainingHint", "ParameterHint"}}<CR>',
--	{ noremap = false, silent = true }
--)
vim.api.nvim_set_keymap("n", "<M-d>", ":AerialToggle<CR>", { noremap = false, silent = true })
vim.api.nvim_set_keymap("n", "<M-e>", "<cmd> lua require('key.undo').Open()<cr>", { noremap = false, silent = true })
vim.api.nvim_set_keymap("n", "ff", ":bn<cr>", { noremap = false, silent = true })
vim.api.nvim_set_keymap(
    "n",
    "<M-q>",
    "<cmd> lua require('key.relative').change()<cr>",
    { noremap = false, silent = true }
)
vim.api.nvim_set_keymap("n", "<leader>sd", ":SidebarNvimToggle<CR>", { noremap = false, silent = true })
--vim.api.nvim_set_keymap("n", "<C-]>", "<Plug>(coc-definition)", { noremap = false, silent = true })
