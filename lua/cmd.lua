vim.cmd([[filetype on]])
vim.cmd([[colorscheme one]])
vim.cmd([[hi CursorLine cterm=bold  guibg=#333333]])
--vim.cmd([[hi CocFadeOut cterm=bold  guibg=#666666]])
--vim.cmd([[hi Normal guibg=#1b1e27]])
vim.cmd([[let g:Hexokinase_highlighters = ['backgroundfull'] ]])
vim.cmd([[autocmd BufNewFile,BufWritePre,BufRead *.* exec ":lua require('functions.files').Settab()" ]])
vim.cmd([[autocmd BufNewFile,BufRead *.conf,*.ini set filetype=dosini ]])
vim.cmd([[autocmd! BufNewFile,BufRead *    setlocal nofoldenable]])
vim.cmd([[let g:blamer_enabled = 1]])
-- for scrollbars
vim.cmd([[augroup ScrollbarInit]])
vim.cmd([[autocmd!]])
vim.cmd([[autocmd WinScrolled,VimResized,QuitPre * silent! lua require('scrollbar').show()]])
vim.cmd([[autocmd WinEnter,FocusGained           * silent! lua require('scrollbar').show()]])
vim.cmd([[autocmd WinLeave,BufLeave,BufWinLeave,FocusLost  * silent! lua require('scrollbar').clear()]])
vim.cmd([[augroup end]])
-- for fsharp
-- vim.cmd([[au FileType glsl set filetype=fsharp]])
-- vim.cmd([[au BufNewFile,BufRead *.fs  set filetype=fsharp]])
--vim.cmd([[autocmd BufNewFile,BufRead *.fsproj set filetype=xml]])
-- for vimspector
vim.cmd([[let g:vimspector_enable_mappings = 'HUMAN']])
vim.cmd([[packadd! vimspector]])

--vim.cmd(
--    [[autocmd BufEnter,BufWinEnter,TabEnter *.rs :lua require'lsp_extensions'.inlay_hints{enabled = {"TypeHint", "ChainingHint", "ParameterHint"}}]]
--)
vim.cmd([[highlight Function cterm=italic gui=italic]])
vim.cmd([[highlight Comment cterm=italic gui=italic]])
vim.cmd([[au FileType zsh set filetype=sh]])
vim.cmd([[autocmd FileType cpp autocmd BufWritePre <buffer> lua vim.lsp.buf.formatting_sync()]])

-- cmps
vim.cmd([[highlight! CmpItemAbbrMatch guibg=NONE guifg=#569CD6]])
vim.cmd([[highlight! CmpItemAbbrMatchFuzzy guibg=NONE guifg=#569CD6]])
vim.cmd([[highlight! CmpItemKindFunction guibg=NONE guifg=#C586C0]])
vim.cmd([[highlight! CmpItemKindMethod guibg=NONE guifg=#C586C0]])
vim.cmd([[highlight! CmpItemKindVariable guibg=NONE guifg=#9CDCFE]])
vim.cmd([[highlight! CmpItemKindKeyword guibg=NONE guifg=#D4D4D4]])
vim.cmd [[highlight! link CmpItemAbbrMatchFuzzy Aqua]]
vim.cmd [[highlight! link CmpItemKindText Fg]]
vim.cmd [[highlight! link CmpItemKindMethod Purple]]
vim.cmd [[highlight! link CmpItemKindFunction Purple]]
vim.cmd [[highlight! link CmpItemKindConstructor Green]]
vim.cmd [[highlight! link CmpItemKindField Aqua]]
vim.cmd [[highlight! link CmpItemKindVariable Blue]]
vim.cmd [[highlight! link CmpItemKindClass Green]]
vim.cmd [[highlight! link CmpItemKindInterface Green]]
vim.cmd [[highlight! link CmpItemKindValue Orange]]
vim.cmd [[highlight! link CmpItemKindKeyword Keyword]]
vim.cmd [[highlight! link CmpItemKindSnippet Red]]
vim.cmd [[highlight! link CmpItemKindFile Orange]]
vim.cmd [[highlight! link CmpItemKindFolder Orange]]
vim.cmd([[autocmd CursorHold <buffer> lua vim.lsp.buf.hover()]])
