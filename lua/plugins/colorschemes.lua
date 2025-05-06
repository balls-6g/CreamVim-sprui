return {
    {
        "neanias/everforest-nvim",
        url = "https://bgithub.xyz/neanias/everforest-nvim",
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
        url = "https://bgithub.xyz/folke/tokyonight.nvim",
        config = function()
            -- vim.cmd.colorscheme 'tokyonight-moon'
        end
    },
    {
        "catppuccin/nvim",
        event = "VeryLazy",
        url = "https://bgithub.xyz/catppuccin/nvim",
        config = function()
            require('catppuccin').setup{
                flavour = "auto", -- mocah, latte, frappe, macchiato
                background = {
                    light = "latte",
                    dark = "mocha",
                },
                transparent_background = false,
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
                }
            }
            vim.cmd.colorscheme 'catppuccin'
        end
    },
    {
        "felipeagc/fleet-theme-nvim",
        event = "VeryLazy",
        url = "https://bgithub.xyz/felipeagc/fleet-theme-nvim",
        config = function()
        --     vim.cmd.colorscheme("fleet")
        end
    }
}
