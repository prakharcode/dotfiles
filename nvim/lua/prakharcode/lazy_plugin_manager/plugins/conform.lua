return {
	"stevearc/conform.nvim",
	keys = {
		{
			-- Customize or remove this keymap to your liking
			"<leader>bF",
			function()
				require("conform").format({ async = true })
			end,
			mode = "",
			desc = "Format buffer",
		},
	},
	opts = {
		format_on_save = function(bufnr)
			if vim.g.disable_autoformat or vim.b[bufnr].disable_autoformat then
				return
			end
			return { timeout_ms = 500, lsp_format = "fallback" }
		end,
		-- Define your formatters
		formatters_by_ft = {
			lua = { "stylua" },
			python = { "black" }, -- python is handled in the python.lua
			-- in the plugins
			javascript = { "prettierd", "prettier", stop_after_first = true },
			terraform = { "terraformls" },
		},
		-- Set default options
		-- default_format_opts = {
		-- 	lsp_format = "fallback",
		-- },
		-- Customize formatters
		formatters = {
			shfmt = {
				prepend_args = { "-i", "2" },
			},
		},
	},
}
