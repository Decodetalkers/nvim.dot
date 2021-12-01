local File = {
	["rust"] = true,
	["cs"] = true,
	["lua"] = true,
	["kotlin"] = true,
}
File.Settab = function()
    if File[vim.o.filetype]~=nil then
        vim.cmd([[set ts=4 ]])
        vim.cmd([[set tabstop=4 ]])
        vim.cmd([[set shiftwidth=4 ]])
        vim.cmd([[set softtabstop=4 ]])
    else
        vim.cmd([[set ts=2 ]])
        vim.cmd([[set tabstop=2 ]])
        vim.cmd([[set shiftwidth=2 ]])
        vim.cmd([[set softtabstop=2 ]])
    end
end
return File
