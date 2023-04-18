require("core.plugins_config.telescope")
require("core.plugins_config.cmp")
require("core.plugins_config.treesitter")
require("core.plugins_config.lualine")
require("core.plugins_config.nvim-tree")
require("core.plugins_config.lspconfig")
require("core.plugins_config.lsp_lines")
require("core.plugins_config.go")
require("core.plugins_config.copilot")
require("core.plugins_config.indent-blankline")

local signs = { Error = " ", Warn = " ", Hint = " ", Info = " " }
for type, icon in pairs(signs) do
  local hl = "DiagnosticSign" .. type
  vim.fn.sign_define(hl, { text = icon, texthl = hl, numhl = hl })
end
