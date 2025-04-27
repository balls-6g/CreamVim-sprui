local lsp = require("lspconfig")


local cpblt = require('blink.cmp').get_lsp_capabilities()
local on_attach = function (client, bufnr)
    vim.keymap.set("n", "gd", vim.lsp.buf.definition, { buffer = bufnr})
    vim.keymap.set("n", "K", vim.lsp.buf.hover, { buffer = bufnr })
end

lsp.ts_ls.setup({
    capabilities = cpblt,
    on_attach = on_attach,
    settings = {},
})
