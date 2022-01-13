local Vista = { state = false }
Vista.Open = function()
    if not Vista.state then
        Vista.state = true
        vim.cmd([[SymbolsOutlineOpen ]])
    else
        Vista.state = false
        vim.cmd([[SymbolsOutlineClose ]])
    end
end
return Vista
