local plug = {}
plug.loadplug = function ()
 require('packer').startup(function(use)
    use {"wbthomason/packer.nvim", event = "VimEnter"}
    use {
			'lewis6991/gitsigns.nvim',
			requires = {
    	   'nvim-lua/plenary.nvim'
        },
        config = function()
         require('gitsigns').setup()
      end
    }
    use {'neoclide/coc.nvim', branch = "release"}
    use {'hrsh7th/nvim-compe'}
    --use {"neovim/nvim-lspconfig"}
    --use {'williamboman/nvim-lsp-installer'}
    use {'tpope/vim-fugitive'}
    use {'chrisbra/csv.vim'}
    use {'roxma/nvim-yarp'}
    use {'roxma/vim-hug-neovim-rpc'}
    use {'sirver/UltiSnips'}
    use {'ncm2/ncm2-ultisnips'}
    use {'godlygeek/tabular'}
    use {'liuchengxu/vista.vim'}
    use {'preservim/tagbar'}
    use {'skywind3000/asyncrun.vim'}
    use {'humiaozuzu/dot-vimrc'}
    --use {'preservim/nerdtree'}
    use {'ctrlpvim/ctrlp.vim'}
    use {'vim-airline/vim-airline'}
    use {'vim-airline/vim-airline-themes'}
    use {'natebosch/vim-lsc'}
    use {'ryanoasis/vim-devicons'}
    use {'mattn/emmet-vim'}
    use {'vim-scripts/cpp.vim'}
    use {'honza/vim-snippets'}
    use {'junegunn/fzf'}
    --use {'neoclide/coc.nvim',branch = 'release'}
    use {'iamcco/markdown-preview.nvim', run = 'cd app && yarn install', cmd = 'MarkdownPreview'}
    use {'cespare/vim-toml'}
    use {'alaviss/nim.nvim'}
    use {'puremourning/vimspector'}
    use {'maksimr/vim-jsbeautify'}
    use {'kongo2002/fsharp-vim'}
    use {'dart-lang/dart-vim-plugin'}
    use {'peterhoeg/vim-qml'}
    use {'arrufat/vala.vim'}
    use {'rakr/vim-one'}
    use {'APZelos/blamer.nvim'}
    use {'rrethy/vim-hexokinase'}
    use {'lukas-reineke/indent-blankline.nvim',run = 'make hexokinase'}
    use {'simnalamburt/vim-mundo'}
    use {'rbong/vim-flog'}
    use {'kyazdani42/nvim-web-devicons'}
    use {'kyazdani42/nvim-tree.lua'}-- Packer can manage itself
 end)
end
return plug
