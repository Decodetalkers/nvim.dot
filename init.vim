set nocompatible  "Turn off compatibility mode with Vi
set number "Show Line Numbers
set nowrap  "No automatic folding
set showmatch "Display matching parentheses
if has("autocmd")
  au VimEnter,InsertLeave * silent execute '!echo -ne "\e[2 q"' | redraw!
  au InsertEnter,InsertChange *
    \ if v:insertmode == 'i' | 
    \   silent execute '!echo -ne "\e[6 q"' | redraw! |
    \ elseif v:insertmode == 'r' |
    \   silent execute '!echo -ne "\e[4 q"' | redraw! |
    \ endif
  au VimLeave * silent execute '!echo -ne "\e[ q"' | redraw!
endif

set nocompatible
set backspace=indent,eol,start
set encoding=utf-8
set guifont=DroidSansMono_Nerd_Font:h11
set fenc=utf-8

set ts=4
set tabstop=4 "TAB equivalent space length
set shiftwidth=4
set softtabstop=4 
set expandtab 
set autoindent "Automatic indentation

set mouse=a "To enable the mouse
set hlsearch  "Search highlight
set wrap "换行显示
syntax enable  "Syntax highlighting
set nocompatible
filetype off
"set rtp+=~/.vim/bundle/Vundle.vim
call plug#begin('~/.vim/bundle')

"Plug 'VundleVim/Vundle.vim'
"Plug 'davidhalter/jedi-vim'
"Plug 'dense-analysis/ale'
Plug 'gaalcaras/ncm-R'
Plug 'tpope/vim-fugitive'
Plug 'Shougo/neocomplete.vim'
Plug 'jalvesaq/Nvim-R'
Plug 'chrisbra/csv.vim'
Plug 'ncm2/ncm2'
Plug 'roxma/nvim-yarp'
Plug 'roxma/vim-hug-neovim-rpc'
Plug 'sirver/UltiSnips'
Plug 'ncm2/ncm2-ultisnips'
"Plug 'Valloric/YouCompleteMe'
Plug 'godlygeek/tabular'
"Plug 'hdima/python-syntax'
Plug 'lervag/vimtex'
Plug 'xuhdev/vim-latex-live-preview'
Plug 'calviken/vim-gdscript3'
Plug 'skywind3000/asyncrun.vim'
Plug 'humiaozuzu/dot-vimrc'

"Plug 'artur-shaik/vim-javacomplete2'
Plug 'preservim/nerdtree'
Plug 'Lokaltog/vim-powerline'
"Plug 'vim-scripts/javacomplete'

"Plug 'tpope/vim-commentary'
Plug 'tpope/vim-dispatch'
Plug 'ctrlpvim/ctrlp.vim'
"Plug 'vim-syntastic/syntastic'
"Plug 'liuchengxu/vista.vim'

Plug 'preservim/tagbar'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'walm/jshint.vim'
"Plug 'pangloss/vim-javascript'
Plug 'jamescarr/snipmate-nodejs'
Plug 'myhere/vim-nodejs-complete'
Plug 'guileen/vim-node'
Plug 'fatih/vim-go'
Plug 'WolfgangMehner/perl-support'
"Plug 'dart-lang/dart-vim-plugin'
Plug 'thosakwe/vim-flutter'
Plug 'natebosch/vim-lsc'
"Plun 'jmert/julia-vim'
Plug 'rust-lang/rust.vim'
"Plug 'nosami/Omnisharp'
"Plug 'OmniSharp/omnisharp-vim'
"Plug 'natebosch/vim-lsc-dart'
Plug 'othree/html5.vim'
Plug 'ternjs/tern_for_vim', {'do': 'npm install'}
Plug 'chen244/mypython'
Plug 'ryanoasis/vim-devicons'
"Plun 'iamcco/markdown-preview.nvim'
"Plun 'walm/jshint.vim'
"Plun 'plasticboy/vim-markdown'
" Plug 'suan/vim-instant-markdown'
Plug 'JuliaEditorSupport/julia-vim'
Plug 'mattn/emmet-vim'
Plug 'vim-ruby/vim-ruby'
Plug 'udalov/kotlin-vim'
"Plug 'chen244/vim-run'
Plug 'vim-scripts/cpp.vim'
Plug 'honza/vim-snippets'
"Plugin 'autozimu/LanguageClient-neovim', {
"    \ 'branch': 'next',
"    \ 'do': 'bash install.sh',
"    \ }
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }


Plug 'neoclide/coc.nvim',{'branch':'release'}
Plug 'iamcco/markdown-preview.nvim', { 'do': 'cd app && yarn install'  }
Plug 'morhetz/gruvbox'
Plug 'peterhoeg/vim-qml'
Plug 'cespare/vim-toml'
Plug 'alaviss/nim.nvim'
Plug 'puremourning/vimspector'
Plug 'maksimr/vim-jsbeautify'
"Plug 'vlime/vlime'
Plug 'vlime/vlime', {'rtp': 'vim/'}
Plug 'kovisoft/slimv'
Plug 'arrufat/vala.vim'

"Plug 'OmniSharp/omnisharp-vim'
"Plug 'fsharp/vim-fsharp', {
"      \ 'for': 'fsharp',
"      \ 'do':  'make fsautocomplete',
"}      
"Plug 'autozimu/LanguageClient-neovim', {
"    \ 'branch': 'next',
"    \ 'do': 'bash install.sh',
"\ }

"Plug 'deoplete-plugins/deoplete-lsp'

"if has('nvim')
"  Plug 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' }
"else
"  Plug 'Shougo/deoplete.nvim'
"  Plug 'roxma/nvim-yarp'
"  Plug 'roxma/vim-hug-neovim-rpc'
"endif

Plug 'ionide/Ionide-vim', {
      \ 'do':  'make fsautocomplete',
      \}


call plug#end()
"exec "source ~/.vim/bundle/vim-mypython/autoload/mypython.vim"
let g:airline#extensions#tabline#enabled = 1
set laststatus=2 "1为关闭底部状态栏 2为开启"
set t_Co=256     "终端开启256色支持"
set encoding=utf-8
set langmenu=zh_CN.UTF-8
set ambiwidth=double "防止特殊符号无法正常显示
nmap ff :bn<cr> "设置tab键映射"

"let g:OmniSharp_server_stdio = 1
"let g:OmniSharp_server_use_mono = 1

"let g::OmniSharp_server_stdio = 1
"let g:airline_theme='base16_bright'  " murmur配色也不错
func! Settab()
    if &filetype == 'javascript'
        set ts=2
        set tabstop=2 "TAB equivalent space length
        set shiftwidth=2
        set softtabstop=2 
        set expandtab 
        set autoindent "Automatic indentation
    elseif &filetype == 'json'
        set ts=2
        set tabstop=2 "TAB equivalent space length
        set shiftwidth=2
        set softtabstop=2 
        set expandtab 
        set autoindent "Automatic indentation
    elseif &filetype == 'vim'
        syntax match cscFix "Plug\|Plugin"
    else
        set ts=4
        set tabstop=4 "TAB equivalent space length
        set shiftwidth=4
        set softtabstop=4 
        set expandtab 
        set autoindent "Automatic indentation
    endif
endfunc

"autocmd BufNewFile,BufWritePre,BufRead *.js exec ":call JsBeautify()"
autocmd BufNewFile,BufWritePre,BufRead *.* exec ":call Settab()"
"autocmd BufNewFile,BufWritePre,BufRead *.html exec "call HtmlBeautify()"
autocmd BufNewFile,BufWritePre,BufRead *.css exec ":call CSSBeautify()"
autocmd BufNewFile,BufWritePre,BufRead *.csv exec "Tabularize /,"
filetype plugin indent on
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

"let g:syntastic_python_checkers = ['pyflakes']
let python_highlight_all=1
syntax on

"here is added
set updatetime=500


"nmap <F4> <Plug>(JavaComplete-Imports-AddSmart)
"map <F5> :call CompileRunGcc()<CR>
"map <F6> :call Lncurses()<CR>
"map <F7> :call DebugGO()<CR>

hi Pmenu ctermfg=223 ctermbg=239 guifg=#ebdbb2 guibg=#504945
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
let s:opam_share_dir = system("opam config var share")
let s:opam_share_dir = substitute(s:opam_share_dir, '[\r\n]*$', '', '')

let s:opam_configuration = {}

function! OpamConfOcpIndent()
  execute "set rtp^=" . s:opam_share_dir . "/ocp-indent/vim"
endfunction
let s:opam_configuration['ocp-indent'] = function('OpamConfOcpIndent')

function! OpamConfOcpIndex()
  execute "set rtp+=" . s:opam_share_dir . "/ocp-index/vim"
endfunction
let s:opam_configuration['ocp-index'] = function('OpamConfOcpIndex')

function! OpamConfMerlin()
  let l:dir = s:opam_share_dir . "/merlin/vim"
  execute "set rtp+=" . l:dir
endfunction
let s:opam_configuration['merlin'] = function('OpamConfMerlin')

let s:opam_packages = ["ocp-indent", "ocp-index", "merlin"]
let s:opam_check_cmdline = ["opam list --installed --short --safe --color=never"] + s:opam_packages
let s:opam_available_tools = split(system(join(s:opam_check_cmdline)))
for tool in s:opam_packages
  " Respect package order (merlin should be after ocp-index)
  if count(s:opam_available_tools, tool) > 0
    call s:opam_configuration[tool]()
  endif
endfor
" ## end of OPAM user-setup addition for vim / base ## keep this line
let g:rust_use_custom_ctags_defs = 1  " if using rust.vim
"let g:tagbar_type_rust = {
"  \ 'ctagsbin' : 'ctags',
"  \ 'ctagstype' : 'rust',
"  \ 'kinds' : [
"      \ 'n:modules',
"      \ 's:structures:1',
"      \ 'i:interfaces',
"      \ 'c:implementations',
"      \ 'f:functions:1',
"      \ 'g:enumerations:1',
"      \ 't:type aliases:1:0',
"      \ 'v:constants:1:0',
"      \ 'M:macros:1',
"      \ 'm:fields:1:0',
"      \ 'e:enum variants:1:0',
"      \ 'P:methods:1',
"  \ ],
"  \ 'sro': '::',
"  \ 'kind2scope' : {
"      \ 'n': 'module',
"      \ 's': 'struct',
"      \ 'i': 'interface',
"      \ 'c': 'implementation',
"      \ 'f': 'function',
"      \ 'g': 'enum',
"      \ 't': 'typedef',
"      \ 'v': 'variable',
"      \ 'M': 'macro',
"      \ 'm': 'field',
"      \ 'e': 'enumerator',
"      \ 'P': 'method',
"  \ },
"\ }
"let g:tagbar_type_kotlin = {
"    \ 'ctagstype' : 'kotlin',
"    \ 'ctagsbin' : 'ctags',
"    \ 'kinds'     : [
"        \ 'c:classes:0:1',
"        \ 'f:functions',
"        \ 'g:enums',
"        \ 'u:unions',
"        \ 's:structs',
"        \ 'm:members'
"    \ ],
"    \'sro': '.',
"    \ 'kind2scope' : {
"        \ 'c' : 'class',
"        \ 'g' : 'enum',
"        \ 's' : 'struct',
"        \ 'u' : 'union'
"    \},
"    \ 'scope2kind' : {
"        \ 'enum'      : 'g',
"        \ 'class'     : 'c',
"        \ 'struct'    : 's',
"        \ 'union'     : 'u'
"    \ }
"\ }
"let g:tagbar_type_r = {
"    \ 'ctagsbin'  : 'ctags',
"    \ 'ctagstype' : 'r',
"    \ 'kinds'     : [
"        \ 'f:Functions',
"        \ 'g:GlobalVariables',
"        \ 'v:FunctionVariables',
"    \ ]
"\ }

"let g:tagbar_type_julia = {
"    \ 'ctagsbin'  : 'ctags',
"    \ 'ctagstype' : 'julia',
"    \ 'kinds'     : [
"        \ 't:struct', 'f:function', 'm:macro', 'c:const']
"    \ }


"let g:tagbar_type_markdown = {
"    \ 'ctagsbin'  : 'mdctags',
"    \ 'ctagsargs' : '',
"    \ 'kinds'     : [
"            \     'a:h1:0:0',
"            \     'b:h2:0:0',
"            \     'c:h3:0:0',
"            \     'd:h4:0:0',
"            \     'e:h5:0:0',
"            \     'f:h6:0:0',
"    \ ],
"    \ 'sro'        : '::',
"    \ 'kind2scope' : {
"            \     'a' : 'h1',
"            \     'b' : 'h2',
"            \     'c' : 'h3',
"            \     'd' : 'h4',
"            \     'e' : 'h5',
"            \     'f' : 'h6',
"    \ },
"    \ 'scope2kind' : {
"            \     'h1' : 'a',
"            \     'h2' : 'b',
"            \     'h3' : 'c',
"            \     'h4' : 'd',
"            \     'h5' : 'e',
"            \     'h6' : 'f',            
"    \}
"\}
"let g:tagbar_type_json = {
"    \ 'ctagsbin'  : 'ctags',
"    \ 'ctagstype' : 'json',
"    \ 'kinds' : [
"      \ 'o:objects',
"      \ 'a:arrays',
"      \ 'n:numbers',
"      \ 's:strings',
"      \ 'b:booleans',
"      \ 'z:nulls'
"    \ ],
"  \ 'sro' : '.',
"    \ 'scope2kind': {
"    \ 'object': 'o',
"      \ 'array': 'a',
"      \ 'number': 'n',
"      \ 'string': 's',
"      \ 'boolean': 'b',
"      \ 'null': 'z'
"    \ },
"    \ 'kind2scope': {
"    \ 'o': 'object',
"      \ 'a': 'array',
"      \ 'n': 'number',
"      \ 's': 'string',
"      \ 'b': 'boolean',
"      \ 'z': 'null'
"    \ },
"    \ 'sort' : 0
"    \ }
"let g:tagbar_type_yaml = {
"    \ 'ctagsbin'  : 'ctags',
"    \ 'ctagstype' : 'yaml',
"    \ 'kinds' : [
"        \ 'a:anchors',
"        \ 's:section',
"        \ 'e:entry'
"    \ ],
"  \ 'sro' : '.',
"    \ 'scope2kind': {
"      \ 'section': 's',
"      \ 'entry': 'e'
"    \ },
"    \ 'kind2scope': {
"      \ 's': 'section',
"      \ 'e': 'entry'
"    \ },
"    \ 'sort' : 0
"    \ }

let g:tagbar_type_dart = { 'ctagsbin': '~/.pub-cache/bin/dart_ctags' }
"let g:fsharp#backend = "languageclient-neovim"
let g:fsharp#fsautocomplete_command =
    \ [ 'dotnet',
    \   'fsautocomplete',
    \   '--background-service-enabled'
    \ ]
"
"let g:OmniSharp_server_use_mono = 1
"let g:OmniSharp_server_stdio = 1
"let g:OmniSharp_popup_options = {
"\ 'highlight': 'Normal',
"\ 'padding': [1],
"\ 'border': [1]
"\}
