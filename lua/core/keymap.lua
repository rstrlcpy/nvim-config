vim.keymap.set("n", '<C-Insert>', ':tabnew<CR>')
vim.keymap.set("i", '<C-Insert>', '<ESC>:tabnew<CR>i')

vim.keymap.set(
  "",
  "<Leader>l",
  require("lsp_lines").toggle,
  { desc = "Toggle lsp_lines" }
)
