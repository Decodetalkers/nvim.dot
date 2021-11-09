" cr is the enter. and use ff to change the buffer
nmap ff :bn<cr> 
" open coc-explorer, so you should install it
if !has('nvim')
    execute "set <M-f>=\ef"
    execute "set <M-c>=\ec"
    execute "set <M-w>=\ew"
    execute "set <M-g>=\ew"
    execute "set <M-q>=\eq"
endif
let g:OpenVista = 0
func! VistaStart()
    if g:OpenVista == 0
        let g:OpenVista = 1
        exec "Vista"
    else
        let g:OpenVista = 0
        exec "Vista!!"
    endif
endfunc
let g:OpenUndo = 0
func! UndoStart()
    if g:OpenUndo == 0
        let g:OpenUndo = 1
        exec "MundoShow"
    else
        let g:OpenUndo = 0
        exec "MundoHide"
    endif
endfunc
let g:OpenRelate = 0
func! Relative()
    if g:OpenRelate == 0
        let g:OpenRelate = 1
        exec "set norelativenumber"
    else
        let g:OpenRelate = 0
        exec "set relativenumber"
    endif
endfunc
nmap <M-f> :NvimTreeToggle<cr>
nmap <M-d> :call VistaStart()<cr>
nmap <M-w> :Tagbar<cr>
nmap <M-e> :call UndoStart()<cr>
nmap <M-q> :call Relative()<cr>
nmap <M-g> :Flog<cr>
nmap <silent> gd <Plug>(coc-definition)
nmap <silent> <C-]> <Plug>(coc-definition)
