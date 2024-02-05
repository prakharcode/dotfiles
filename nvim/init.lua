require("prakharcode")

-- line number setting
vim.wo.number = true
vim.wo.relativenumber = true
vim.opt.number = true
vim.opt.wildignore = { '*.o', '*.a', '__pycache__' }
vim.opt.listchars = { space = '_', tab = '>~' }

-- text related
-- tabs
vim.opt.tabstop = 4
vim.opt.softtabstop = 4
vim.opt.shiftwidth = 4
vim.opt.expandtab = true
vim.opt.smartindent = true


vim.opt.wrap = false

-- undo dir
vim.opt.undodir = os.getenv("HOME") .. "/.vim/undodir"
vim.opt.undofile = true

-- search
vim.opt.incsearch = true


-- scroll
vim.opt.scrolloff = 8

-- other settings
vim.opt.updatetime = 50
