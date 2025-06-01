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
    },
    {
        "ibhagwan/fzf-lua",
        dependencies = { "nvim-tree/nvim-web-devicons" },
        cmd = "FzfLua",
        keys = {
            { "<leader><space>", ":FzfLua files<CR>", desc = "Fzf find files" },
            { "<leader>,", ":FzfLua buffers<CR>", desc = "Fzf buffers" },
            { "<leader>/", ":FzfLua live_grep<CR>", desc = "Fzf Live Grep" },
            { "<leader>fg", ":FzfLua git_files<CR>", desc = "Fzf Git files" },
            { "<leader>:", ":FzfLua command_history<CR>", desc = "Fzf command history" },
        }
    },
    {
        "folke/trouble.nvim",
        opts = {},
        cmd = "Trouble",
        lazy = true,
    },
    {
        "stevearc/oil.nvim",
        lazy = false,
        opts = {},
        dependencies = "echasnovski/mini.icons",
        cmd = "Oil",
        keys = {
            { "<leader>e", "<cmd>Oil<cr>", desc = "Open Oil File Explorer" },
        },
        config = function()
            require("oil").setup({
                default_file_explorer = true,
            })
        end
    },
    {
        "MeanderingProgrammer/render-markdown.nvim",
        ft = "markdown",
        opts = {},
        dependencies = "echasnovski/mini.icons"
    }
}
