set noshowmatch
set completeopt=longest,menuone,preview

set updatetime=500

" if the terminal can support the true color
if has("termguicolors")
    " fix bug for vim
    "set t_8f=^[[38;2;%lu;%lu;%lum
    "set t_8b=^[[48;2;%lu;%lu;%lum
    " enable true color
    set termguicolors
    colorscheme one
    set background=dark " for the dark version
    set cursorline
    " only if the termianl support the true color, set the CursorLine, else 
    " as the terminal color
    hi Normal guibg=#1b1e27
    hi CursorLine cterm=bold  guibg=#333333
    "hi Visual cterm=bold  guibg=#444444
    " warning block
    hi CocFadeOut cterm=bold  guibg=#666666
else
    " if not have the color , I should open it buy my self
    syntax enable
    syntax on
    " then set the Pmenu to make the terminal beautiful
    hi Pmenu ctermfg=223 ctermbg=239 guifg=#ebdbb2 guibg=#504945
endif

set laststatus=2 "1为关闭底部状态栏 2为开启"
set t_Co=256     "终端开启256色支持"
set encoding=utf-8
set langmenu=zh_CN.UTF-8


" if not in tty, then use powerline font 
if $TERM != 'linux'
    let g:airline#extensions#tabline#enabled = 1
    let g:airline_powerline_fonts = 1
endif
set showtabline=2
