return {
	{
		"mfussenegger/nvim-dap",
        keys = {
            { "<leader>db", function() require('dap').toggle_breakpoint() end, desc = "Toggle breakpoint" },
            { "<leader>dB", function() require('dap').set_breakpoint(vim.fn.input('Breakpoint condition: ')) end, desc = "Breakpoint Conditions" },
            { "<leader>dC", function() require('dap').run_to_cursor() end, desc = "Run to cursor" },
            { "<leader>dp", function() require('dap').pause() end, desc = "Pause" },
            { "<leader>dj", function() require('dap').down() end, desc = "Down" },
            { "<leader>dk", function() require('dap').up() end, desc = "Up" },
            { "<leader>dg", function() require('dap').goto_()  end, desc = "Goto line (No Execute)" },
            { "<leader>de", function() require('dap').step_into() end, desc = "Step into" },
            { "<leader>ds", function() require('dap').step_out() end, desc = "Step out" },
            { "<leader>dc", function() require('dap').continue() end, desc = "Continue" },
            { "<leader>di", function() require('dap').step_into() end, desc = "Step into" },
            { "<leader>do", function() require('dap').step_over() end, desc = "Step over" },
            { "<leader>du", function() require('dap').step_out() end, desc = "Step out" },
            { "<leader>dr", function() require('dap').repl.toggle() end, desc = "Toggle REPL" },
            { "<leader>dl", function() require('dap').run_last() end, desc = "Run last" },
            { "<leader>dt", function() require('dap').terminate() end, desc = "Terminate" },
            { "<leader>ds", function() require('dap').session() end, desc = "Session" },
            { "<leader>dq", function() require('dap').close() end, desc = "Close" },
        },
        dependencies = {
            "rcarriga/nvim-dap-ui",
            "jay-babu/mason-nvim-dap.nvim"
        },
		lazy = true,
		config = function() end,
	},
	{
		"rcarriga/nvim-dap-ui",
        lazy = true,
		dependencies = {
			"nvim-neotest/nvim-nio",
		},
        keys = {
            { "<leader>du", function() require("dapui").toggle({ }) end, desc = "Toggle DAP UI" },
        },
        opts = {},
	},
	{
		"nvim-neotest/nvim-nio",
		lazy = true,
	},
	{
		"theHamsta/nvim-dap-virtual-text",
		lazy = true,
        opts = {},
	},
	{
		"jay-babu/mason-nvim-dap.nvim",
        cmd = { "Lazy load" },
		dependencies = {
			"mason.nvim",
			"mfussenegger/nvim-dap",
		},
	},
}
