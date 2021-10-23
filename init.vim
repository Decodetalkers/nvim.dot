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
syntax enable  "Syntax highlighting
set nocompatible
filetype off
call plug#begin('~/.vim/bundle')
"Plug 'gaalcaras/ncm-R'
Plug 'tpope/vim-fugitive'
Plug 'Shougo/neocomplete.vim'
"Plug 'jalvesaq/Nvim-R'
Plug 'chrisbra/csv.vim'
"Plug 'ncm2/ncm2'
Plug 'roxma/nvim-yarp'
Plug 'roxma/vim-hug-neovim-rpc'
Plug 'sirver/UltiSnips'
Plug 'ncm2/ncm2-ultisnips'
Plug 'godlygeek/tabular'
"Plug 'lervag/vimtex'
"Plug 'xuhdev/vim-latex-live-preview'
"Plug 'calviken/vim-gdscript3'
Plug 'skywind3000/asyncrun.vim'
Plug 'humiaozuzu/dot-vimrc'
Plug 'preservim/nerdtree'
Plug 'Lokaltog/vim-powerline'
Plug 'tpope/vim-dispatch'
Plug 'ctrlpvim/ctrlp.vim'
Plug 'preservim/tagbar'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
"Plug 'walm/jshint.vim'
"Plug 'jamescarr/snipmate-nodejs'
"Plug 'myhere/vim-nodejs-complete'
"Plug 'guileen/vim-node'
Plug 'fatih/vim-go'
"Plug 'WolfgangMehner/perl-support'
"Plug 'thosakwe/vim-flutter'
Plug 'natebosch/vim-lsc'
"Plug 'rust-lang/rust.vim'
"Plug 'othree/html5.vim'
"Plug 'ternjs/tern_for_vim', {'do': 'npm install'}
"Plug 'chen244/mypython'
Plug 'ryanoasis/vim-devicons'
"Plug 'JuliaEditorSupport/julia-vim'
Plug 'mattn/emmet-vim'
"Plug 'vim-ruby/vim-ruby'
"Plug 'udalov/kotlin-vim'
Plug 'vim-scripts/cpp.vim'
Plug 'honza/vim-snippets'
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'neoclide/coc.nvim',{'branch':'release'}
Plug 'iamcco/markdown-preview.nvim', { 'do': 'cd app && yarn install'  }
"Plug 'peterhoeg/vim-qml'
Plug 'cespare/vim-toml'
Plug 'alaviss/nim.nvim'
Plug 'puremourning/vimspector'
Plug 'maksimr/vim-jsbeautify'
Plug 'vlime/vlime', {'rtp': 'vim/'}
Plug 'kovisoft/slimv'
"Plug 'arrufat/vala.vim'
Plug 'sheerun/vim-polyglot'
"Plug 'ruifig/vim-vs'
Plug 'rak/vim-one'
call plug#end()


set noshowmatch
set completeopt=longest,menuone,preview
let g:syntastic_cs_checkers = ['code_checker']
let g:go_fmt_command = "goimports" " 格式化将默认的 gofmt 替换
let g:go_autodetect_gopath = 1
let g:go_list_type = "quickfix"
let g:go_version_warning = 1
let g:go_highlight_types = 1
let g:go_highlight_fields = 1
let g:go_highlight_functions = 1
let g:go_highlight_function_calls = 1
let g:go_highlight_operators = 1
let g:go_highlight_extra_types = 1
let g:go_highlight_methods = 1
let g:go_highlight_generate_tags = 1
let g:godef_split=2
let python_highlight_all=1
syntax on

"here is added
set updatetime=500

if has("termguicolors")
    " fix bug for vim
    set t_8f=^[[38;2;%lu;%lu;%lum
    set t_8b=^[[48;2;%lu;%lu;%lum

    " enable true color
    set termguicolors
endif
colorscheme one
set background=dark " for the dark version
" set background=light " for the light version

set cursorline
hi Normal guibg=#1b1e27
hi Pmenu ctermfg=223 ctermbg=239 guifg=#ebdbb2 guibg=#504945
hi CursorLine cterm=bold  guibg=#333333
hi Visual cterm=bold  guibg=#444444
" warning block
hi CocFadeOut cterm=bold  guibg=#777777
"hi CursorLine cterm=NONE ctermbg=59
autocmd BufRead *.rs :setlocal tags=./rusty-tags.vi;/,$RUST_SRC_PATH/rusty-tags.vi
autocmd BufWritePost,BufNewFile,BufWritePre,BufRead *.rs :silent! exec "!rusty-tags vi --quiet --start-dir=" . expand('%:p:h') . "&" | redraw!
"colorscheme gruvbox
"set background=dark
set foldmethod=syntax
"set foldmethod=manual
autocmd!   BufNewFile,BufRead *    setlocal nofoldenable
let g:vimspector_enable_mappings = 'HUMAN'
set showcmd
" ## added by OPAM user-setup for vim / base ## 93ee63e278bdfc07d1139a748ed3fff2 ## you can edit, but keep this line

" ## end of OPAM user-setup addition for vim / base ## keep this line
let g:rust_use_custom_ctags_defs = 1  " if using rust.vim
let g:tagbar_type_dart = { 'ctagsbin': '~/.pub-cache/bin/dart_ctags' }

" about the airline
set laststatus=2 "1为关闭底部状态栏 2为开启"
set t_Co=256     "终端开启256色支持"
set encoding=utf-8
set langmenu=zh_CN.UTF-8
nmap ff :bn<cr> "设置tab键映射"
let g:airline#extensions#tabline#enabled = 1
let g:airline_powerline_fonts = 1
set showtabline=2
source $HOME/.config/nvim/function.vim
