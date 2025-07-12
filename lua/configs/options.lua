local opt = vim.opt

opt.number = true
opt.relativenumber = true

-- make the error be lest
opt.swapfile = false

-- tabs VS space
opt.softtabstop = 4
opt.tabstop = 4
opt.expandtab = true
opt.shiftwidth = 4

vim.diagnostic.config({
	virtual_text = {
		source = "if_many",
		format = function(diag)
			return string.format("%s (%s)", diag.message, diag.source)
		end,
	},
	signs = true,
	underline = true,
	-- update_in_insert = true,
	serverity_sort = true,
})

opt.termguicolors = true
opt.signcolumn = "yes"

opt.cursorline = true

opt.clipboard = "unnamedplus"
