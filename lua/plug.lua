local plug = {}
plug.loadplug = function()
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
		use({ "neoclide/coc.nvim", branch = "release" })
		use({ "hrsh7th/nvim-compe" })
		use({ "tpope/vim-fugitive" })
		use({ "chrisbra/csv.vim" })
		use({ "roxma/nvim-yarp" })
		use({ "roxma/vim-hug-neovim-rpc" })
		use({ "sirver/UltiSnips" })
		use({ "ncm2/ncm2-ultisnips" })
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
		use({ "honza/vim-snippets" })
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
		--use {'udalov/kotlin-vim'} --kotlin hightlight
		use({ "rust-lang/rust.vim" })
		use({ "Xuyuanp/scrollbar.nvim" })
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
						disable = { "c", "rust" }, -- list of language that will be disabled
						-- Setting this to true will run `:h syntax` and tree-sitter at the same time.
						-- Set this to `true` if you depend on 'syntax' being enabled (like for indentation).
						-- Using this option may slow down your editor, and you may see some duplicate highlights.
						-- Instead of true it can also be a list of languages
						additional_vim_regex_highlighting = false,
					},
				}),
			},
		})
	end)
end
return plug
