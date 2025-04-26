return {
    {
        "nvim-lualine/lualine.nvim",
        dependencies = "nvim-tree/nvim-web-devicons",
        url = "https://bgithub.xyz/nvim-lualine/lualine.nvim",
        event = { "BufReadPost", "BufNewFile" },
        config = function()
            require("lualine").setup({
                options = {
                    icons_enabled = true,
                    theme = 'auto',
                    component_separators = { left = '', right = ''},
                    section_separators = { left = '', right = ''},
                    globalstatus = true,
                },
            })
        end
    },
    {
        "nvim-tree/nvim-web-devicons",
        url = "https://bgithub.xyz/nvim-tree/nvim-web-devicons",
    },
    {
        "akinsho/bufferline.nvim",
        url = "https://bgithub.xyz/akinsho/bufferline.nvim",
        dependencies = "nvim-tree/nvim-web-devicons",
        config = function()
            require('bufferline').setup {}
        end
    },
    {
        "folke/noice.nvim",
        url = "https://bgithub.xyz/folke/noice.nvim",
        event = "VeryLazy",
        dependencies = {
            "MunifTanjim/nui.nvim",
            "rcarriga/nvim-notify",
        },
        config = function()
            require("noice").setup({
                lsp = {
                    override = {
                        ["vim.lsp.utils.convert_input_to_markdown_lines"] = true,
                        ["vim.lsp.utils.stylize_markdown"] = true,
                        ["cmp.entry.get_documentation"] = true,
                    }
                },

                presets = {
                    bottom_search = true,
                    command_palette = false,
                    long_message_to_split = true,
                    inc_rename = false,
                    lsp_doc_border = true,
                }
            })
        end
    },
    {
        "MunifTanjim/nui.nvim",
        lazy = true,
        url = "https://bgithub.xyz/MunifTanjim/nui.nvim",
    },
    {
        "rcarriga/nvim-notify",
        lazy = true,
        url = "https://bgithub.xyz/rcarriga/nvim-notify"
    },
    {
        "xiyaowong/transparent.nvim",
        url = "https://bgithub.xyz/xiyaowong/transparent.nvim",
        event = "VeryLazy",
        config = function ()
            require('transparent').clear_prefix('NeoTree')
            require('transparent').clear_prefix('lualine')
            require('transparent').clear_prefix('Snacks')
            require('transparent').clear_prefix('NvimLspconfig')
            require('transparent').clear_prefix('Mini')
        end
    }
}
