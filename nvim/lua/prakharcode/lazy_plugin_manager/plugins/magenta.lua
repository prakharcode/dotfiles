return {
	"dlants/magenta.nvim",
	lazy = false, -- you could also bind to <leader>mt
	build = "npm install --frozen-lockfile",
	cmd = "Magenta",
	opts = {
		profiles = {
			{
				name = "claude-4",
				provider = "anthropic",
				model = "claude-4-sonnet-latest",
				apiKeyEnvVar = "ANTHROPIC_API_KEY",
			},
			{
				name = "gpt-4.1",
				provider = "openai",
				model = "gpt-4.1",
				apiKeyEnvVar = "OPENAI_API_KEY",
			},
			{
				name = "copilot-claude",
				provider = "copilot",
				model = "claude-3.7-sonnet",
				-- No apiKeyEnvVar needed - uses existing Copilot authentication
			},
		},
		-- open chat sidebar on left or right side
		sidebarPosition = "left",
		-- can be changed to "telescope" or "snacks"
		picker = "fzf-lua",
		-- enable default keymaps shown below
		defaultKeymaps = true,
		-- keymaps for the sidebar input buffer
		sidebarKeymaps = {
			normal = {
				["<CR>"] = ":Magenta send<CR>",
			},
		},
		-- keymaps for the inline edit input buffer
		-- if keymap is set to function, it accepts a target_bufnr param
		inlineKeymaps = {
			normal = {
				["<CR>"] = function(target_bufnr)
					vim.cmd("Magenta submit-inline-edit " .. target_bufnr)
				end,
			},
		},
		-- configure MCP servers for external tool integrations
		mcpServers = {
			fetch = {
				command = "uvx",
				args = { "mcp-server-fetch" },
			},
			playwright = {
				command = "npx",
				args = {
					"@playwright/mcp@latest",
				},
			},
		},
	},
}
