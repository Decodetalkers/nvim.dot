local File = {
    ["cmake"] = {
        tab = false,
        shift = 2,
    },
    ["qmljs"] = {
        tab = false,
        shift = 4,
    },
    ["rust"] = {
        tab = true,
        shift = 4,
    },
    ["cpp"] = {
        tab = false,
        shift = 4,
    },
    ["javascript"] = {
        tab = false,
        shift = 2,
    },
    ["typescript"] = {
        tab = false,
        shift = 2,
    },
    ["java"] = {
        tab = true,
        shift = 4,
    },
    ["cs"] = {
        tab = false,
        shift = 4,
    },
    ["lua"] = {
        tab = false,
        shift = 4,
    },
    ["fsharp"] = {
        tab = false,
        shift = 2,
    },
    ["haskell"] = {
        tab = false,
        shift = 2,
    },
    ["kotlin"] = {
        tab = false,
        shift = 4,
    },
    ["xml"] = {
        tab = false,
        shift = 2,
    },
    ["sh"] = {
        tab = true,
        shift = 4,
    },
    ["json"] = {
        tab = false,
        shift = 2,
    },
    ["jsonc"] = {
        tab = false,
        shift = 2,
    },
    ["python"] = {
        tab = true,
        shift = 4,
    },
    ["vim"] = {
        tab = true,
        shift = 4,
    },
    ["zig"] = {
        tab = false,
        shift = 4,
    },
}
File.Settab = function()
    local file = File[vim.o.filetype]
    if file ~= nil then
        if file.tab then
            vim.opt.tabstop = file.shift
            vim.opt.shiftwidth = file.shift
            vim.opt.softtabstop = file.shift
        else
            --vim.opt.modeline = true
            vim.opt.shiftwidth = file.shift
            vim.opt.expandtab = true
        end
    else
        vim.opt.tabstop = 2
        vim.opt.shiftwidth = 2
        vim.opt.softtabstop = 2
    end
end
return File
