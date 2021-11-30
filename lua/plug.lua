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
    use({ "godlygeek/tabular" })
    use({ "liuchengxu/vista.vim" })
    use({ "preservim/tagbar" })
    use({ "skywind3000/asyncrun.vim" })
    use({ "humiaozuzu/dot-vimrc" })
    use({ "ctrlpvim/ctrlp.vim" })
    use({ "vim-airline/vim-airline" })
    use({ "vim-airline/vim-airline-themes" })
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
    use({ "maksimr/vim-jsbeautify" })
    use({ "kongo2002/fsharp-vim" }) --hightlight for fsharp
    use({ "peterhoeg/vim-qml" })
    use({ "arrufat/vala.vim" })
    use({ "rakr/vim-one" }) --background
    use({ "APZelos/blamer.nvim" })
    use({ "lukas-reineke/indent-blankline.nvim", run = "make hexokinase" })
    use({ "simnalamburt/vim-mundo" })
    use({ "rbong/vim-flog" })
    use({ "kyazdani42/nvim-web-devicons" }) --icons for Nvim tree
    use({ "kyazdani42/nvim-tree.lua"})
    use {'udalov/kotlin-vim'} --kotlin hightlight
    use({ "rust-lang/rust.vim" })
    use({ "Xuyuanp/scrollbar.nvim" })
    use("neovim/nvim-lspconfig") -- Collection of configurations for built-in LSP client
    use("hrsh7th/nvim-cmp") -- Autocompletion plugin
    use("hrsh7th/cmp-nvim-lsp") -- LSP source for nvim-cmp
    use("saadparwaiz1/cmp_luasnip") -- Snippets source for nvim-cmp
    use("L3MON4D3/LuaSnip") -- Snippets plugin
    use("williamboman/nvim-lsp-installer")
    use("glepnir/lspsaga.nvim")
    use("mfussenegger/nvim-dap")
    use("folke/lsp-colors.nvim")
    use({
        "nvim-telescope/telescope.nvim",
        requires = { { "nvim-lua/plenary.nvim" } },
    })
    use("nvim-lua/lsp_extensions.nvim")
    use({"nvim-treesitter/nvim-treesitter",run = ":TSUpdate"})
end)
require("lspsaga").init_lsp_saga()
require("nvim-tree").setup()
require("nvim-treesitter.configs").setup({
    ensure_installed = "maintained", -- one of "all", "maintained" (parsers with maintainers), or a list of languages
    sync_install = false, -- install languages synchronously (only applied to `ensure_installed`)
    ignore_install = {}, -- List of parsers to ignore installing
    highlight = {
      enable = true, -- false will disable the whole extension
      disable = { "rust" }, -- list of language that will be disabled
                    -- Setting this to true will run `:h syntax` and tree-sitter at the same time.
                    -- Set this to `true` if you depend on 'syntax' being enabled (like for indentation).
                    -- Using this option may slow down your editor, and you may see some duplicate highlights.
                    -- Instead of true it can also be a list of languages
      additional_vim_regex_highlighting = false,
	}
})
    --            },
    --        }),
    --    },
    --})

