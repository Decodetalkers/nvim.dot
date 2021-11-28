local keys = {}

keys.keys = function()
	vim.api.nvim_set_keymap("n", "<M-f>", ":NvimTreeToggle<cr>", { noremap = false, silent = true })
	--vim.api.nvim_set_keymap("n", "<M-f>", ":CocCommand explorer<cr>", { noremap = false, silent = true })
	vim.api.nvim_set_keymap("n", "<M-g>", ":Flog<cr>", { noremap = false, silent = true })
	vim.api.nvim_set_keymap("n", "<M-w>", ":Tagbar<cr>", { noremap = false, silent = true })
	vim.api.nvim_set_keymap("n", "<M-r>", ":Lspsaga lsp_finder<CR>", { noremap = false, silent = true })
	vim.api.nvim_set_keymap("n", "sd", ":Lspsaga show_line_diagnostics<CR>", { noremap = false, silent = true })
	vim.api.nvim_set_keymap("n", "df", ":Lspsaga preview_definition<CR>", { noremap = false, silent = true })
	vim.api.nvim_set_keymap("n", "fg", ":Telescope<CR>", { noremap = false, silent = true })
	--vim.api.nvim_set_keymap(
	--	"n",
	--	"sw",
	--	':lua require\'lsp_extensions\'.inlay_hints{enabled = {"TypeHint", "ChainingHint", "ParameterHint"}}<CR>',
	--	{ noremap = false, silent = true }
	--)
	vim.api.nvim_set_keymap(
		"n",
		"<M-d>",
		"<cmd> lua require('functions/vista').Open()<cr>",
		{ noremap = false, silent = true }
	)
	vim.api.nvim_set_keymap(
		"n",
		"<M-e>",
		"<cmd> lua require('functions/undo').Open()<cr>",
		{ noremap = false, silent = true }
	)
	vim.api.nvim_set_keymap("n", "ff", ":bn<cr>", { noremap = false, silent = true })
	vim.api.nvim_set_keymap(
		"n",
		"<M-q>",
		"<cmd> lua require('functions/relative').change()<cr>",
		{ noremap = false, silent = true }
	)
	--vim.api.nvim_set_keymap("n", "<C-]>", "<Plug>(coc-definition)", { noremap = false, silent = true })
end
return keys
