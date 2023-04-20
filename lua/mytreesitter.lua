local prequire = require("prequire")
local settings = prequire("settings")
local parser_config = require("nvim-treesitter.parsers").get_parser_configs()
if settings and settings.treesitter then
    if settings.treesitter.slint then
        parser_config.slint = settings.treesitter.slint
    end
    if settings.treesitter.nu then
        parser_config.nu = settings.treesitter.nu
    end
    if settings.treesitter.meson then
        parser_config.meson = settings.treesitter.meson
    end
    if settings.treesitter.pkgconfig then
        parser_config.pkgconfig = settings.treesitter.pkgconfig
    end
    if settings.treesitter.qmldir then
        parser_config.qmldir = settings.treesitter.qmldir
    end
    if settings.treesitter.groovy then
        parser_config.groovy = settings.treesitter.groovy
    end
    if settings.treesitter.plantuml then
        parser_config.plantuml = settings.treesitter.plantuml
    end
end
