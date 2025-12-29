local on_attach = require("cmps.cmp_onattach")

local prequire = require("prequire")
-- for lsp developing and lspsettings
local persettings = prequire("settings")

local capabilities = require("cmp_nvim_lsp").default_capabilities()

local function file_exists(name)
    local f = io.open(name, "r")
    if f ~= nil then
        io.close(f)
        return true
    else
        return false
    end
end

local contain_package_json = file_exists("package.json")

require("flutter-tools").setup({
    flutter_path = "/usr/bin/flutter",
    flutter_sdk_path = "/home/cht/Flutter",
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

local servers_lsp = {
    "gdscript",
    "hls",
    "mesonlsp",
    "html",
    "cssls",
    --"r_language_server",
    "lua_ls",
    "clangd",
    "gradle_ls",
    "rust_analyzer",
    "julials",
    "csharp_ls",
    --"pyright",
    --"zuban",
    "ty",
    --"pylsp",
    --"ruff_lsp",
    "ts_ls",
    --"omnisharp",
    "fsautocomplete",
    --"hls",
    "texlab",
    "jsonls",
    --"dartls",
    "vala_ls",
    "ruby_lsp",
    --"volar",
    "vue_ls",
    --"vtsls",
    "gopls",
    "kotlin_lsp",
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
    --"ocamllsp",
    "denols",
    "taplo",
    "zls",
    "slint_lsp",
    "teal_ls",
    "tinymist",
    "nushell",
    "dockerls",
    "qmlls",
    --"typos_lsp"
}

for _, lsp in ipairs(servers_lsp) do
    local opts = {
        -- on_attach = my_custom_on_attach,
        capabilities = capabilities,
        on_attach = on_attach,
    }
    if lsp == "clangd" then
        opts = {
            capabilities = capabilities,
            on_attach = on_attach,
            filetypes = { "c", "cpp", "objc", "objcpp", "cuda" },
            cmd = { "clangd" },
        }
    elseif lsp == "rust_analyzer" then
        opts = {
            capabilities = capabilities,
            on_attach = on_attach,
            settings = (function()
                if persettings and persettings.lspsettings and persettings.lspsettings.rust then
                    return persettings.lspsettings.rust
                else
                    return {
                        ["rust-analyzer"] = {
                            --checkOnSave = false
                        },
                    }
                end
            end)(),
        }
    elseif lsp == "lua_ls" then
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
        }
    elseif lsp == "denols" then
        if contain_package_json then
            vim.lsp.enable(lsp, false)
            goto continue
        end
        opts = {
            on_attach = on_attach,
            capabilities = capabilities,
            init_options = { --settings,
                lint = true,
            },
            settings = {
                deno = {
                    unstable = true,
                },
            },
            workspace_required = contain_package_json,
        }
    elseif lsp == "vtsls" then
        if not contain_package_json then
            vim.lsp.enable(lsp, false)
            goto continue
        end
    elseif lsp == "qmlls" then
        opts = {
            cmd = { "qmlls6" },
        }
    elseif lsp == "ts_ls" then
        if not contain_package_json then
            vim.lsp.enable(lsp, false)
            goto continue
        end
        opts = {
            on_attach = on_attach,
            capabilities = capabilities,
            root_markers = { "package.json" },
            init_options = {
                lint = true,
            },
            workspace_required = true,
            settings = {
                typescript = {
                    inlayHints = {
                        includeInlayParameterNameHints = "all",
                        includeInlayParameterNameHintsWhenArgumentMatchesName = false,
                        includeInlayFunctionParameterTypeHints = true,
                        includeInlayVariableTypeHints = true,
                        includeInlayPropertyDeclarationTypeHints = true,
                        includeInlayFunctionLikeReturnTypeHints = true,
                        includeInlayEnumMemberValueHints = true,
                    },
                },
            },
        }
    elseif lsp == "rust_analyzer" then
        opts = {
            capabilities = capabilities,
            on_attach = on_attach,
            settings = {
                ["rust-analyzer"] = {
                    checkOnSave = false,
                },
            },
        }
    elseif lsp == "csharp_ls" then
        opts = {
            on_attach = on_attach,
            capabilities = capabilities,
            flags = {
                --allow_incremental_sync = false,
            },
        }
    end
    vim.lsp.config(lsp, opts)
    vim.lsp.enable(lsp)
    ::continue::
end

--- testing
local opts = {
    capabilities = {
        workspace = {
            didChangeWatchedFiles = {
                dynamicRegistration = true,
                relative_pattern_support = true,
            },
        },
        textDocument = {
            completion = {
                completionItem = {
                    snippetSupport = true,
                },
            },
        },
    },
    init_options = {
        use_snippets = false,
    },
    on_attach = on_attach,
}
if persettings and persettings.lsp and persettings.lsp.neocmake then
    opts = persettings.lsp.neocmake
end

vim.lsp.config("neocmake", opts)
vim.lsp.enable("neocmake")

--local opts_kt = {
--    capabilities = capabilities,
--    on_attach = on_attach,
--    settings = {
--        kotlin = {
--            inlayHints = {
--                typeHints = true,
--                chainedHints = true
--            },
--            snippetsEnabled = true,
--            formatting = {
--                ktfmt = {
--                    style = "google",
--                    indent = 2,
--                    continuationIndent = 4
--                }
--            },
--            completion = {
--                snippets = {
--                    enabled = true
--                }
--            }
--        }
--    }
--}
----- mime cmake lsp
--
--if persettings and persettings.lsp and persettings.lsp.kotlin_language_server then
--    opts_kt = persettings.lsp.kotlin_language_server
--end
--vim.lsp.config("kotlin_language_server", opts_kt)
--vim.lsp.enable("kotlin_language_server")

require("csharpls_extended").buf_read_cmd_bind()

local function virtual_text_document_deno(params)
    local bufnr = params.buf
    local actual_path = params.match:sub(1)

    local clients = vim.lsp.get_clients({ name = "denols" })
    if #clients == 0 then
        return
    end

    local client = clients[1]
    local method = "deno/virtualTextDocument"
    local req_params = { textDocument = { uri = actual_path } }
    local response = client:request_sync(method, req_params, 2000, 0)
    if not response or type(response.result) ~= "string" then
        return
    end

    local lines = vim.split(response.result, "\n")
    vim.api.nvim_buf_set_lines(bufnr, 0, -1, false, lines)
    vim.api.nvim_set_option_value("readonly", true, { buf = bufnr })
    vim.api.nvim_set_option_value("modified", false, { buf = bufnr })
    vim.api.nvim_set_option_value("modifiable", false, { buf = bufnr })
    vim.api.nvim_buf_set_name(bufnr, actual_path)
    vim.lsp.buf_attach_client(bufnr, client.id)

    local filetype = "typescript"
    if actual_path:sub(-3) == ".md" then
        filetype = "markdown"
    end
    vim.api.nvim_set_option_value("filetype", filetype, { buf = bufnr })
end

vim.api.nvim_create_autocmd({ "BufReadCmd" }, {
    pattern = { "deno:/*" },
    callback = virtual_text_document_deno,
})

local function virtual_text_document_ktls(params)
    local bufnr = params.buf
    local actual_path = params.match

    local clients = vim.lsp.get_clients({ name = "kotlin_lsp" })
    if #clients == 0 then
        return
    end

    local client = clients[1]
    local method = "workspace/executeCommand"
    local req_params = { command = "decompile", arguments = { actual_path } }
    local response = client:request_sync(method, req_params, 2000, 0)
    if not response or type(response.result.code) ~= "string" then
        return
    end

    local lines = vim.split(response.result.code, "\n")

    vim.api.nvim_buf_set_lines(bufnr, 0, -1, false, lines)
    vim.api.nvim_set_option_value("readonly", true, { buf = bufnr })
    vim.api.nvim_set_option_value("modified", false, { buf = bufnr })
    vim.api.nvim_set_option_value("modifiable", false, { buf = bufnr })
    vim.api.nvim_buf_set_name(bufnr, actual_path)

    local filetype = response.result.language

    vim.api.nvim_set_option_value("filetype", filetype, { buf = bufnr })
end

vim.api.nvim_create_autocmd({ "BufReadCmd" }, {
    pattern = { "jar:/*" },
    callback = virtual_text_document_ktls,
})

vim.api.nvim_create_autocmd({ "BufReadCmd" }, {
    pattern = { "jrt:/*" },
    callback = virtual_text_document_ktls,
})
