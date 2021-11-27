local relative = { status = true }
relative.change = function()
	if relative.status then
		vim.opt.relativenumber = true
		relative.status = false
	else
		vim.opt.relativenumber = false
		relative.status = true
	end
end
return relative
