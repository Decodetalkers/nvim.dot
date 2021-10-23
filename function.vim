func! Settab()
    if &filetype == 'json' || &filetype == 'cpp' || &filetype == 'dart' || &filetype == 'javascript'
        set ts=2
        set tabstop=2 "TAB equivalent space length
        set shiftwidth=2
        set softtabstop=2 
        set expandtab 
        set autoindent "Automatic indentation
    else
        set ts=4
        set tabstop=4 "TAB equivalent space length
        set shiftwidth=4
        set softtabstop=4 
        set expandtab 
        set autoindent "Automatic indentation
    endif
endfunc

autocmd BufNewFile,BufWritePre,BufRead *.* exec ":call Settab()"
autocmd BufNewFile,BufWritePre,BufRead *.css exec ":call CSSBeautify()"
autocmd BufNewFile,BufWritePre,BufRead *.csv exec "Tabularize /,"
filetype plugin indent on

let s:opam_share_dir = system("opam var share")
let s:opam_share_dir = substitute(s:opam_share_dir, '[\r\n]*$', '', '')

let s:opam_configuration = {}

function! OpamConfOcpIndent()
  execute "set rtp^=" . s:opam_share_dir . "/ocp-indent/vim"
endfunction
let s:opam_configuration['ocp-indent'] = function('OpamConfOcpIndent')

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
