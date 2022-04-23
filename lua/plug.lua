-- every time changed should compiled first
require("packer").startup(function(use)
    use({
        "tpope/vim-fugitive",
        --"chrisbra/csv.vim",
        --"roxma/nvim-yarp",
        --"roxma/vim-hug-neovim-rpc",
        --"liuchengxu/vista.vim",
        "preservim/tagbar",
        --"humiaozuzu/dot-vimrc",
        --"ctrlpvim/ctrlp.vim",
        "arkav/lualine-lsp-progress",
        --"natebosch/vim-lsc",
        --"ryanoasis/vim-devicons",
        "mattn/emmet-vim",
        "junegunn/fzf",
        "maksimr/vim-jsbeautify",
        "kongo2002/fsharp-vim", --hightlight for fsharp
        "peterhoeg/vim-qml",
        --"arrufat/vala.vim",
        --"chen244/vim-one", --background
        --"APZelos/blamer.nvim",
        --"Xuyuanp/scrollbar.nvim",
        "neovim/nvim-lspconfig", -- Collection of configurations for built-in LSP client
        "hrsh7th/nvim-cmp", -- Autocompletion plugin
        "hrsh7th/cmp-nvim-lsp", -- LSP source for nvim-cmp
        -- cmp's luasnip and luasnip engine
        "L3MON4D3/LuaSnip", -- Snippets plugin
        "saadparwaiz1/cmp_luasnip", -- Snippets source for nvim-cmp
        -- vscode snippets
        "chen244/friendly-snippets",
        "hrsh7th/cmp-path",
        "hrsh7th/cmp-buffer",
        "williamboman/nvim-lsp-installer",
        "mfussenegger/nvim-dap",
        "folke/lsp-colors.nvim",
        "simnalamburt/vim-mundo",
        --"rbong/vim-flog",
        "kyazdani42/nvim-web-devicons", --icons for Nvim tree
        "aklt/plantuml-syntax",
        "tyru/open-browser.vim",
        "weirongxu/plantuml-previewer.vim",
        "simrat39/rust-tools.nvim",
        --"~/git/deno-tool.lua",
        "~/git/csharpls_extend-lsp.nvim",
        "p00f/clangd_extensions.nvim",
        "p00f/nvim-ts-rainbow",
        --"Hoffs/omnisharp-extended-lsp.nvim",
    })
    use({
        "rebelot/kanagawa.nvim",
        config = function()
            -- Default options:
            require("kanagawa").setup({
                undercurl = true, -- enable undercurls
                commentStyle = "italic",
                functionStyle = "NONE",
                keywordStyle = "italic",
                statementStyle = "bold",
                typeStyle = "NONE",
                variablebuiltinStyle = "italic",
                specialReturn = true, -- special highlight for the return keyword
                specialException = true, -- special highlight for exception handling keywords
                transparent = false, -- do not set background color
                dimInactive = false, -- dim inactive window `:h hl-NormalNC`
                globalStatus = false, -- adjust window separators highlight for laststatus=3
                colors = {},
                overrides = {},
            })

            -- setup must be called before loading
            vim.cmd("colorscheme kanagawa")
        end,
    })
    use({
        "rcarriga/nvim-notify",
        config = function()
            vim.notify = require("notify")
            require("notify").setup({
                -- Animation style (see below for details)
                stages = "fade_in_slide_out",

                -- Function called when a new window is opened, use for changing win settings/config
                on_open = nil,

                -- Function called when a window is closed
                on_close = nil,

                -- Render function for notifications. See notify-render()
                render = "default",

                -- Default timeout for notifications
                timeout = 5000,

                -- Max number of columns for messages
                max_width = nil,
                -- Max number of lines for a message
                max_height = nil,

                -- For stages that change opacity this is treated as the highlight behind the window
                -- Set this to either a highlight group, an RGB hex value e.g. "#000000" or a function returning an RGB code for dynamic values
                background_colour = "Normal",

                -- Minimum width for notification windows
                minimum_width = 50,

                -- Icons for the different levels
                icons = {
                    ERROR = "",
                    WARN = "",
                    INFO = "",
                    DEBUG = "",
                    TRACE = "✎",
                },
            })
            require("telescope").load_extension("notify")
        end,
    })
    use({
        "nvim-telescope/telescope.nvim",
        requires = "nvim-lua/plenary.nvim",
    })
    use({
        "lukas-reineke/indent-blankline.nvim",
        config = function()
            vim.opt.list = true
            vim.opt.listchars:append("space:⋅")
            --vim.opt.listchars:append("eol:↴")
            require("indent_blankline").setup({
                space_char_blankline = " ",
            })
        end,
    })
    use({
        "~/git/csv-tools.lua",
        config = function()
            require("csvtools").setup({
                before = 70,
                after = 70,
                --showoverflow = false
            })
        end,
    })
    use({
        "petertriho/nvim-scrollbar",
        config = function()
            require("scrollbar").setup()
        end,
    })
    use({
        "sidebar-nvim/sidebar.nvim",
        config = function()
            require("sidebar-nvim").setup({})
        end,
    })
    use({
        "stevearc/aerial.nvim",
        config = function()
            require("aerial").setup({
                --backends = { "lsp", "markdown" },
                filter_kind = {
                    "Class",
                    "Constructor",
                    "Enum",
                    "Function",
                    "Interface",
                    "Namespace",
                    "Package",
                    "Variable",
                    "Module",
                    "Method",
                    "Struct",
                    "Key",
                    "Object",
                    "String",
                },
            })
            require("telescope").load_extension("aerial")
        end,
    })
    use({
        "tami5/lspsaga.nvim",
        config = function()
            require("lspsaga").init_lsp_saga()
        end,
    })
    use({
        "kyazdani42/nvim-tree.lua",
        config = function()
            require("nvim-tree").setup({
                diagnostics = {
                    enable = true,
                    icons = {
                        hint = "",
                        info = "",
                        warning = "",
                        error = "",
                    },
                },
            })
        end,
    })
    use({ "LhKipp/nvim-nu", run = ":TSInstall nu" })
    use({ "wbthomason/packer.nvim", event = "VimEnter" })
    use({
        "lewis6991/gitsigns.nvim",
        requires = {
            "nvim-lua/plenary.nvim",
        },
        config = function()
            require("gitsigns").setup({
                current_line_blame = true,
                current_line_blame_opts = {
                    virt_text = true,
                    virt_text_pos = "eol", -- 'eol' | 'overlay' | 'right_align'
                    delay = 1000,
                    ignore_whitespace = false,
                },
                current_line_blame_formatter_opts = {
                    relative_time = false,
                },
            })
        end,
    })
    use({
        "nvim-lualine/lualine.nvim",
        requires = { "kyazdani42/nvim-web-devicons", opt = true },
        config = function()
            require("lualine").setup({
                options = {
                    theme = "onedark",
                    globalstatus = true,
                },
                sections = {
                    lualine_c = {
                        "filename",
                        "lsp_progress",
                        {
                            function()
                                local msg = "No Active Lsp"
                                local buf_ft = vim.api.nvim_buf_get_option(0, "filetype")
                                local clients = vim.lsp.get_active_clients()
                                if next(clients) == nil then
                                    return msg
                                end
                                for _, client in ipairs(clients) do
                                    local filetypes = client.config.filetypes
                                    if filetypes and vim.fn.index(filetypes, buf_ft) ~= -1 then
                                        return client.name
                                    end
                                end
                                return msg
                            end,
                            icon = " LSP:",
                            color = { fg = "#ffffff", gui = "bold" },
                        },
                    },
                    lualine_x = { "aerial" },
                    lualine_y = {
                        "encoding",
                        "fileformat",
                        "filetype",
                    },
                },
            })
        end,
    })
    use({
        "akinsho/bufferline.nvim",
        requires = "kyazdani42/nvim-web-devicons",
        config = function()
            require("bufferline").setup({})
        end,
    })

    use({
        "iamcco/markdown-preview.nvim",
        run = function()
            vim.fn["mkdp#util#install"]()
        end,
        ft = { "markdown" },
    })
    use({ "rrethy/vim-hexokinase", run = "make hexokinase" })

    use({ "akinsho/flutter-tools.nvim", requires = "nvim-lua/plenary.nvim" })
    use({
        "nvim-treesitter/nvim-treesitter",
        run = ":TSUpdate",
        config = function()
            local parser_config = require("nvim-treesitter.parsers").get_parser_configs()
            parser_config.fsharp = {
                install_info = {
                    url = "https://github.com/baronfel/tree-sitter-fsharp",
                    files = { "src/parser.c" },
                    branch = "main",
                },
                filetype = "fsharp",
            }
            require("nvim-treesitter.configs").setup({
                ensure_installed = "all", -- one of "all", "maintained" (parsers with maintainers), or a list of languages
                sync_install = false, -- install languages synchronously (only applied to `ensure_installed`)
                ignore_install = {}, -- List of parsers to ignore installing
                highlight = {
                    enable = true, -- false will disable the whole extension
                    -- disable = { "markdown" }, -- list of language that will be disabled
                    additional_vim_regex_highlighting = false,
                },
                rainbow = {
                    enable = true,
                    -- disable = { "jsx", "cpp" }, list of languages you want to disable the plugin for
                    extended_mode = true, -- Also highlight non-bracket delimiters like html tags, boolean or table: lang -> boolean
                    max_file_lines = nil, -- Do not enable for files with more than n lines, int
                    -- colors = {}, -- table of hex strings
                    -- termcolors = {} -- table of colour name strings
                },
            })
        end,
    })
end)
