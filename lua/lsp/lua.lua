local default = require('lsp.default')
local sumneko_root_path = '/usr/bin/lua-language-server' -- Change to your sumneko root installation
local sumneko_binary = '/usr/bin/lua-language-server'
local runtime_path = vim.split(package.path, ';')
table.insert(runtime_path, "lua/?.lua")
table.insert(runtime_path, "lua/?/init.lua")
require'lspconfig'.sumneko_lua.setup{
    cmd = {sumneko_binary, "-E", sumneko_root_path .. "/main.lua"},
    on_attach = default.on_attach,
    settings = {
        Lua = {
	  runtime = {
        -- Tell the language server which version of Lua you're using (most likely LuaJIT in the case of Neovim)
            version = 'LuaJIT',
        -- Setup your lua path
            path = runtime_path,
          },
          diagnostics = {
        -- Get the language server to recognize the `vim` global
           globals = { 'vim' },
          },
          telemetry = {
            enable = false,
          },
        },
    }
}


