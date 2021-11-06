" cr is the enter. and use ff to change the buffer
nmap ff :bn<cr> 
" open coc-explorer, so you should install it
if !has('nvim')
    execute "set <M-f>=\ef"
    execute "set <M-c>=\ec"
    execute "set <M-w>=\ew"
endif
nmap <M-f> :CocCommand explorer<cr>
nmap <M-d> :Vista<cr>
nmap <M-w> :Tagbar<cr>
nmap <M-e> :MundoShow<cr>
nmap <silent> gd <Plug>(coc-definition)
nmap <silent> <C-]> <Plug>(coc-definition)
