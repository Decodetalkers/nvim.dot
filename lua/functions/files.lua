local File = {}
File.Settab = function()
    if vim.o.filetype == "rust" or vim.o.filetype == "cs" or vim.o.filetype == "lua" then
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
