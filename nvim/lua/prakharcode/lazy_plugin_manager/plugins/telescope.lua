return {
    'nvim-telescope/telescope.nvim', tag = '0.1.8',
-- or                              , branch = '0.1.x',
      dependencies = { 'nvim-lua/plenary.nvim' },
      keys = { 
      {
			"<leader>ff",
			mode = { "n", "v" },
			"<cmd>Telescope<cr>",
			desc = "Open yazi at the current file",
      },
    }
}
