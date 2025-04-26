return {
    {
        "nvim-treesitter/nvim-treesitter",
        event = "VeryLazy",
        url = "https://bgithub.xyz/nvim-treesitter/nvim-treesitter",
        config = function ()
            require 'nvim-treesitter.configs'.setup {
                ensure_installed = { "lua", "rust", "go", "markdown" }
            }
        end
    },
    {
        "williamboman/mason.nvim",
        event = "VeryLazy",
        url = "https://bgithub.xyz/williamboman/mason.nvim",
        config = function()
            require("mason").setup()
        end
    },
    {
        "williamboman/mason-lspconfig.nvim",
        event = "VeryLazy",
        dependencies = {
            "neovim/nvim-lspconfig",
            "mason.nvim",
        },
        url = "https://bgithub.xyz/williamboman/mason-lspconfig.nvim",
        config = function()
            require("mason-lspconfig").setup {
                ensure_installed = { "lua_ls" },
            }
        end
    },
    {
        "neovim/nvim-lspconfig",
        dependencies = { "saghen/blink.cmp" },
        event = "InsertEnter",
        url = "https://bgithub.xyz/neovim/nvim-lspconfig",
        config = function(_, opts)
            local lsp = require('lspconfig')
            local cpblt = require('blink.cmp').get_lsp_capabilities()

            lsp['lua_ls'].setup({ capabilities = cpblt })
        end
    },
    { -- shit
        "Saghen/blink.cmp",
        -- enabled = false,
        event = { "InsertEnter" },
        url = "https://bgithub.xyz/Saghen/blink.cmp",
        dependencies = {
            "rafamadriz/friendly-snippets",
            "L3MON4D3/LuaSnip",
            "soifou/blink_luasnip",
        },
        version = '1.*',

        --@module 'blink.cmp'
        --@type blink.cmp.Config
        config = function()
            require('blink.cmp').setup {
                sources = {
                    default = { 'lsp', 'path', 'buffer', 'snippets' },
                    providers = {
                        lsp = {
                            name = 'lsp',
                            enabled = true,
                            module = "blink.cmp.sources.lsp",
                            score_offset = 1000,
                        },
                        luasnip = {
                            name = 'luasnip',
                            enabled = true,
                            module = "blink_luasnip",
                            score_offset = 950,
                        },
                    }
                },

                keymap = {
                    preset = 'default',

                    ['<Tab>'] = { 'select_next', 'fallback' },
                    ['<S-Tab>'] = { 'select_prev', 'fallback' },
                    ['<Enter>'] = { 'accept', 'fallback' },

                    ['<C-e>'] = {},
                    ['<C-y>'] = {},

                    ['<C-s>'] = { function(cmp) cmp.show({ providers = {'snippets'} }) end },
                },


                appearance = {
                    nerd_font_variant = 'mono',
                },

                completion = { documentation = { auto_show = true, } },

                fuzzy = { implementation = "prefer_rust_with_warning" },
            }
            opts_extend = { "sources.default" }
        end
    },
    {
        "rafamadriz/friendly-snippets",
        lazy = true,
        url = "https://bgithub.xyz/rafamadriz/friendly-snippets",
    },
    { -- fuck
        "L3MON4D3/LuaSnip",
        lazy = false,
        url = "https://bgithub.xyz/L3MON4D3/LuaSnip",
        config = function()
            require("luasnip").setup({
                history = true,
                delete_check_events = "TextChanged",
            })
            require("luasnip.loaders.from_vscode").lazy_load()
        end
    },
    {
        "soifou/blink_luasnip",
        url = "https://bgithub.xyz/soifou/blink_luasnip",
    }
}
