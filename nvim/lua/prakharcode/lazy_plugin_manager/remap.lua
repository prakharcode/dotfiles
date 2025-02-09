-- Expose Yazi
vim.keymap.set("n", "<leader>dl", function()
	require("yazi").yazi()
end, {})

-- sane browsing
vim.keymap.set("n", "<S-g>", "<S-g>zz")
vim.keymap.set("n", "<C-d>", "<C-d>zz")
vim.keymap.set("n", "<C-u>", "<C-u>zz")

-- Splitting Panes in vim
vim.keymap.set("n", "<leader>\\", vim.cmd.vsplit)
vim.keymap.set("n", "<leader>-", vim.cmd.split)

-- Navigation in Panes
vim.keymap.set("n", "<leader>ww", function()
	vim.cmd.wincmd("k")
end) -- top
vim.keymap.set("n", "<leader>wa", function()
	vim.cmd.wincmd("h")
end) -- left
vim.keymap.set("n", "<leader>wd", function()
	vim.cmd.wincmd("l")
end) -- right
vim.keymap.set("n", "<leader>ws", function()
	vim.cmd.wincmd("j")
end) -- bottom

-- Tabs
-- Creating
vim.keymap.set("n", "gt", "<cmd>tab split | lua vim.lsp.buf.definition()<CR>", {})
-- Navigation
vim.keymap.set("n", "<TAB>", "<cmd>tabn<CR>", {})
vim.keymap.set("n", "<S-TAB>", "<cmd>tabp<CR>", {})

-- Begin and end of line
vim.keymap.set("n", "H", "^") -- beginning of line
vim.keymap.set("n", "L", "$") -- end of line
vim.keymap.set("v", "H", "^") -- beginning of line
vim.keymap.set("v", "L", "$") -- end of line

-- no highlight after finding
vim.keymap.set("n", "ho", function()
	vim.cmd("noh")
end) -- end of line

-- diagnostic remaps
vim.keymap.set("n", "<leader>e", vim.diagnostic.open_float)
vim.keymap.set("n", "[d", vim.diagnostic.goto_prev)
vim.keymap.set("n", "]d", vim.diagnostic.goto_next)
vim.keymap.set("n", "<leader>q", vim.diagnostic.setloclist)

-- LazyGit
vim.keymap.set("n", "<leader>gg", ":LazyGit<CR>")

-- File Browser
-- open file_browser with the path of the current buffer
vim.keymap.set("n", "<leader>fb", ":Telescope file_browser path=%:p:h select_buffer=true<CR>")
