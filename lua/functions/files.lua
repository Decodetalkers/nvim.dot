local File = {
  ["rust"] = true,
  ["java"] = true,
  ["cs"] = true,
  ["lua"] = false,
  ["fsharp"] = false,
  ["kotlin"] = true,
  ["sh"] = true,
  ["json"] = true,
  ["python"] = true,
  ["vim"] = true,
}
File.Settab = function()
  local file = File[vim.o.filetype]
  if file ~= nil then
    if file then
      vim.opt.tabstop = 4
      vim.opt.shiftwidth = 4
      vim.opt.softtabstop = 4
    else
      vim.cmd([[set modeline]])
      vim.opt.shiftwidth = 2
    end
  else
    vim.opt.tabstop = 2
    vim.opt.shiftwidth = 2
    vim.opt.softtabstop = 2
  end
end
return File
