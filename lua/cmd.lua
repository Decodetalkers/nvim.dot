vim.cmd([[filetype on]])
vim.cmd([[colorscheme one]])
--vim.cmd([[hi CocFadeOut cterm=bold  guibg=#666666]])
--vim.cmd([[hi Normal guibg=#1b1e27]])
vim.cmd([[let g:Hexokinase_highlighters = ['backgroundfull'] ]])
--vim.cmd([[autocmd BufNewFile,BufWritePre,BufRead *.* exec ":lua require('functions.files').Settab()"]])
vim.cmd([[
autocmd BufNewFile,BufWritePre,BufRead *.* lua require('functions.files').Settab()
autocmd! BufNewFile,BufRead *    setlocal nofoldenable
]])
--vim.cmd([[let g:blamer_enabled = 1]])
-- for scrollbars
vim.cmd([[
augroup ScrollbarInit
autocmd!
autocmd WinScrolled,VimResized,QuitPre * silent! lua require('scrollbar').show()
autocmd WinEnter,FocusGained           * silent! lua require('scrollbar').show()
autocmd WinLeave,BufLeave,BufWinLeave,FocusLost  * silent! lua require('scrollbar').clear()
augroup end
]])
-- for fsharp
-- vim.cmd([[au FileType glsl set filetype=fsharp]])
-- vim.cmd([[au BufNewFile,BufRead *.fs  set filetype=fsharp]])
--vim.cmd([[autocmd BufNewFile,BufRead *.fsproj set filetype=xml]])

-- for vimspector
--vim.cmd([[let g:vimspector_enable_mappings = 'HUMAN']])
--vim.cmd([[packadd! vimspector]])

--vim.cmd(
--    [[autocmd BufEnter,BufWinEnter,TabEnter *.rs :lua require'lsp_extensions'.inlay_hints{enabled = {"TypeHint", "ChainingHint", "ParameterHint"}}]]
--)
vim.cmd([[
highlight Function cterm=italic gui=italic
highlight Comment cterm=italic gui=italic
]])

vim.cmd([[
au FileType zsh set filetype=sh
autocmd FileType cpp autocmd BufWritePre <buffer> lua vim.lsp.buf.formatting_sync()
autocmd FileType cs autocmd BufWritePre <buffer> lua vim.lsp.buf.formatting_sync()
autocmd FileType c autocmd BufWritePre <buffer> lua vim.lsp.buf.formatting_sync()
autocmd FileType typescript autocmd BufWritePre <buffer> lua vim.lsp.buf.formatting_sync()
autocmd FileType vue autocmd BufWritePre <buffer> lua vim.lsp.buf.formatting_sync()
]])

-- cmps
vim.cmd([[
highlight! CursorLine cterm=bold  guibg=#333333
highlight! CmpItemAbbrMatch guibg=NONE guifg=#569CD6
highlight! CmpItemAbbrMatchFuzzy guibg=NONE guifg=#569CD6
highlight! CmpItemKindFunction guibg=NONE guifg=#C586C0
highlight! CmpItemKindMethod guibg=NONE guifg=#C586C0
highlight! CmpItemKindVariable guibg=NONE guifg=#9CDCFE
highlight! CmpItemKindKeyword guibg=NONE guifg=#D4D4D4
highlight! link CmpItemAbbrMatchFuzzy Aqua
highlight! link CmpItemKindText Fg
highlight! link CmpItemKindMethod Purple
highlight! link CmpItemKindFunction Purple
highlight! link CmpItemKindConstructor Green
highlight! link CmpItemKindField Aqua
highlight! link CmpItemKindVariable Blue
highlight! link CmpItemKindClass Green
highlight! link CmpItemKindInterface Green
highlight! link CmpItemKindValue Orange
highlight! link CmpItemKindKeyword Keyword
highlight! link CmpItemKindSnippet Red
highlight! link CmpItemKindFile Orange
highlight! link CmpItemKindFolder Orange
]])
