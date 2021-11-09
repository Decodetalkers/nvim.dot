local File = {}
File.Settab = function ()
    vim.cmd [[set ts=2 ]]
    vim.cmd [[set tabstop=2 ]]
    vim.cmd [[set shiftwidth=2 ]]
    vim.cmd [[set softtabstop=2 ]]
end
return File
