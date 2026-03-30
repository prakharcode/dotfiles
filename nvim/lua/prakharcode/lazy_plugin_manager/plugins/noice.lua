-- Temporarily disable noice (known working state)
return {
	{ "folke/noice.nvim", enabled = true },
	{
		"folke/snacks.nvim",
		opts = {
			dashboard = { enabled = true },
			terminal = { enabled = true },
			notifier = { enabled = false },
		},
	},
}
