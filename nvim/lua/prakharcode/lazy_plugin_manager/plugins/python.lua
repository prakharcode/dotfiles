return {
	-- Add which-key namespace for Python debugging
	{
		"folke/which-key.nvim",
		optional = true,
		opts = {
			spec = {
				["<leader>dP"] = { name = "+Python" },
			},
		},
	},
	-- python lsp setttings and plugins
	{
		"neovim/nvim-lspconfig",
		dependencies = {},
		opts = {
			servers = {
				-- pyright = {},
				pylsp = {
					mason = false,
					settings = {
						pylsp = {
							plugins = {
								-- linters
								flake8 = { enabled = true },
								pycodestyle = {
									enabled = true,
									ignore = { "W391" },
									maxLineLength = 100,
								},

								-- disabled plugins
								pyflakes = { enabled = false },
								pylint = { enabled = false },
								autopep8 = { enabled = false },
								mccabe = { enabled = false },
								rope_autoimport = {
									enabled = false,
								},
							},
						},
					},
				},
				-- ruff_lsp = {
				--   -- handlers = {
				--   --   ["textDocument/publishDiagnostics"] = function() end,
				--   -- },
				-- },
				jedi_language_server = {},
			},
			setup = {
				pylsp = function()
					LazyVim.lsp.on_attach(function(client, _)
						if client.name == "pylsp" then
							-- disable hover in favor of jedi-language-server
							client.server_capabilities.hoverProvider = false
						end
					end)
				end,
				-- ruff_lsp = function()
				--   require("lazyvim.util").lsp.on_attach(function(client, _)
				--     if client.name == "ruff_lsp" then
				--       -- Disable hover in favor of Pyright
				--       client.server_capabilities.hoverProvider = false
				--     end
				--   end)
				-- end,
				pyright = function()
					require("lazyvim.util").lsp.on_attach(function(client, _)
						if client.name == "pyright" then
							-- disable hover in favor of jedi-language-server
							client.server_capabilities.hoverProvider = false
						end
					end)
				end,
			},
		},
	},
	-- formating files
	--{
	--	"stevearc/conform.nvim",
	--	optional = true,
	--	opts = {
	--		formatters_by_ft = {
	--			python = { "black", "isort" },
	--		},
	--	},
	--},
	-- debugging
	-- {
	-- 	"mfussenegger/nvim-dap",
	-- 	dependencies = {
	-- 		"mfussenegger/nvim-dap-python",
        --     -- stylua: ignore
        --     keys = {
        --         { "<leader>dPt", function() require('dap-python').test_method() end, desc = "Debug Method" },
        --         { "<leader>dPc", function() require('dap-python').test_class() end,  desc = "Debug Class" },
        --     },
	-- 		config = function()
	-- 			local path = require("mason-registry").get_package("debugpy"):get_install_path()
	-- 			require("dap-python").setup(path .. "/venv/bin/python")
	-- 		end,
	-- 	},
	-- },
	-- For selecting virtual envs
	{
		"linux-cultist/venv-selector.nvim",
		branch = "regexp",
		dependencies = {
			"mfussenegger/nvim-dap-python",
		},
		cmd = "VenvSelect",
		opts = {
			dap_enabled = true,
		},
		keys = { { "<leader>cv", "<cmd>:VenvSelect<cr>", desc = "Select VirtualEnv" } },
	},
}
