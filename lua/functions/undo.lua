local undo = { status = false }
undo.Open = function()
	if undo.status == false then
		vim.cmd([[MundoShow]])
		undo.status = true
	else
		vim.cmd([[MundoHide]])
		undo.status = false
	end
end
return undo
