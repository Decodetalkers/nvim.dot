" You should install tagbar first
" and you should add rusty-tags
" at https://github.com/dan-t/rusty-tags 
"autocmd BufRead *.rs :setlocal tags=./rusty-tags.vi;/,$RUST_SRC_PATH/rusty-tags.vi
"autocmd BufWritePost,BufNewFile,BufWritePre,BufRead *.rs :silent! exec "!rusty-tags vi --quiet --start-dir=" . expand('%:p:h') . "&" | redraw!
autocmd!   BufNewFile,BufRead *    setlocal nofoldenable
"let g:rust_use_custom_ctags_defs = 1  " if using rust.vim
let g:tagbar_type_dart = { 'ctagsbin': '~/.pub-cache/bin/dart_ctags' }
