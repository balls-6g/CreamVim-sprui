return {
    {
        "neanias/everforest-nvim",
        event = "VeryLazy",
        config = function()
            require("everforest").setup({})
            -- vim.cmd.colorscheme 'everforest'
        end
    },
    {
        "folke/tokyonight.nvim",
        event = "VeryLazy",
        opts = {},
        config = function()
            -- vim.cmd.colorscheme 'tokyonight-moon'
        end
    },
    {
        "catppuccin/nvim",
        event = "VeryLazy",
        config = function()
            require('catppuccin').setup{
                flavour = "auto", -- mocah, latte, frappe, macchiato
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
                }
            }
            vim.cmd.colorscheme 'catppuccin'
        end
    },
}
