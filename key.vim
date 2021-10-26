" cr is the enter. and use ff to change the buffer
nmap ff :bn<cr> 
" open coc-explorer, so you should install it
if !has('nvim')
    execute "set <M-f>=\ef"
endif
nmap <M-f> :CocCommand explorer<cr>
