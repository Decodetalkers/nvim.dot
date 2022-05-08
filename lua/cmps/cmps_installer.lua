local lsp_installer = require("nvim-lsp-installer")
lsp_installer.setup({})
local servers = {
    "html",
    "cssls",
    "r_language_server",
    "sumneko_lua",
    --"clangd",
    --"rust_analyzer",
    "julials",
    "csharp_ls",
    --"pyright",
    "pylsp",
    "tsserver",
    --"omnisharp",
    "fsautocomplete",
    --"hls",
    "texlab",
    "jsonls",
    --"dartls",
    "vala_ls",
    --"volar",
    "vuels",
    "kotlin_language_server",
    "gopls",
    --"jedi_language_server",
    "jdtls",
    "cmake",
    "bashls",
    "vimls",
    --"cssls",
    "lemminx",
    "groovyls",
    --"graphql",
    --"html",
    "yamlls",
    "ocamllsp",
    --"denols",
    "taplo",
}

for _, name in pairs(servers) do
    local ok, server = lsp_installer.get_server(name)
    -- Check that the server is supported in nvim-lsp-installer
    if ok then
        if not server:is_installed() then
            print("Installing " .. name)
            server:install()
        end
    end
end

