local km = vim.keymap
vim.g.mapleader = ' '

km.set("n", "<C-h>", "<C-w>h")
km.set("n", "<C-j>", "<C-w>j")
km.set("n", "<C-k>", "<C-w>k")
km.set("n", "<C-l>", "<C-w>l")

-- bufferline
km.set("n", "<Tab>", "<cmd>BufferLineCycleNext<CR>", {desc = "Next buffer"})
km.set("n", "<S-Tab>", "<cmd>BufferLineCyclePrev<CR>", {desc = "Previous buffer"})

km.set("n", "x", "<cmd>bd<CR>", {desc = "Close current buffer"})

km.set("t", "<C-x>", "<C-\\><C-n>", {desc = "back to NORMAL mode"})

km.set("i", "/* ", "/*  */<Left><Left><Left>")

km.set("n", ";", ":")

-- back to normal mode
km.set("i", "jk", "<Esc>", {desc = "back to NORMAL mode"})

-- lsp goto definitions
km.set("n", "gd", "<cmd>lua vim.lsp.buf.definition()<CR>", {desc = "Go to definition"})
