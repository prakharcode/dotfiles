return {
	"greggh/claude-code.nvim",
	dependencies = {
		"nvim-lua/plenary.nvim", -- Required for git operations
	},
	keys = { { "<leader>ai", "<cmd>ClaudeCode<CR>", desc = "Toggle Claude Code" } },
	config = function()
		require("claude-code").setup({
			window = {
				split_ratio = 0.3, -- Percentage of screen for the terminal window (height for horizontal, width for vertical splits)
				position = "vertical", -- Position of the window: "botright", "topleft", "vertical", "float", etc.
				enter_insert = true, -- Whether to enter insert mode when opening Claude Code
				hide_numbers = true, -- Hide line numbers in the terminal window
				hide_signcolumn = true, -- Hide the sign column in the terminal window

				-- Floating window configuration (only applies when position = "float")
				float = {
					width = "80%", -- Width: number of columns or percentage string
					height = "80%", -- Height: number of rows or percentage string
					row = "center", -- Row position: number, "center", or percentage string
					col = "center", -- Column position: number, "center", or percentage string
					relative = "editor", -- Relative to: "editor" or "cursor"
					border = "rounded", -- Border style: "none", "single", "double", "rounded", "solid", "shadow"
				},
			},
		})
	end,
}
