local on_attach = require("cmps.cmp_onattach")

local nvim_lsp = require("lspconfig")

local capabilities = vim.lsp.protocol.make_client_capabilities()
capabilities = require("cmp_nvim_lsp").update_capabilities(capabilities)
capabilities.textDocument.completion.completionItem.snippetSupport = true

require("flutter-tools").setup({
    lsp = {
        capabilities = capabilities,
        on_attach = on_attach,
    },
    dap = {
        adapter = {
            type = "executable",
            command = "lldb-vscode",
            name = "rt_lldb",
        },
    },
}) -- use defaults
-- clangd start here
require("clangd_extensions").setup({
    server = {
        capabilities = capabilities,
        on_attach = on_attach,
        -- options to pass to nvim-lspconfig
    },
    extensions = {
        -- defaults:
        -- Automatically set inlay hints (type hints)
        autoSetHints = false,
        -- Whether to show hover actions inside the hover window
        -- This overrides the default hover handler
        hover_with_actions = true,
        -- These apply to the default ClangdSetInlayHints command
        inlay_hints = {
            -- Only show inlay hints for the current line
            only_current_line = false,
            -- Event which triggers a refersh of the inlay hints.
            -- You can make this "CursorMoved" or "CursorMoved,CursorMovedI" but
            -- not that this may cause  higher CPU usage.
            -- This option is only respected when only_current_line and
            -- autoSetHints both are true.
            only_current_line_autocmd = "CursorHold",
            -- wheter to show parameter hints with the inlay hints or not
            show_parameter_hints = true,
            -- whether to show variable name before type hints with the inlay hints or not
            show_variable_name = false,
            -- prefix for parameter hints
            parameter_hints_prefix = "<- ",
            -- prefix for all the other hints (type, chaining)
            other_hints_prefix = "=> ",
            -- whether to align to the length of the longest line in the file
            max_len_align = false,
            -- padding from the left if max_len_align is true
            max_len_align_padding = 1,
            -- whether to align to the extreme right or not
            right_align = false,
            -- padding from the right if right_align is true
            right_align_padding = 7,
            -- The color of the hints
            highlight = "Comment",
        },
        ast = {
            role_icons = {
                type = "",
                declaration = "",
                expression = "",
                specifier = "",
                statement = "",
                ["template argument"] = "",
            },

            kind_icons = {
                Compound = "",
                Recovery = "",
                TranslationUnit = "",
                PackExpansion = "",
                TemplateTypeParm = "",
                TemplateTemplateParm = "",
                TemplateParamObject = "",
            },

            highlights = {
                detail = "Comment",
            },
        },
    },
})

require("rust-tools").setup({
    server = {
        capabilities = capabilities,
        on_attach = on_attach,
    },
    tools = {
        inlay_hints = {
            auto = false
        }
    }
})
local servers_lsp = {
    "gdscript",
    "hls",
    "denols",
    "html",
    "cssls",
    --"r_language_server",
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
    --"cmake",
    "bashls",
    "vimls",
    --"cssls
    "lemminx",
    --"groovyls",
    --"graphql",
    --"html",
    "yamlls",
    "ocamllsp",
    --"denols",
    "taplo",
    "zls",
    "slint_lsp",
    "teal_ls",
}

for _, lsp in ipairs(servers_lsp) do
    local opts = {
        -- on_attach = my_custom_on_attach,
        capabilities = capabilities,
        on_attach = on_attach,
    }
    if lsp == "sumneko_lua" then
        opts = {
            on_attach = on_attach,
            capabilities = capabilities,
            settings = {
                Lua = {
                    runtime = {
                        -- Tell the language server which version of Lua you're using (most likely LuaJIT in the case of Neovim)
                        version = "LuaJIT",
                        -- Setup your lua path
                    },
                    workspace = {
                        -- Make the server aware of Neovim runtime files
                        library = vim.api.nvim_get_runtime_file("", true),
                    },

                    diagnostics = {
                        -- Get the language server to recognize the `vim` global
                        globals = { "vim" },
                    },
                    telemetry = {
                        enable = false,
                    },
                },
            },
        --    --single_file_support = false,
        }
    elseif lsp == "denols" then
        opts = {
            on_attach = on_attach,
            capabilities = capabilities,
            root_dir = nvim_lsp.util.root_pattern("deno.json"),
            init_options = { --settings,
                lint = true,
            },
            --single_file_support = true,
        }
    elseif lsp == "kotlin_language_server" then
        opts = {
            on_attach = on_attach,
            capabilities = capabilities,
            single_file_support = true,
        }
    elseif lsp == "tsserver" then
        opts = {
            on_attach = on_attach,
            capabilities = capabilities,
            root_dir = nvim_lsp.util.root_pattern("package.json"),
            init_options = {
                lint = true,
            },
            settings = {
                typescript = {
                    inlayHints = {
                        includeInlayParameterNameHints = 'all',
                        includeInlayParameterNameHintsWhenArgumentMatchesName = false,
                        includeInlayFunctionParameterTypeHints = true,
                        includeInlayVariableTypeHints = true,
                        includeInlayPropertyDeclarationTypeHints = true,
                        includeInlayFunctionLikeReturnTypeHints = true,
                        includeInlayEnumMemberValueHints = true,
                    }
                },
                javascript = {
                    inlayHints = {
                        includeInlayParameterNameHints = 'all',
                        includeInlayParameterNameHintsWhenArgumentMatchesName = false,
                        includeInlayFunctionParameterTypeHints = true,
                        includeInlayVariableTypeHints = true,
                        includeInlayPropertyDeclarationTypeHints = true,
                        includeInlayFunctionLikeReturnTypeHints = true,
                        includeInlayEnumMemberValueHints = true,
                    }
                }
            }
        }
    elseif lsp == "csharp_ls" then
        opts = {
            on_attach = on_attach,
            capabilities = capabilities,
            handlers = {
                ["textDocument/definition"] = require("csharpls_extended").handler,
            },
            flags = {
                --allow_incremental_sync = false,
            },
        }
    end
    nvim_lsp[lsp].setup(opts)
end
local prequire = require("prequire")
local settings = prequire("settings")
--- testing
local configs = require("lspconfig.configs")

if settings and settings.lsp and settings.lsp.neocmake then
    configs.neocmake = settings.lsp.neocmake
else
    configs.neocmake = {
        default_config = {
            cmd = { "neocmakelsp", "--stdio" },
            filetypes = { "cmake" },
            root_dir = function(fname)
                return nvim_lsp.util.find_git_ancestor(fname)
            end,
            single_file_support = true,
            on_attach = on_attach,
        }
    }
end


nvim_lsp.neocmake.setup({})
configs.qml_lsp = {
    default_config = {
        --cmd = { "/usr/lib/qt6/bin/qmlls" },
        cmd = { "/usr/lib/qt6/bin/qmlls" },
        filetypes = { "qmljs" },
        root_dir = function(fname)
            return nvim_lsp.util.find_git_ancestor(fname)
        end,
        single_file_support = true,
        on_attach = on_attach,
    }
}
nvim_lsp.qml_lsp.setup({})
--- mime cmake lsp
