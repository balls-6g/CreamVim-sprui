return {
	{
		"nvim-treesitter/nvim-treesitter",
		-- dependencies = "HiPhish/nvim-ts-rainbow2",
		enabled = true,
		event = { "BufReadPost", "BufNewFile" },
		build = "TSUpdate",
		opts = {},
		config = function()
			require("nvim-treesitter.configs").setup({
				ensure_installed = {
					"lua",
					"rust",
					"go",
					"markdown",
					"javascript",
					"html",
					"css",
					"c",
					"nix",
					"bash",
					"zig",
					"norg",
					"typescript",
					"haskell",
				},

				highlight = {
					enable = true,
					additional_vim_regex_highlighting = false,
				},
				incremental_selection = { enable = true },
				indent = { enable = true },
				rainbow = {
					enable = true,
					extended_mode = true,
					max_file_lines = nil,
					-- query = 'rainbow-parens',
				},
			})
		end,
	},
	{
		"HiPhish/rainbow-delimiters.nvim",
		-- enabled = false,
		event = { "BufReadPost", "BufNewFile" },
		config = function()
			require("rainbow-delimiters.setup").setup({})

			---@type rainbow_delimiters.config
			vim.g.rainbow_delimiters = {
				strategy = {
					[""] = "rainbow-delimiters.strategy.global",
					vim = "rainbow-delimiters.strategy.local",
				},
				query = {
					[""] = "rainbow-delimiters",
					lua = "rainbow-blocks",
				},
				priority = {
					[""] = 110,
					lua = 210,
				},
				highlight = {
					"RainbowDelimiterRed",
					"RainbowDelimiterYellow",
					"RainbowDelimiterBlue",
					"RainbowDelimiterOrange",
					"RainbowDelimiterGreen",
					"RainbowDelimiterViolet",
					"RainbowDelimiterCyan",
				},
			}
		end,
	},
	{
		"williamboman/mason.nvim",
		cmd = { "Mason" },
		config = function()
			require("mason").setup()
		end,
	},
	{
		"williamboman/mason-lspconfig.nvim",
		cmd = { "Mason" },
		dependencies = {
			"neovim/nvim-lspconfig",
			"mason.nvim",
		},
		config = function()
			require("mason-lspconfig").setup({
				ensure_installed = { "lua_ls" },
			})
		end,
	},
	{
		"neovim/nvim-lspconfig",
		dependencies = { "saghen/blink.cmp" },
		event = "InsertEnter",
		config = function(_, opts)
			local lsp = require("lspconfig")
			local cpblt = require("blink.cmp").get_lsp_capabilities()
			local on_attach = function(client, bufnr)
				vim.keymap.set("n", "gd", vim.lsp.buf.definition, { buffer = bufnr })
				vim.keymap.set("n", "K", vim.lsp.buf.hover, { buffer = bufnr })
			end

			lsp.lua_ls.setup({
				on_attach = on_attach,
				capabilities = cpblt,
				settings = {
					Lua = {
						diagnostics = { globals = { "vim" } },
						workspace = {
							library = vim.api.nvim_get_runtime_file("", true),
							checkThirdParty = false,
						},
						telemetry = {
							enabled = false,
						},
					},
				},
			})
		end,
	},
	{ -- shit
		"Saghen/blink.cmp",
		-- enabled = false,
		event = { "InsertEnter" },
		dependencies = {
			"rafamadriz/friendly-snippets",
			"L3MON4D3/LuaSnip",
			"soifou/blink_luasnip",
		},
		version = "1.*",

		--@module 'blink.cmp'
		--@type blink.cmp.Config
		config = function()
			require("blink.cmp").setup({
				sources = {
					default = { "lsp", "path", "buffer", "snippets" },
					providers = {
						lsp = {
							name = "lsp",
							enabled = true,
							module = "blink.cmp.sources.lsp",
							score_offset = 1000,
						},
						snippets = {
							name = "luasnip",
							module = "blink_luasnip",

							score_offset = -3,
							opts = {
								use_show_condition = false,
								show_autosnippets = true,
							},
						},
					},
				},

				keymap = {
					preset = "default",

					["<Tab>"] = { "select_next", "fallback" },
					["<S-Tab>"] = { "select_prev", "fallback" },
					["<Enter>"] = { "accept", "fallback" },

					["<C-e>"] = {},
					["<C-y>"] = {},

					["<C-s>"] = {
						function(cmp)
							cmp.show({ providers = { "snippets" } })
						end,
					},

					["<C-d>"] = { "scroll_documentation_down", "fallback" },
					["<C-u>"] = { "scroll_documentation_up", "fallback" },
				},

				appearance = {
					nerd_font_variant = "mono",
				},

				completion = {
					documentation = { auto_show = true },
					menu = {
						draw = {
							columns = { { "kind_icon" }, { "label", gap = 1 } },
						},
					},
				},

				cmdline = {
					completion = {
						menu = {
							auto_show = true,
						},
					},
				},

				fuzzy = { implementation = "prefer_rust_with_warning" },

				signature = {
					enabled = true,
				},
			})
			opts_extend = { "sources.default" }
		end,
	},
	{
		"soifou/blink_luasnip",
		lazy = true,
	},
	{
		"rafamadriz/friendly-snippets",
		lazy = true,
	},
	{
		"L3MON4D3/LuaSnip",
		lazy = true,
		config = function()
			local ls = require("luasnip")

			ls.setup({
				history = true,
				delete_check_events = "TextChanged",
			})

			require("luasnip.loaders.from_vscode").lazy_load()
		end,
	},
}
