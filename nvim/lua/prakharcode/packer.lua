local fn = vim.fn

-- Automatically install packer
local install_path = fn.stdpath("data") .. "/site/pack/packer/start/packer.nvim"
if fn.empty(fn.glob(install_path)) > 0 then
    PACKER_BOOTSTRAP = fn.system({
        "git",
        "clone",
        "--depth",
        "1",
        "https://github.com/wbthomason/packer.nvim",
        install_path,
    })
    print("Installing packer close and reopen Neovim...")
    vim.cmd([[packadd packer.nvim]])
end

-- Autocommand that reloads neovim whenever you save the packer.lua file
vim.cmd([[
augroup packer_user_config
autocmd!
autocmd BufWritePost packer.lua source <afile> | PackerSync
augroup end
]])

-- Use a protected call so we don't error out on first use
local status_ok, packer = pcall(require, "packer")
if not status_ok then
    return
end

-- Have packer use a popup window
packer.init({
    display = {
        open_fn = function()
            return require("packer.util").float({ border = "rounded" })
        end,
    },
})

--- This file can be loaded by calling `lua require('plugins')` from your init.vim

-- Only required if you have packer configured as `opt`
vim.cmd [[packadd packer.nvim]]

return require("packer").startup(function(use)
    -- Packer can manage itself
    use "wbthomason/packer.nvim"
    use "BurntSushi/ripgrep"
    use {
        "nvim-telescope/telescope.nvim", tag = "0.1.5",
        -- or                            , branch = '0.1.x',
        requires = { { "nvim-lua/plenary.nvim" } }
    }
    use { "rose-pine/neovim", as = "rose-pine", config = function()
        vim.cmd("colorscheme rose-pine")
    end }
    use {
        "nvim-treesitter/nvim-treesitter",
        run = ":TSUpdate"
    }
    use { "nvim-treesitter/nvim-treesitter-context" }
    use { "ThePrimeagen/harpoon" }
    use { "mbbill/undotree" }

    use {
        "VonHeikemen/lsp-zero.nvim",
        branch = "v3.x",
        requires = {
            --- Uncomment the two plugins below if you want to manage the language servers from neovim
            { "williamboman/mason.nvim" },
            { "williamboman/mason-lspconfig.nvim" },

            -- LSP Support
            { "neovim/nvim-lspconfig" },
            -- Autocompletion
            { "hrsh7th/nvim-cmp" },
            { "hrsh7th/cmp-nvim-lsp" },
            { "L3MON4D3/LuaSnip" },
            { "hrsh7th/cmp-buffer" },
        }
    }

    use { "tpope/vim-obsession" }
    use { "tpope/vim-fugitive" }
    use { "lukas-reineke/indent-blankline.nvim" }
    use {
        "kkoomen/vim-doge",
        run = ":call doge#install()"
    }
    use { "lewis6991/gitsigns.nvim", config = function() require("gitsigns").setup() end }
    use { "ellisonleao/carbon-now.nvim", config = function() require("carbon-now").setup() end }
    use { "dnlhc/glance.nvim", config = function() require("glance").setup() end }
    use {
        "nvim-lualine/lualine.nvim",
        requires = { "nvim-tree/nvim-web-devicons", opt = true },
        config = function()
            require("lualine").setup()
        end
    }
    use { "nvim-tree/nvim-web-devicons" }
    use { "folke/Trouble.nvim", requires = { { "nvim-tree/nvim-web-devicons" } } }
    use { "akinsho/bufferline.nvim", tag = "*", requires = "nvim-tree/nvim-web-devicons" }
    use {
        "folke/noice.nvim",
        requires = {
            -- if you lazy-load any plugin below, make sure to add proper `module="..."` entries
            "MunifTanjim/nui.nvim",
            -- OPTIONAL:
            --   `nvim-notify` is only needed, if you want to use the notification view.
            --   If not available, we use `mini` as the fallback
            "rcarriga/nvim-notify",
        }
    }
    -- nvim v0.7.2
    use({
        "kdheepak/lazygit.nvim",
        -- optional for floating window border decoration
        requires = {
            "nvim-lua/plenary.nvim",
        },
    })
    use { "catppuccin/nvim", as = "catppuccin" }
    use { "akinsho/toggleterm.nvim", tag = '*' }
    use { "mikavilpas/yazi.nvim", dependencies = { "nvim-lua/plenary.nvim" }, config = function() require("yazi").setup() end }
    use { "stevearc/conform.nvim" }
end)
