require("packer").startup(function(use)
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
    use({ "tpope/vim-fugitive" })
    use({ "chrisbra/csv.vim" })
    use({ "roxma/nvim-yarp" })
    use({ "roxma/vim-hug-neovim-rpc" })
    use({ "liuchengxu/vista.vim" })
    use({ "preservim/tagbar" })
    use({ "humiaozuzu/dot-vimrc" })
    use({ "ctrlpvim/ctrlp.vim" })
    use({
        "nvim-lualine/lualine.nvim",
        requires = { "kyazdani42/nvim-web-devicons", opt = true },
    })
    use("arkav/lualine-lsp-progress")
    use({ "akinsho/bufferline.nvim", requires = "kyazdani42/nvim-web-devicons" })
    use({ "natebosch/vim-lsc" })
    use({ "ryanoasis/vim-devicons" })
    use({ "mattn/emmet-vim" })
    use({ "junegunn/fzf" })
    use({
        "iamcco/markdown-preview.nvim",
        run = function()
            vim.fn["mkdp#util#install"]()
        end,
        ft = { "markdown" },
    })
    use({ "cespare/vim-toml" })
    use({ "alaviss/nim.nvim" })
    use({ "puremourning/vimspector" })
    use({ "maksimr/vim-jsbeautify" })
    use({ "kongo2002/fsharp-vim" }) --hightlight for fsharp
    use({ "peterhoeg/vim-qml" })
    use({ "arrufat/vala.vim" })
    use({ "rakr/vim-one" }) --background
    use({ "APZelos/blamer.nvim" })
    use({ "rrethy/vim-hexokinase" })
    use({ "lukas-reineke/indent-blankline.nvim", run = "make hexokinase" })
    use({ "simnalamburt/vim-mundo" })
    use({ "rbong/vim-flog" })
    use({ "kyazdani42/nvim-web-devicons" }) --icons for Nvim tree
    use({ "kyazdani42/nvim-tree.lua", requires = {
        require("nvim-tree").setup(),
    } }) -- Packer can manage itself
    use({ "Xuyuanp/scrollbar.nvim" })
    use("neovim/nvim-lspconfig") -- Collection of configurations for built-in LSP client
    use("hrsh7th/nvim-cmp") -- Autocompletion plugin
    use("hrsh7th/cmp-nvim-lsp") -- LSP source for nvim-cmp
    -- cmp's luasnip and luasnip engine
    use("L3MON4D3/LuaSnip") -- Snippets plugin
    use("saadparwaiz1/cmp_luasnip") -- Snippets source for nvim-cmp
    -- vscode snippets
    use("rafamadriz/friendly-snippets")
    use("hrsh7th/cmp-path")
    use("hrsh7th/cmp-buffer")
    use("williamboman/nvim-lsp-installer")
    use({ "tami5/lspsaga.nvim" })
    use("mfussenegger/nvim-dap")
    use("folke/lsp-colors.nvim")
    use({
        "nvim-telescope/telescope.nvim",
        requires = "nvim-lua/plenary.nvim",
    })
    use({ "akinsho/flutter-tools.nvim", requires = "nvim-lua/plenary.nvim" })
    use("aklt/plantuml-syntax")
    use("tyru/open-browser.vim")
    use("weirongxu/plantuml-previewer.vim")
    use("simrat39/rust-tools.nvim")
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
require("flutter-tools").setup({}) -- use defaults
require("telescope").load_extension("flutter")
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
            "lsp_progress",
        },
    },
})
require("bufferline").setup({})
