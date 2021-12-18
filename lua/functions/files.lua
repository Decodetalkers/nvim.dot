local File = {
    ["rust"] = true,
    ["java"] = true,
    ["cs"] = true,
    ["lua"] = true,
    ["kotlin"] = true,
    ["sh"] = true,
    ["json"] = true,
    ["python"] = true,
}
File.Settab = function()
    if File[vim.o.filetype] ~= nil then
        vim.opt.tabstop = 4
        vim.opt.shiftwidth = 4
        vim.opt.softtabstop = 4
    else
        vim.opt.tabstop = 2
        vim.opt.shiftwidth = 2
        vim.opt.softtabstop = 2
    end
end
return File
