local prequire = require("prequire")
local settings = prequire("settings")
local parser_config = require "nvim-treesitter.parsers".get_parser_configs()
if settings and settings.treesitter and settings.treesitter.slint then
    parser_config.slint = settings.treesitter.slint
end
