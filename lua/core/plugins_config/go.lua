local on_attach = (function(client, bufnr)
    local opts = {buffer = bufnr, remap = false, noremap = true, silent = true}

    vim.keymap.set('n', '<Leader>fw', '<Cmd>lua vim.lsp.buf.format({async = true})<CR>', opts)
    vim.keymap.set("n", "gd", function() vim.lsp.buf.definition() end, opts)
    vim.keymap.set("n", "K", function() vim.lsp.buf.hover() end, opts)
    vim.keymap.set("n", "<leader>vws", function() vim.lsp.buf.workspace_symbol() end, opts)
    vim.keymap.set("n", "<leader>vd", function() vim.diagnostic.open_float() end, opts)
    vim.keymap.set("n", "[d", function() vim.diagnostic.goto_next() end, opts)
    vim.keymap.set("n", "]d", function() vim.diagnostic.goto_prev() end, opts)
    vim.keymap.set("n", "<leader>vca", function() vim.lsp.buf.code_action() end, opts)
    vim.keymap.set("n", "<leader>vrr", function() vim.lsp.buf.references() end, opts)
    vim.keymap.set("n", "<leader>vrn", function() vim.lsp.buf.rename() end, opts)
    vim.keymap.set("i", "<C-h>", function() vim.lsp.buf.signature_help() end, opts)
end)

require('go').setup({
    lsp_cfg = true,
    lsp_on_attach = on_attach,
    lsp_diag_virtual_text = false, -- disable virtual text as lsp_lines is used
    lsp_diag_signs = true,
    gofmt = 'gofmt', -- if set to gopls will use golsp format
    goimport = 'gopls', -- if set to 'gopls' will use golsp format
    max_line_len = 1200,
    tag_transform = false,
    test_dir = '',
    comment_placeholder = '   ',
})
