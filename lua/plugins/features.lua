return {
	{
		"folke/zen-mode.nvim",
		keys = {
			{ "<leader>z", "<cmd>ZenMode<cr>", desc = "Toggle Zen Mode" },
		},
	},
	{
		"kdheepak/lazygit.nvim",
		cmd = "LazyGit",
		keys = {
			{ "<leader>gg", "<cmd>LazyGit<cr>", desc = "Open LazyGit" },
		},
		dependencies = {
			"nvim-lua/plenary.nvim",
		},
	},
	{
		"nvim-lua/plenary.nvim",
		lazy = true,
	},
	{
		"akinsho/toggleterm.nvim",
		cmd = "ToggleTerm",
		keys = {
			{ "<leader>tt", "<cmd>ToggleTerm<cr>", desc = "Toggle Terminal" },
		},

		config = function()
			require("toggleterm").setup({
				shell = "fish",
				direction = "float",
			})
		end,
	},
	{
		"stevearc/conform.nvim",
		keys = {
			{ "<leader>cf", "<cmd>Format<cr>", desc = "Format current buffer" },
		},
		cmd = { "ConformInfo", "Format" },
		event = {
			"BufWritePre",
			"BufNewFile",
			"BufReadPost",
		},
		config = function()
			require("conform").setup({
				formatters_by_ft = {
					lua = { "stylua" },
					javascript = { "prettier" },
					typescript = { "prettier" },
					html = { "prettier" },
					css = { "prettier" },
					json = { "prettier" },
					markdown = { "prettier" },
					python = { "black" },
					go = { "gofumpt" },
					rust = { "rustfmt" },
					sh = { "shfmt" },
				},
			})

			vim.api.nvim_create_user_command("Format", function()
				require("conform").format({})
			end, {
				desc = "Format the current buffer",
			})
		end,
	},
}
