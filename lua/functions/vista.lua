local Vista = { state = false }
Vista.Open = function ()
	if (Vista.state)
	then
			Vista.state = true
			vim.cmd [[Vista]]
	else
		Vista.state = false
		vim.cmd [[Vista!!]]
	end
end
return Vista
