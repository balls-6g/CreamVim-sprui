return {
    {
        "napmn/react-extract.nvim",
        url = "https://bgithub.xyz/napmn/react-extract.nvim",
        ft = "javascriptreact",
        config = function()
            require("react-extract").setup()
        end
    }
}
