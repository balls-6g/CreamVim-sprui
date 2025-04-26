return {
    "echasnovski/mini.nvim",
    keys = {
        { "<leader>mf", ":lua MiniFiles.open()<CR>", desc = "mini file explorer" }
    },
    event = "VeryLazy",
    url = "https://bgithub.xyz/echasnovski/mini.nvim",
    config = function()
        require("mini.pairs").setup()
        require("mini.git").setup()
        require("mini.files").setup()
        require("mini.icons").setup()
    end
}
