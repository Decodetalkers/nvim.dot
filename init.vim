set nocompatible  "Turn off compatibility mode with Vi
set number "Show Line Numbers
set relativenumber
set showmatch "Display matching parentheses
set backspace=indent,eol,start
set encoding=utf-8
set guifont=DroidSansMono_Nerd_Font:h11
set fenc=utf-8
set expandtab 
set autoindent "Automatic indentation
set mouse=a "To enable the mouse
set hlsearch  "Search highlight
set wrap "换行显示
"this setting sould in theme
"syntax enable  "Syntax highlighting
"syntax on
set nocompatible
filetype off
call plug#begin('~/.vim/bundle')
Plug 'tpope/vim-fugitive'
Plug 'Shougo/neocomplete.vim'
Plug 'chrisbra/csv.vim'
Plug 'roxma/nvim-yarp'
Plug 'roxma/vim-hug-neovim-rpc'
Plug 'sirver/UltiSnips'
Plug 'ncm2/ncm2-ultisnips'
Plug 'godlygeek/tabular'
Plug 'skywind3000/asyncrun.vim'
Plug 'humiaozuzu/dot-vimrc'
Plug 'preservim/nerdtree'
Plug 'Lokaltog/vim-powerline'
Plug 'tpope/vim-dispatch'
Plug 'ctrlpvim/ctrlp.vim'
Plug 'preservim/tagbar'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'natebosch/vim-lsc'
Plug 'ryanoasis/vim-devicons'
Plug 'mattn/emmet-vim'
Plug 'vim-scripts/cpp.vim'
Plug 'honza/vim-snippets'
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'neoclide/coc.nvim',{'branch':'release'}
Plug 'iamcco/markdown-preview.nvim', { 'do': 'cd app && yarn install'  }
Plug 'cespare/vim-toml'
Plug 'alaviss/nim.nvim'
Plug 'puremourning/vimspector'
Plug 'maksimr/vim-jsbeautify'
Plug 'vlime/vlime', {'rtp': 'vim/'}
Plug 'kovisoft/slimv'
Plug 'sheerun/vim-polyglot'
Plug 'rak/vim-one'
call plug#end()

"hi CursorLine cterm=NONE ctermbg=59

"colorscheme gruvbox
"set background=dark
set foldmethod=syntax
"set foldmethod=manual

let g:vimspector_enable_mappings = 'HUMAN'
set showcmd



source $HOME/.config/nvim/theme.vim
source $HOME/.config/nvim/function.vim
source $HOME/.config/nvim/tagbar.vim
