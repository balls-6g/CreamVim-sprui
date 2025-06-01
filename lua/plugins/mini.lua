return {
    {
        "echasnovski/mini-git",
        cmd = "Git",
        config = function()
            require("mini.git").setup()
        end
    },
    {
        'windwp/nvim-autopairs',
        event = "InsertEnter",
        config = true
    },
    {
        "echasnovski/mini.icons",
        event = "VeryLazy",
        config = function()
            require("mini.icons").setup()
        end
    },
}
