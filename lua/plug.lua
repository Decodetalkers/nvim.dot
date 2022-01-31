require("packer").startup(function(use)
    use({
        "tpope/vim-fugitive",
        "chrisbra/csv.vim",
        "roxma/nvim-yarp",
        "roxma/vim-hug-neovim-rpc",
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
        "puremourning/vimspector",
        "maksimr/vim-jsbeautify",
        "kongo2002/fsharp-vim", --hightlight for fsharp
        "peterhoeg/vim-qml",
        "arrufat/vala.vim",
        "chen244/vim-one", --background
        "APZelos/blamer.nvim",
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
        "tami5/lspsaga.nvim",
        "mfussenegger/nvim-dap",
        "folke/lsp-colors.nvim",
        "simnalamburt/vim-mundo",
        "rbong/vim-flog",
        "kyazdani42/nvim-web-devicons", --icons for Nvim tree
        "aklt/plantuml-syntax",
        "tyru/open-browser.vim",
        "weirongxu/plantuml-previewer.vim",
        "simrat39/rust-tools.nvim",
        "kyazdani42/nvim-tree.lua",
        "~/git/floatwindow.lua",
        --"simrat39/symbols-outline.nvim",
        "sidebar-nvim/sidebar.nvim",
        "stevearc/aerial.nvim",
    })
    use({ "LhKipp/nvim-nu", run = ":TSInstall nu" })
    use({ "wbthomason/packer.nvim", event = "VimEnter" })
    use({
        "lewis6991/gitsigns.nvim",
        requires = {
            "nvim-lua/plenary.nvim",
        },
        config = function()
            require("gitsigns").setup()
        end,
    })
    use({
        "nvim-lualine/lualine.nvim",
        requires = { "kyazdani42/nvim-web-devicons", opt = true },
    })
    use({ "akinsho/bufferline.nvim", requires = "kyazdani42/nvim-web-devicons" })

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
        requires = {
            require("nvim-treesitter.configs").setup({
                ensure_installed = "maintained", -- one of "all", "maintained" (parsers with maintainers), or a list of languages
                sync_install = false, -- install languages synchronously (only applied to `ensure_installed`)
                ignore_install = {}, -- List of parsers to ignore installing
                highlight = {
                    enable = true, -- false will disable the whole extension
                    -- disable = { "markdown" }, -- list of language that will be disabled
                    additional_vim_regex_highlighting = false,
                },
            }),
        },
    })
end)
require("lspsaga").init_lsp_saga()
--require("flutter-tools").setup({}) -- use defaults
--require("telescope").load_extension("flutter")
require('telescope').load_extension('aerial')
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
require("lualine").setup({
    options = { theme = "onedark" },
    sections = {
        lualine_c = {
            ...,
            "filename",
            "lsp_progress",
        },
    },
})
require("bufferline").setup({})
require("floatwindow").setup({
    one = false,
})
require("sidebar-nvim").setup({
    --open = true
})
