local default = require('lsp.default')

local nvim_lsp = require('lspconfig')
require'lspconfig'.dartls.setup{
    cmd = { "dart",  "/home/cht/Flutter/bin/cache/dart-sdk/bin/snapshots/analysis_server.dart.snapshot", "--lsp" ,"--client-id" ,"vim"},
    filetypes = { "dart" },
    on_attach = default.on_attach,
    init_options = {
      closingLabels = false,
      flutterOutline = false,
      onlyAnalyzeProjectsWithOpenFiles = false,
      outline = false,
      suggestFromUnimportedLibraries = true
    },
    root_dir = nvim_lsp.util.root_pattern("pubspec.yaml"),


}

