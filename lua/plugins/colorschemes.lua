return {
	{
		"catppuccin/nvim",
		event = "VeryLazy",
		config = function()
			require("catppuccin").setup({
				flavour = "mocha", -- mocah, latte, frappe, macchiato
				background = {
					light = "latte",
					dark = "mocha",
				},
				transparent_background = true,
				term_colors = true,
				integrations = {
					blink_cmp = true,
					gitsigns = true,
					treesitter = true,
					noice = true,
					notify = true,
					mini = {
						enabled = true,
						indentscope_color = "",
					},
					ts_rainbow2 = true,
					bufferline = true,
					alpha = true,
					indent_blankline = {
						enabled = true,
					},
				},
			})
			vim.cmd.colorscheme("catppuccin")
		end,
	},
}
