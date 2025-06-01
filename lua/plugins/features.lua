return {
    {
        "folke/zen-mode.nvim",
        keys = {
            { "<leader>z", "<cmd>ZenMode<cr>", desc = "Toggle Zen Mode" },
        }
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
        "LintaoAmons/scratch.nvim",
        cmd = {
            "Scratch",
            "ScratchWithName",
            "ScratchOpen",
            "ScratchOpenFzf"
        }
    },
    {
        "nvim-telescope/telescope.nvim",
        cmd = "Telescope",

        keys = {
            { "<leader>uC", "<cmd>Telescope colorscheme<cr>", desc = "Colorscheme" },
        },
        dependencies = {
            "nvim-lua/plenary.nvim",
        },
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
        end
    }
}
