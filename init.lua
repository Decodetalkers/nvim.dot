local opt = vim.opt
opt.number=true
opt.wrap=true;
opt.mouse = 'a'
opt.guifont = "DroidSansMono_Nerd_Font:h11"
vim.cmd [[filetype off]]
vim.cmd [[packadd packer.nvim]]
opt.foldmethod="syntax"

require('packer').startup(function()
    use {"wbthomason/packer.nvim", event = "VimEnter"}
    use {
	'lewis6991/gitsigns.nvim',
   	requires = {
    	   'nvim-lua/plenary.nvim'
        },
        config = function()
         require('gitsigns').setup()
        end
    }

    use {'hrsh7th/nvim-compe'}
    use {"neovim/nvim-lspconfig"}
    use {'williamboman/nvim-lsp-installer'}
    use {'tpope/vim-fugitive'}
    use {'chrisbra/csv.vim'}
    use {'roxma/nvim-yarp'}
    use {'roxma/vim-hug-neovim-rpc'}
    use {'sirver/UltiSnips'}
    use {'ncm2/ncm2-ultisnips'}
    use {'godlygeek/tabular'}
    use {'liuchengxu/vista.vim'}
    use {'preservim/tagbar'}
    use {'skywind3000/asyncrun.vim'}
    use {'humiaozuzu/dot-vimrc'}
    --use {'preservim/nerdtree'}
    use {'ctrlpvim/ctrlp.vim'}
    use {'vim-airline/vim-airline'}
    use {'vim-airline/vim-airline-themes'}
    use {'natebosch/vim-lsc'}
    use {'ryanoasis/vim-devicons'}
    use {'mattn/emmet-vim'}
    use {'vim-scripts/cpp.vim'}
    use {'honza/vim-snippets'}
    use {'junegunn/fzf'}
    --use {'neoclide/coc.nvim',branch = 'release'}
    use {'iamcco/markdown-preview.nvim', opt=true, run = 'cd app && yarn install', cmd = "MarkdownPreview"}
    use {'cespare/vim-toml'}
    use {'alaviss/nim.nvim'}
    use {'puremourning/vimspector'}
    use {'maksimr/vim-jsbeautify'}
    use {'kongo2002/fsharp-vim'}
    use {'dart-lang/dart-vim-plugin'}
    use {'peterhoeg/vim-qml'}
    use {'arrufat/vala.vim'}
    use {'rakr/vim-one'}
    use {'APZelos/blamer.nvim'}
    use {'rrethy/vim-hexokinase'}
    use {'lukas-reineke/indent-blankline.nvim',run = 'make hexokinase'}
    use {'simnalamburt/vim-mundo'}
    use {'rbong/vim-flog'}
    use {'kyazdani42/nvim-web-devicons'}
    use {'kyazdani42/nvim-tree.lua'}-- Packer can manage itself
 end)
require'nvim-tree'.setup{}
require('gitsigns').setup()

--require'gitsigns'.setup{}

--local sumneko_root_path = vim.fn.stdpath('cache')..'/lspconfig/sumneko_lua/lua-language-server'
--local sumneko_binary = sumneko_root_path.."/bin/"..system_name.."/lua-language-server"
--local sumneko_root_path = '/usr/bin/lua-language-server'
--local sumneko_binary = '/usr/bin/lua-language-server'

local nvim_lsp = require('lspconfig')

-- Use an on_attach function to only map the following keys
-- after the language server attaches to the current buffer
local on_attach = function(_, bufnr)
  local function buf_set_keymap(...) vim.api.nvim_buf_set_keymap(bufnr, ...) end
  local function buf_set_option(...) vim.api.nvim_buf_set_option(bufnr, ...) end

  -- Enable completion triggered by <c-x><c-o>
  buf_set_option('omnifunc', 'v:lua.vim.lsp.omnifunc')

  -- Mappings.
  local opts = { noremap=true, silent=true }

  -- See `:help vim.lsp.*` for documentation on any of the below functions
  buf_set_keymap('n', 'gD', '<cmd>lua vim.lsp.buf.declaration()<CR>', opts)
  buf_set_keymap('n', 'gd', '<cmd>lua vim.lsp.buf.definition()<CR>', opts)
  buf_set_keymap('n', '<C-]>', '<cmd>lua vim.lsp.buf.definition()<CR>', opts)
  buf_set_keymap('n', 'K', '<cmd>lua vim.lsp.buf.hover()<CR>', opts)
  buf_set_keymap('n', 'gi', '<cmd>lua vim.lsp.buf.implementation()<CR>', opts)
  buf_set_keymap('n', '<C-k>', '<cmd>lua vim.lsp.buf.signature_help()<CR>', opts)
  buf_set_keymap('n', '<space>wa', '<cmd>lua vim.lsp.buf.add_workspace_folder()<CR>', opts)
  buf_set_keymap('n', '<space>wr', '<cmd>lua vim.lsp.buf.remove_workspace_folder()<CR>', opts)
  buf_set_keymap('n', '<space>wl', '<cmd>lua print(vim.inspect(vim.lsp.buf.list_workspace_folders()))<CR>', opts)
  buf_set_keymap('n', '<space>D', '<cmd>lua vim.lsp.buf.type_definition()<CR>', opts)
  buf_set_keymap('n', '<space>rn', '<cmd>lua vim.lsp.buf.rename()<CR>', opts)
  buf_set_keymap('n', '<space>ca', '<cmd>lua vim.lsp.buf.code_action()<CR>', opts)
  buf_set_keymap('n', 'gr', '<cmd>lua vim.lsp.buf.references()<CR>', opts)
  buf_set_keymap('n', '<space>e', '<cmd>lua vim.lsp.diagnostic.show_line_diagnostics()<CR>', opts)
  buf_set_keymap('n', '[d', '<cmd>lua vim.lsp.diagnostic.goto_prev()<CR>', opts)
  buf_set_keymap('n', ']d', '<cmd>lua vim.lsp.diagnostic.goto_next()<CR>', opts)
  buf_set_keymap('n', '<space>q', '<cmd>lua vim.lsp.diagnostic.set_loclist()<CR>', opts)
  buf_set_keymap('n', '<space>f', '<cmd>lua vim.lsp.buf.formatting()<CR>', opts)

end
-- set the path to the sumneko installation; if you previously installed via the now deprecated :LspInstall, use
--local sumneko_root_path = vim.fn.stdpath('cache')..'/lspconfig/sumneko_lua/lua-language-server'
--local sumneko_root_path =  '/usr/bin'
--local sumneko_binary = "/usr/bin/lua-language-server"

require'lspconfig'.dartls.setup{
    cmd = { "dart",  "/home/cht/Flutter/bin/cache/dart-sdk/bin/snapshots/analysis_server.dart.snapshot", "--lsp" },
    filetypes = { "dart" },
    on_attach = on_attach,
    init_options = {
      closingLabels = false,
      flutterOutline = false,
      onlyAnalyzeProjectsWithOpenFiles = false,
      outline = false,
      suggestFromUnimportedLibraries = true
    },
    root_dir = nvim_lsp.util.root_pattern("pubspec.yaml"),


}
local sumneko_root_path = '/usr/bin/lua-language-server' -- Change to your sumneko root installation
local sumneko_binary = '/usr/bin/lua-language-server'
local runtime_path = vim.split(package.path, ';')
table.insert(runtime_path, "lua/?.lua")
table.insert(runtime_path, "lua/?/init.lua")
require'lspconfig'.sumneko_lua.setup{
    cmd = {sumneko_binary, "-E", sumneko_root_path .. "/main.lua"};
    settings = {
        Lua = {
	  runtime = {
        -- Tell the language server which version of Lua you're using (most likely LuaJIT in the case of Neovim)
            version = 'LuaJIT',
        -- Setup your lua path
            path = runtime_path,
          },
          diagnostics = {
        -- Get the language server to recognize the `vim` global
           globals = { 'vim' },
          },
          telemetry = {
            enable = false,
          },
        },
    }
}

require'compe'.setup {
  enabled = true;
  autocomplete = true;
  debug = false;
  min_length = 1;
  preselect = 'enable';
  throttle_time = 80;
  source_timeout = 200;
  resolve_timeout = 800;
  incomplete_delay = 400;
  max_abbr_width = 100;
  max_kind_width = 100;
  max_menu_width = 100;
  documentation = {
    border = { '', '' ,'', ' ', '', '', '', ' ' }, -- the border option is the same as `|help nvim_open_win|`
    winhighlight = "NormalFloat:CompeDocumentation,FloatBorder:CompeDocumentationBorder",
    max_width = 120,
    min_width = 60,
    max_height = math.floor(vim.o.lines * 0.3),
    min_height = 1,
  };

  source = {
    path = true;
    buffer = true;
    calc = true;
    nvim_lsp = true;
    nvim_lua = true;
    vsnip = true;
    ultisnips = true;
    luasnip = true;
  };
}

opt.termguicolors=true
opt.background="dark"
opt.cursorline=true
opt.undofile=true
opt.undodir="/home/cht/.vim/undo"
vim.cmd [[colorscheme one]]
vim.cmd [[hi CursorLine cterm=bold  guibg=#333333]]
vim.cmd [[hi CocFadeOut cterm=bold  guibg=#666666]]
vim.cmd [[let g:airline#extensions#tabline#enabled = 1 ]]
vim.cmd [[let g:airline_powerline_fonts = 1]]
vim.cmd [[autocmd ColorScheme * hi Normal guibg=#1b1e27]]
vim.cmd [[let g:Hexokinase_highlighters = ['backgroundfull'] ]]

vim.api.nvim_set_keymap("n","<M-f>",":NvimTreeToggle<cr>",{ noremap = false, silent = true })
vim.api.nvim_set_keymap("n","<M-g>",":Flog<cr>",{ noremap = false, silent = true })
vim.api.nvim_set_keymap("n","<M-w>",":Tagbar<cr>",{ noremap = false, silent = true })
vim.api.nvim_set_keymap("n","<M-d>",":Vista<cr>",{ noremap = false, silent = true })
