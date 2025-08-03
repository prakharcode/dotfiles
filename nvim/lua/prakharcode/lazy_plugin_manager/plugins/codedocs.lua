return {
	"jeangiraldoo/codedocs.nvim",
	-- Remove the 'dependencies' section if you don't plan on using nvim-treesitter
	dependencies = {
		"nvim-treesitter/nvim-treesitter",
	},
	keys = {
		{
			-- Customize or remove this keymap to your liking
			"<leader>ck",
			function()
				require("codedocs").insert_docs()
			end,
			mode = "",
			desc = "Insert docstring",
		},
	},
	opts = {
		default_styles = {
			python = "Numpydoc",
		},
	},
}
