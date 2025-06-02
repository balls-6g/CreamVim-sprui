return {
	{
		"nvim-lualine/lualine.nvim",
		dependencies = "nvim-tree/nvim-web-devicons",
		lazy = true,
		event = { "BufReadPost", "BufNewFile" },
		config = function()
			require("lualine").setup({
				options = {
					icons_enabled = true,
					theme = "auto",
					component_separators = { left = "", right = "" },
					section_separators = { left = "", right = "" },
					globalstatus = true,
				},
			})
		end,
	},
	{
		"nvim-tree/nvim-web-devicons",
		lazy = true,
	},
	{
		"akinsho/bufferline.nvim",
		event = { "BufReadPost", "BufNewFile" },
		dependencies = "nvim-tree/nvim-web-devicons",
		config = function()
			require("bufferline").setup({})
		end,
	},
	{
		"folke/noice.nvim",
		event = "VeryLazy",
		dependencies = {
			"MunifTanjim/nui.nvim",
			"rcarriga/nvim-notify",
		},
		config = function()
			require("noice").setup({
				lsp = {
					override = {
						["vim.lsp.utils.convert_input_to_markdown_lines"] = true,
						["vim.lsp.utils.stylize_markdown"] = true,
						["cmp.entry.get_documentation"] = true,
					},
				},

				presets = {
					bottom_search = true,
					command_palette = false,
					long_message_to_split = true,
					inc_rename = false,
					lsp_doc_border = true,
				},
			})
		end,
	},
	{
		"MunifTanjim/nui.nvim",
		lazy = true,
	},
	{
		"rcarriga/nvim-notify",
		lazy = true,
	},
	{
		"xiyaowong/transparent.nvim",
		lazy = true,
		cmd = "TransparentToggle",
		config = function()
			require("transparent").clear_prefix("NeoTree")
			require("transparent").clear_prefix("lualine")
			require("transparent").clear_prefix("NvimLspconfig")
			require("transparent").clear_prefix("Mini")
		end,
	},
	{
		"sphamba/smear-cursor.nvim",
		enabled = false,
		event = "VeryLazy",
		opts = {
			stiffness = 0.8,
			trailing_stiffness = 0.5,
			stiffness_insert_mode = 0.6,
			trailing_stiffness_insert_mode = 0.6,
			distance_stop_animating = 0.5,
		},
	},
	{
		"goolord/alpha-nvim",
		lazy = false,
		dependencies = { "echasnovski/mini.icons" },
		config = function()
			local alpha = require("alpha")
			local dashboard = require("alpha.themes.dashboard")

			dashboard.section.header.val = {
				[[  ██████╗██████╗ ███████╗ █████╗ ███╗   ███╗██╗   ██╗██╗███╗   ███╗ ]],
				[[ ██╔════╝██╔══██╗██╔════╝██╔══██╗████╗ ████║██║   ██║██║████╗ ████║ ]],
				[[ ██║     ██████╔╝█████╗  ███████║██╔████╔██║██║   ██║██║██╔████╔██║ ]],
				[[ ██║     ██╔══██╗██╔══╝  ██╔══██║██║╚██╔╝██║╚██╗ ██╔╝██║██║╚██╔╝██║ ]],
				[[ ╚██████╗██║  ██║███████╗██║  ██║██║ ╚═╝ ██║ ╚████╔╝ ██║██║ ╚═╝ ██║ ]],
				[[  ╚═════╝╚═╝  ╚═╝╚══════╝╚═╝  ╚═╝╚═╝     ╚═╝  ╚═══╝  ╚═╝╚═╝     ╚═╝ ]],
				[[                         v0.0.1-nightly                            ]],
				[[                                                                    ]],
			}

			dashboard.section.buttons.val = {
				dashboard.button("n", "  New file", "<Cmd>new<CR>"),
				dashboard.button("f", "󰈞  Find file", "<Cmd>FzfLua files<CR>"),
				dashboard.button("r", "  Recent files", "<Cmd>FzfLua oldfiles<CR>"),
				dashboard.button("t", "  Terminal", "<Cmd>ToggleTerm<CR>"),
				dashboard.button("q", "  Quit", "<Cmd>qa<CR>"),
			}

			alpha.setup(dashboard.config)
		end,
	},
}
