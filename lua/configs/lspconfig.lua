local lsp = require("lspconfig")

local cpblt = require("blink.cmp").get_lsp_capabilities()
local on_attach = function(client, bufnr)
	vim.keymap.set("n", "gd", vim.lsp.buf.definition, { buffer = bufnr })
	vim.keymap.set("n", "K", vim.lsp.buf.hover, { buffer = bufnr })
end

lsp.ts_ls.setup({
	filetypes = { "javascriptreact", "javascript", "typescript", "typescriptreact" },
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
	settings = {},
})

lsp.clangd.setup({
	filetypes = "c",
	capabilities = cpblt,
	on_attach = on_attach,
	settings = {},
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
			},
		},
	},
})

-- lsp.asm_lsp.setup({
--     ft = "gasm",
--     capabilities = cpblt,
--     on_attach = on_attach,
--     settings = {}
-- })

lsp.yamlls.setup({
	filetypes = "yaml",
	capabilities = cpblt,
	on_attach = on_attach,
	settings = {},
})

lsp.marksman.setup({
	filetypes = { "markdown" },
	capabilities = cpblt,
	on_attach = on_attach,
	settings = {},
})

lsp.wgsl_analyzer.setup({
	filetypes = { "wgsl" },
	capabilities = cpblt,
	on_attach = on_attach,
	settings = {},
})

lsp.zls.setup({
	filetypes = { "zig" },
	capabilities = cpblt,
	on_attach = on_attach,
	settings = {},
})

lsp.html.setup({
	filetypes = { "html" },
	capabilities = cpblt,
	on_attach = on_attach,
	settings = {
		html = {
			format = {
				enable = true,
			},
			suggest = {
				angular1x = true,
				angular2x = true,
				html5 = true,
			},
		},
	},
})

lsp.vimls.setup({
	filetypes = { "vim" },
	capabilities = cpblt,
	on_attach = on_attach,
	settings = {
		vimls = {
			lintOnChange = true,
			lintOnSave = true,
			lintOnInsertLeave = true,
			lintOnTextChanged = true,
		},
	},
})

lsp.hls.setup({
	filetypes = { "haskell", "lhaskell", "cabal" },
	capabilities = cpblt,
	on_attach = on_attach,
	settings = {
		hls = {
			hlintOn = true,
			hlintOnChange = true,
			hlintOnSave = true,
			hlintOnTextChanged = true,
			hlintOnInsertLeave = true,
		},
	},
})
