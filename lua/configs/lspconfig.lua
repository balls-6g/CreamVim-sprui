local lsp = require("lspconfig")

local cpblt = require('blink.cmp').get_lsp_capabilities()
local on_attach = function (client, bufnr)
    vim.keymap.set("n", "gd", vim.lsp.buf.definition, { buffer = bufnr})
    vim.keymap.set("n", "K", vim.lsp.buf.hover, { buffer = bufnr })
end

lsp.ts_ls.setup({
    filetypes = { "javascriptreact", "javascript" },
    capabilities = cpblt,
    on_attach = on_attach,
    settings = {},
})

lsp.cssls.setup({
    filetypes = "css",
    capabilities = cpblt,
    on_attach = on_attach,
    settings = {},
})

lsp.pyright.setup({
    filetypes = "python",
    capabilities = cpblt,
    on_attach = on_attach,
    settings = {}
})

lsp.clangd.setup({
    filetypes = "c",
    capabilities = cpblt,
    on_attach = on_attach,
    settings = {}
})

lsp.gopls.setup({
    filetypes = { "go", "gomod", "gowork", "gotmpl" },
    cmd = { "gopls" },
    capabilities = cpblt,
    on_attach = on_attach,
    settings = {
        gopls = {
            completeUnimported = true,
            gofumpt = true,
            usePlaceholders = true,
            analyses = {
                unusedparams = true,
            }
        }
    }
})

-- lsp.asm_lsp.setup({
--     ft = "gasm",
--     capabilities = cpblt,
--     on_attach = on_attach,
--     settings = {}
-- })
