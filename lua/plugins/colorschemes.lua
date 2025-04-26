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
        "catppuccin/nvim",
        name = "catppuccin",
        event = "VeryLazy",
        url = "https://bgithub.xyz/catppuccin/nvim",
        config = function ()
            require("catppuccin").setup({
                flavour = "mocha",
                -- background = {
                --     light = "latte",
                --     dark = "mocha"
                -- },

            })

            -- vim.cmd.colorscheme 'catppuccin'
        end
    },
    {
        "folke/tokyonight.nvim",
        event = "VeryLazy",
        url = "https://bgithub.xyz/folke/tokyonight.nvim",
        config = function()
            vim.cmd.colorscheme 'tokyonight-moon'
        end
    },
    {
        "ellisonleao/gruvbox.nvim",
        url = "https://bgithub.xyz/ellisonleao/gruvbox.nvim",
        event = "VeryLazy",
        config = function ()
            -- vim.cmd.colorscheme 'gruvbox'
        end
    }
}
