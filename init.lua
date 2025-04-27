require("configs.options")
require("configs.keymaps")
require("configs.autocmds")

-- install lazy.nvim
local lp = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not vim.loop.fs_stat(lp) then
    vim.fn.system({
        "git",
	"clone",
	"--filter=blob:none",
	"https://bgithub.xyz/folke/lazy.nvim.git",
	"--branch=stable", -- latest stable release
	lp,
    })
end
vim.opt.rtp:prepend(lp)

require("lazy").setup("plugins")
