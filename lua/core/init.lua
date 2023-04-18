require("core.sets")
require("core.plugins")
require("core.plugins_config")
require("core.keymap")

require('material.functions').change_style("darker")
local material = require 'material'

material.setup{
    -- Custom colors must be a function that takes in the default colors table as
    -- a paramter, and then modifies them.
    -- To see the available colors, see lua/material/colors/init.lua
    custom_colors = function(colors)
        colors.syntax.comments     = "#808030"
        colors.editor.line_numbers = '#AAFF00'
    end
}

vim.cmd [[colorscheme material]]

vim.diagnostic.config({
  virtual_text = false,
--  virtual_lines = false
})
