local Vista = { state = false }
Vista.Open = function()
	if not Vista.state then
		Vista.state = true
		vim.cmd([[Vista nvim_lsp ]])
	else
		Vista.state = false
		vim.cmd([[Vista!]])
	end
end
return Vista
