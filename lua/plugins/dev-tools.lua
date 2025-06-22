return {
	{
		"folke/which-key.nvim",
		event = "VeryLazy",
		opts = {
			-- your configuration comes here
			-- or leave it empty to use the default settings
			-- refer to the configuration section below
		},
		keys = {
			{
				"<leader>?",
				function()
					require("which-key").show({ global = false })
				end,
				desc = "Buffer Local Keymaps (which-key)",
			},
		},

		config = function()
			local wk = require("which-key")
			wk.add({
				{ "<leader>u", group = "ui", desc = "UI" },
				{ "<leader>f", group = "find", desc = "Find" },
				{ "<leader>g", group = "git", desc = "Git" },
				{ "<leader>d", group = "debug", desc = "Debug" },
			})
		end,
	},
	{
		"ibhagwan/fzf-lua",
		dependencies = { "echasnovski/mini.icons" },
		cmd = "FzfLua",
		keys = {
			{ "<leader><space>", "<cmd>FzfLua files<CR>", desc = "Fzf find files" },
			{ "<leader>,", "<cmd>FzfLua buffers<CR>", desc = "Fzf buffers" },
			{ "<leader>/", "<cmd>FzfLua live_grep<CR>", desc = "Fzf Live Grep" },
			{ "<leader>fg", "<cmd>FzfLua git_files<CR>", desc = "Fzf Git files" },
			{ "<leader>:", "<cmd>FzfLua command_history<CR>", desc = "Fzf command history" },
			{ "<leader>uC", "<cmd>FzfLua colorschemes<CR>", desc = "Fzf colorscheme" },
			{ "<leader>fr", "<cmd>FzfLua oldfiles<CR>", desc = "Fzf recent files" },
		},
	},
	{
		"folke/trouble.nvim",
		opts = {},
		cmd = "Trouble",
		lazy = true,
	},
	{
		"stevearc/oil.nvim",
		opts = {},
		dependencies = "echasnovski/mini.icons",
		cmd = "Oil",
		keys = {
			{ "-", "<cmd>Oil<cr>", desc = "Open Oil File Explorer" },
		},
		config = function()
			require("oil").setup({
				default_file_explorer = true,
			})
		end,
	},
	{
		"MeanderingProgrammer/render-markdown.nvim",
		ft = "markdown",
		opts = {},
		dependencies = "echasnovski/mini.icons",
	},
	{
		"nvim-neorg/neorg",
		ft = "norg",
		config = function()
			require("neorg").setup({})
		end,
	},
	{
		"balls-6g/notes-nvim",
		cmd = "Notes",
		config = function()
			require("notes-nvim").setup()
		end,
	},
}
