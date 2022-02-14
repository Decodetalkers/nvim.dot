-- every time changed should compiled first
require("packer").startup(function(use)
    use({
        "tpope/vim-fugitive",
        "chrisbra/csv.vim",
        --"roxma/nvim-yarp",
        --"roxma/vim-hug-neovim-rpc",
        --"liuchengxu/vista.vim",
        "preservim/tagbar",
        --"humiaozuzu/dot-vimrc",
        "ctrlpvim/ctrlp.vim",
        "arkav/lualine-lsp-progress",
        "natebosch/vim-lsc",
        "ryanoasis/vim-devicons",
        "mattn/emmet-vim",
        "junegunn/fzf",
        "cespare/vim-toml",
        "alaviss/nim.nvim",
        --"puremourning/vimspector",
        "maksimr/vim-jsbeautify",
        "kongo2002/fsharp-vim", --hightlight for fsharp
        "peterhoeg/vim-qml",
        --"arrufat/vala.vim",
        "chen244/vim-one", --background
        --"APZelos/blamer.nvim",
        "lukas-reineke/indent-blankline.nvim",
        "Xuyuanp/scrollbar.nvim",
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
        "~/git/floatwindow.lua",
        "p00f/clangd_extensions.nvim",
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
                options = { theme = "onedark" },
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
    use({
        "nvim-telescope/telescope.nvim",
        requires = "nvim-lua/plenary.nvim",
    })
    use({ "akinsho/flutter-tools.nvim", requires = "nvim-lua/plenary.nvim" })
    use({
        "nvim-treesitter/nvim-treesitter",
        run = ":TSUpdate",
        config = function()
            require("nvim-treesitter.configs").setup({
                ensure_installed = "maintained", -- one of "all", "maintained" (parsers with maintainers), or a list of languages
                sync_install = false, -- install languages synchronously (only applied to `ensure_installed`)
                ignore_install = {}, -- List of parsers to ignore installing
                highlight = {
                    enable = true, -- false will disable the whole extension
                    -- disable = { "markdown" }, -- list of language that will be disabled
                    additional_vim_regex_highlighting = false,
                },
            })
        end,
    })
end)
local prequire = require("prequire")
local telescope = prequire("telescope")
if telescope then
    telescope.load_extension("aerial")
end
local floatwindow = prequire("floatwindow")
if floatwindow then
    floatwindow.setup({
        one = false,
    })
end
