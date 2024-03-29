-- leader remap
vim.g.mapleader=","

-- Expose Netrw directory
vim.keymap.set("n", "<leader>dl", vim.cmd.Ex)

-- Splitting Panes in vim
vim.keymap.set("n", "<leader>\\", vim.cmd.vsplit)
vim.keymap.set("n", "<leader>-", vim.cmd.split)

-- Navigation in Panes
vim.keymap.set("n", "<leader>ww", function() vim.cmd.wincmd("k") end) -- top
vim.keymap.set("n", "<leader>wa", function() vim.cmd.wincmd("h") end) -- left
vim.keymap.set("n", "<leader>wd", function() vim.cmd.wincmd("l") end) -- right
vim.keymap.set("n", "<leader>ws", function() vim.cmd.wincmd("j") end) -- bottom

-- Begin and end of line
vim.keymap.set("n", "H", "^") -- beginning of line
vim.keymap.set("n", "L" ,"$") -- end of line

-- no highlight after finding
vim.keymap.set("n", "ho" , function() vim.cmd("noh") end) -- end of line

-- diagnostic remaps
vim.keymap.set('n', '<leader>e', vim.diagnostic.open_float)
vim.keymap.set('n', '[d', vim.diagnostic.goto_prev)
vim.keymap.set('n', ']d', vim.diagnostic.goto_next)
vim.keymap.set('n', '<leader>q', vim.diagnostic.setloclist)

