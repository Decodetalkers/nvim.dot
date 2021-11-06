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
"Plug 'Shougo/neocomplete.vim'
Plug 'chrisbra/csv.vim'
Plug 'roxma/nvim-yarp'
Plug 'roxma/vim-hug-neovim-rpc'
Plug 'sirver/UltiSnips'
Plug 'ncm2/ncm2-ultisnips'
Plug 'godlygeek/tabular'
" Now I use lsp, not need tagbar anymore
Plug 'liuchengxu/vista.vim'
Plug 'preservim/tagbar'
Plug 'skywind3000/asyncrun.vim'
Plug 'humiaozuzu/dot-vimrc'
" nerdtree as you known
Plug 'preservim/nerdtree'
"Plug 'tpope/vim-dispatch'
Plug 'ctrlpvim/ctrlp.vim'
"Plug 'preservim/tagbar'
" airline and its themes
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'natebosch/vim-lsc'
Plug 'ryanoasis/vim-devicons'
Plug 'mattn/emmet-vim'
" used to highlight qt project
Plug 'vim-scripts/cpp.vim'
" snippets 
Plug 'honza/vim-snippets'
" for search
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
" I need it to code
Plug 'neoclide/coc.nvim',{'branch':'release'}
" preview markdown
Plug 'iamcco/markdown-preview.nvim', { 'do': 'cd app && yarn install'  }
Plug 'cespare/vim-toml'
Plug 'alaviss/nim.nvim'
Plug 'puremourning/vimspector'
Plug 'maksimr/vim-jsbeautify'
" it use to be lisp ,but cannot work
"Plug 'vlime/vlime', {'rtp': 'vim/'}
" lisp also
" Plug 'kovisoft/slimv'
" 
" It is used to detect lanaguages
"Plug 'sheerun/vim-polyglot'
" highlights
Plug 'kongo2002/fsharp-vim'
Plug 'dart-lang/dart-vim-plugin'
Plug 'peterhoeg/vim-qml'
Plug 'arrufat/vala.vim'
" highlight end
" the theme
Plug 'rakr/vim-one'
" show more message for git
Plug 'APZelos/blamer.nvim'
" show colors
Plug 'rrethy/vim-hexokinase', { 'do': 'make hexokinase' }
Plug 'lukas-reineke/indent-blankline.nvim'
" Undo tree
Plug 'simnalamburt/vim-mundo'
Plug 'rbong/vim-flog'


call plug#end()
"hi CursorLine cterm=NONE ctermbg=59
"colorscheme gruvbox
"set background=dark
set foldmethod=syntax
"set foldmethod=manual
let g:vimspector_enable_mappings = 'HUMAN'
set showcmd

autocmd!   BufNewFile,BufRead *    setlocal nofoldenable
source $HOME/.config/nvim/theme.vim
source $HOME/.config/nvim/function.vim
source $HOME/.config/nvim/key.vim
source $HOME/.config/nvim/undo.vim
