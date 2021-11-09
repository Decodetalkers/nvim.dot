-- Automatically generated packer.nvim plugin loader code

if vim.api.nvim_call_function('has', {'nvim-0.5'}) ~= 1 then
  vim.api.nvim_command('echohl WarningMsg | echom "Invalid Neovim version for packer.nvim! | echohl None"')
  return
end

vim.api.nvim_command('packadd packer.nvim')

local no_errors, error_msg = pcall(function()

  local time
  local profile_info
  local should_profile = false
  if should_profile then
    local hrtime = vim.loop.hrtime
    profile_info = {}
    time = function(chunk, start)
      if start then
        profile_info[chunk] = hrtime()
      else
        profile_info[chunk] = (hrtime() - profile_info[chunk]) / 1e6
      end
    end
  else
    time = function(chunk, start) end
  end
  
local function save_profiles(threshold)
  local sorted_times = {}
  for chunk_name, time_taken in pairs(profile_info) do
    sorted_times[#sorted_times + 1] = {chunk_name, time_taken}
  end
  table.sort(sorted_times, function(a, b) return a[2] > b[2] end)
  local results = {}
  for i, elem in ipairs(sorted_times) do
    if not threshold or threshold and elem[2] > threshold then
      results[i] = elem[1] .. ' took ' .. elem[2] .. 'ms'
    end
  end

  _G._packer = _G._packer or {}
  _G._packer.profile_output = results
end

time([[Luarocks path setup]], true)
local package_path_str = "/home/cht/.cache/nvim/packer_hererocks/2.0.5/share/lua/5.1/?.lua;/home/cht/.cache/nvim/packer_hererocks/2.0.5/share/lua/5.1/?/init.lua;/home/cht/.cache/nvim/packer_hererocks/2.0.5/lib/luarocks/rocks-5.1/?.lua;/home/cht/.cache/nvim/packer_hererocks/2.0.5/lib/luarocks/rocks-5.1/?/init.lua"
local install_cpath_pattern = "/home/cht/.cache/nvim/packer_hererocks/2.0.5/lib/lua/5.1/?.so"
if not string.find(package.path, package_path_str, 1, true) then
  package.path = package.path .. ';' .. package_path_str
end

if not string.find(package.cpath, install_cpath_pattern, 1, true) then
  package.cpath = package.cpath .. ';' .. install_cpath_pattern
end

time([[Luarocks path setup]], false)
time([[try_loadstring definition]], true)
local function try_loadstring(s, component, name)
  local success, result = pcall(loadstring(s))
  if not success then
    vim.schedule(function()
      vim.api.nvim_notify('packer.nvim: Error running ' .. component .. ' for ' .. name .. ': ' .. result, vim.log.levels.ERROR, {})
    end)
  end
  return result
end

time([[try_loadstring definition]], false)
time([[Defining packer_plugins]], true)
_G.packer_plugins = {
  UltiSnips = {
    loaded = true,
    path = "/home/cht/.local/share/nvim/site/pack/packer/start/UltiSnips",
    url = "https://github.com/sirver/UltiSnips"
  },
  ["asyncrun.vim"] = {
    loaded = true,
    path = "/home/cht/.local/share/nvim/site/pack/packer/start/asyncrun.vim",
    url = "https://github.com/skywind3000/asyncrun.vim"
  },
  ["blamer.nvim"] = {
    loaded = true,
    path = "/home/cht/.local/share/nvim/site/pack/packer/start/blamer.nvim",
    url = "https://github.com/APZelos/blamer.nvim"
  },
  ["coc.nvim"] = {
    loaded = true,
    path = "/home/cht/.local/share/nvim/site/pack/packer/start/coc.nvim",
    url = "https://github.com/neoclide/coc.nvim"
  },
  ["cpp.vim"] = {
    loaded = true,
    path = "/home/cht/.local/share/nvim/site/pack/packer/start/cpp.vim",
    url = "https://github.com/vim-scripts/cpp.vim"
  },
  ["csv.vim"] = {
    loaded = true,
    path = "/home/cht/.local/share/nvim/site/pack/packer/start/csv.vim",
    url = "https://github.com/chrisbra/csv.vim"
  },
  ["ctrlp.vim"] = {
    loaded = true,
    path = "/home/cht/.local/share/nvim/site/pack/packer/start/ctrlp.vim",
    url = "https://github.com/ctrlpvim/ctrlp.vim"
  },
  ["dart-vim-plugin"] = {
    loaded = true,
    path = "/home/cht/.local/share/nvim/site/pack/packer/start/dart-vim-plugin",
    url = "https://github.com/dart-lang/dart-vim-plugin"
  },
  ["dot-vimrc"] = {
    loaded = true,
    path = "/home/cht/.local/share/nvim/site/pack/packer/start/dot-vimrc",
    url = "https://github.com/humiaozuzu/dot-vimrc"
  },
  ["emmet-vim"] = {
    loaded = true,
    path = "/home/cht/.local/share/nvim/site/pack/packer/start/emmet-vim",
    url = "https://github.com/mattn/emmet-vim"
  },
  ["fsharp-vim"] = {
    loaded = true,
    path = "/home/cht/.local/share/nvim/site/pack/packer/start/fsharp-vim",
    url = "https://github.com/kongo2002/fsharp-vim"
  },
  fzf = {
    loaded = true,
    path = "/home/cht/.local/share/nvim/site/pack/packer/start/fzf",
    url = "https://github.com/junegunn/fzf"
  },
  ["gitsigns.nvim"] = {
    config = { "\27LJ\1\0026\0\0\2\0\3\0\0064\0\0\0%\1\1\0>\0\2\0027\0\2\0>\0\1\1G\0\1\0\nsetup\rgitsigns\frequire\0" },
    loaded = true,
    path = "/home/cht/.local/share/nvim/site/pack/packer/start/gitsigns.nvim",
    url = "https://github.com/lewis6991/gitsigns.nvim"
  },
  ["indent-blankline.nvim"] = {
    loaded = true,
    path = "/home/cht/.local/share/nvim/site/pack/packer/start/indent-blankline.nvim",
    url = "https://github.com/lukas-reineke/indent-blankline.nvim"
  },
  ["markdown-preview.nvim"] = {
    commands = { "MarkdownPreview" },
    loaded = false,
    needs_bufread = false,
    only_cond = false,
    path = "/home/cht/.local/share/nvim/site/pack/packer/opt/markdown-preview.nvim",
    url = "https://github.com/iamcco/markdown-preview.nvim"
  },
  ["ncm2-ultisnips"] = {
    loaded = true,
    path = "/home/cht/.local/share/nvim/site/pack/packer/start/ncm2-ultisnips",
    url = "https://github.com/ncm2/ncm2-ultisnips"
  },
  ["nim.nvim"] = {
    loaded = true,
    path = "/home/cht/.local/share/nvim/site/pack/packer/start/nim.nvim",
    url = "https://github.com/alaviss/nim.nvim"
  },
  ["nvim-compe"] = {
    loaded = true,
    path = "/home/cht/.local/share/nvim/site/pack/packer/start/nvim-compe",
    url = "https://github.com/hrsh7th/nvim-compe"
  },
  ["nvim-tree.lua"] = {
    loaded = true,
    path = "/home/cht/.local/share/nvim/site/pack/packer/start/nvim-tree.lua",
    url = "https://github.com/kyazdani42/nvim-tree.lua"
  },
  ["nvim-web-devicons"] = {
    loaded = true,
    path = "/home/cht/.local/share/nvim/site/pack/packer/start/nvim-web-devicons",
    url = "https://github.com/kyazdani42/nvim-web-devicons"
  },
  ["nvim-yarp"] = {
    loaded = true,
    path = "/home/cht/.local/share/nvim/site/pack/packer/start/nvim-yarp",
    url = "https://github.com/roxma/nvim-yarp"
  },
  ["packer.nvim"] = {
    loaded = false,
    needs_bufread = false,
    only_cond = false,
    path = "/home/cht/.local/share/nvim/site/pack/packer/opt/packer.nvim",
    url = "https://github.com/wbthomason/packer.nvim"
  },
  ["plenary.nvim"] = {
    loaded = true,
    path = "/home/cht/.local/share/nvim/site/pack/packer/start/plenary.nvim",
    url = "https://github.com/nvim-lua/plenary.nvim"
  },
  tabular = {
    loaded = true,
    path = "/home/cht/.local/share/nvim/site/pack/packer/start/tabular",
    url = "https://github.com/godlygeek/tabular"
  },
  tagbar = {
    loaded = true,
    path = "/home/cht/.local/share/nvim/site/pack/packer/start/tagbar",
    url = "https://github.com/preservim/tagbar"
  },
  ["vala.vim"] = {
    loaded = true,
    path = "/home/cht/.local/share/nvim/site/pack/packer/start/vala.vim",
    url = "https://github.com/arrufat/vala.vim"
  },
  ["vim-airline"] = {
    loaded = true,
    path = "/home/cht/.local/share/nvim/site/pack/packer/start/vim-airline",
    url = "https://github.com/vim-airline/vim-airline"
  },
  ["vim-airline-themes"] = {
    loaded = true,
    path = "/home/cht/.local/share/nvim/site/pack/packer/start/vim-airline-themes",
    url = "https://github.com/vim-airline/vim-airline-themes"
  },
  ["vim-devicons"] = {
    loaded = true,
    path = "/home/cht/.local/share/nvim/site/pack/packer/start/vim-devicons",
    url = "https://github.com/ryanoasis/vim-devicons"
  },
  ["vim-flog"] = {
    loaded = true,
    path = "/home/cht/.local/share/nvim/site/pack/packer/start/vim-flog",
    url = "https://github.com/rbong/vim-flog"
  },
  ["vim-fugitive"] = {
    loaded = true,
    path = "/home/cht/.local/share/nvim/site/pack/packer/start/vim-fugitive",
    url = "https://github.com/tpope/vim-fugitive"
  },
  ["vim-hexokinase"] = {
    loaded = true,
    path = "/home/cht/.local/share/nvim/site/pack/packer/start/vim-hexokinase",
    url = "https://github.com/rrethy/vim-hexokinase"
  },
  ["vim-hug-neovim-rpc"] = {
    loaded = true,
    path = "/home/cht/.local/share/nvim/site/pack/packer/start/vim-hug-neovim-rpc",
    url = "https://github.com/roxma/vim-hug-neovim-rpc"
  },
  ["vim-jsbeautify"] = {
    loaded = true,
    path = "/home/cht/.local/share/nvim/site/pack/packer/start/vim-jsbeautify",
    url = "https://github.com/maksimr/vim-jsbeautify"
  },
  ["vim-lsc"] = {
    loaded = true,
    path = "/home/cht/.local/share/nvim/site/pack/packer/start/vim-lsc",
    url = "https://github.com/natebosch/vim-lsc"
  },
  ["vim-mundo"] = {
    loaded = true,
    path = "/home/cht/.local/share/nvim/site/pack/packer/start/vim-mundo",
    url = "https://github.com/simnalamburt/vim-mundo"
  },
  ["vim-one"] = {
    loaded = true,
    path = "/home/cht/.local/share/nvim/site/pack/packer/start/vim-one",
    url = "https://github.com/rakr/vim-one"
  },
  ["vim-qml"] = {
    loaded = true,
    path = "/home/cht/.local/share/nvim/site/pack/packer/start/vim-qml",
    url = "https://github.com/peterhoeg/vim-qml"
  },
  ["vim-snippets"] = {
    loaded = true,
    path = "/home/cht/.local/share/nvim/site/pack/packer/start/vim-snippets",
    url = "https://github.com/honza/vim-snippets"
  },
  ["vim-toml"] = {
    loaded = true,
    path = "/home/cht/.local/share/nvim/site/pack/packer/start/vim-toml",
    url = "https://github.com/cespare/vim-toml"
  },
  vimspector = {
    loaded = true,
    path = "/home/cht/.local/share/nvim/site/pack/packer/start/vimspector",
    url = "https://github.com/puremourning/vimspector"
  },
  ["vista.vim"] = {
    loaded = true,
    path = "/home/cht/.local/share/nvim/site/pack/packer/start/vista.vim",
    url = "https://github.com/liuchengxu/vista.vim"
  }
}

time([[Defining packer_plugins]], false)
-- Config for: gitsigns.nvim
time([[Config for gitsigns.nvim]], true)
try_loadstring("\27LJ\1\0026\0\0\2\0\3\0\0064\0\0\0%\1\1\0>\0\2\0027\0\2\0>\0\1\1G\0\1\0\nsetup\rgitsigns\frequire\0", "config", "gitsigns.nvim")
time([[Config for gitsigns.nvim]], false)

-- Command lazy-loads
time([[Defining lazy-load commands]], true)
pcall(vim.cmd, [[command -nargs=* -range -bang -complete=file MarkdownPreview lua require("packer.load")({'markdown-preview.nvim'}, { cmd = "MarkdownPreview", l1 = <line1>, l2 = <line2>, bang = <q-bang>, args = <q-args>, mods = "<mods>" }, _G.packer_plugins)]])
time([[Defining lazy-load commands]], false)

vim.cmd [[augroup packer_load_aucmds]]
vim.cmd [[au!]]
  -- Event lazy-loads
time([[Defining lazy-load event autocommands]], true)
vim.cmd [[au VimEnter * ++once lua require("packer.load")({'packer.nvim'}, { event = "VimEnter *" }, _G.packer_plugins)]]
time([[Defining lazy-load event autocommands]], false)
vim.cmd("augroup END")
if should_profile then save_profiles() end

end)

if not no_errors then
  vim.api.nvim_command('echohl ErrorMsg | echom "Error in packer_compiled: '..error_msg..'" | echom "Please check your config for correctness" | echohl None')
end
