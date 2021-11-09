local opt = vim.opt
opt.number=true
opt.wrap=true;
opt.mouse = 'a'
opt.guifont = "DroidSansMono_Nerd_Font:h11"
vim.cmd [[filetype off]]
vim.cmd [[packadd packer.nvim]]
opt.foldmethod="syntax"

require('packer').startup(function()
    use {"wbthomason/packer.nvim", event = "VimEnter"}
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
    use {'preservim/nerdtree'}
    use {'ctrlpvim/ctrlp.vim'}
    use {'vim-airline/vim-airline'}
    use {'vim-airline/vim-airline-themes'}
    use {'natebosch/vim-lsc'}
    use {'ryanoasis/vim-devicons'}
    use {'mattn/emmet-vim'}
    use {'vim-scripts/cpp.vim'}
    use {'honza/vim-snippets'}
    use {'junegunn/fzf'}
    use {'neoclide/coc.nvim',branch = 'release'}
    use {'iamcco/markdown-preview.nvim', opt=true, run = 'cd app && yarn install', cmd = "MarkdownPreview"}
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
    use {'rrethy/vim-hexokinase', opt=true, run = 'make hexokinase'}
    use {'lukas-reineke/indent-blankline.nvim'}
    use {'simnalamburt/vim-mundo'}
    use {'rbong/vim-flog'}
    use {'kyazdani42/nvim-web-devicons'}
    use {'kyazdani42/nvim-tree.lua'}-- Packer can manage itself
 end)
require'nvim-tree'.setup{}
opt.termguicolors=true
opt.background="dark"
opt.cursorline=true

vim.cmd [[colorscheme one]]
vim.cmd [[hi CursorLine cterm=bold  guibg=#333333]]
vim.cmd [[hi CocFadeOut cterm=bold  guibg=#666666]]
vim.cmd [[let g:airline#extensions#tabline#enabled = 1 ]]
vim.cmd [[let g:airline_powerline_fonts = 1]]
vim.cmd [[hi Normal guibg=#1b1e27]]
