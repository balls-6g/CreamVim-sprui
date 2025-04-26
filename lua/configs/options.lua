local opt = vim.opt

opt.number = true
opt.relativenumber = true

-- make the error be lest
opt.swapfile = false

-- tabs VS space
opt.softtabstop = 2
opt.tabstop = 2
opt.expandtab = true
opt.shiftwidth = 4

-- shell
opt.shell = "fish"

vim.diagnostic.config({
    virtual_text = true,
    signs = true,
    underline = true,
    -- update_in_insert = true,
    serverity_sort = true,
})
