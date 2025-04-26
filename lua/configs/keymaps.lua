local km = vim.keymap
vim.g.mapleader = ' '

km.set("n", "<C-h>", "<C-w>h")
km.set("n", "<C-j>", "<C-w>j")
km.set("n", "<C-k>", "<C-w>k")
km.set("n", "<C-l>", "<C-w>l")

-- bufferline
km.set("n", "<Tab>", ":BufferLineCycleNext<CR>")
km.set("n", "<S-Tab>", ":BufferLineCyclePrev<CR>")

km.set("n", "<C-x>", "<C-\\><C-n>")
