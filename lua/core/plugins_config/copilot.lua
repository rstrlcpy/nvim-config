vim.g.copilot_node_command = "/opt/node.js/bin/node"
vim.g.copilot_no_tab_map = true
vim.api.nvim_set_keymap("i", "<C-J>", 'copilot#Accept("<CR>")', { silent = true, expr = true })
vim.g.copilot_filetypes = { ["go"] = true, ["rust"] = true }
