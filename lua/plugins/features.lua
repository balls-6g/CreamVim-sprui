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
    },
    {
        "athar-qadri/scratchpad.nvim",
        cmd = { "Scratch" },
        keys = {
            {
                "<leader>es",
                function()
                    local scratchpad = require("scratchpad")
                    scratchpad.ui:new_scratchpad()
                end,
                desc = "show scratch pad",

                vim.keymap.set({ "n", "v" }, "<leader>es", function()
                    local scratchpad = require("scratchpad")
                    scratchpad.ui:sync()
                end, { desc = "Push selection / current line to scratchpad" })
            }
        },
        dependencies = { "nvim-lua/plenary.nvim" },
        config = function()
            local scratchpad = require("scratchpad")
            scratchpad:setup({
                filetype = {"markdown"},
                settings = { sync_on_ui_close = true }
            })
        end,
    },
    {
        "stevearc/conform.nvim",
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
        end
    }
}
