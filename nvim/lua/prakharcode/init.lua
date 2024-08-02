require("prakharcode.remap")
require("prakharcode.packer")


vim.api.nvim_create_autocmd("BufWritePre", {
    pattern = "*.tf",
    callback = function(args)
        vim.cmd(":! terraform fmt " .. vim.api.nvim_buf_get_name(args.buf))
    end,
})

vim.api.nvim_create_autocmd("BufWritePre", {
    pattern = "*",
    callback = function(args)
        require("conform").format({ bufnr = args.buf })
    end,
})
