-- return {}

-- return {
--     "codota/tabnine-nvim",
--     url = "https://bgithub.xyz/codota/tabnine-nvim",
--     build = "./dl_binaries.sh",
--     config = function ()
--         require('tabnine').setup({
--             disable_auto_comment=true,
--             accept_keymap="<Tab>",
--             dismiss_keymap = "<C-]>",
--             debounce_ms = 800,
--             suggestion_color = {gui = "#808080", cterm = 244},
--             exclude_filetypes = {"TelescopePrompt", "NvimTree"},
--             log_file_path = nil, -- absolute path to Tabnine log file
--             ignore_certificate_errors = false,
--         })
--     end
-- }

return {
	"github/copilot.vim",
	event = { "BufNewFile", "BufReadPost" },
	config = function() end,
}
