return {
    {
        "akinsho/toggleterm.nvim",
        version = "*",
        keys = {
            { "<leader>tt", "<cmd>ToggleTerm<CR>", desc = "Toggle Termanal" },
            -- figure out why it is not working
            { "<C-n>",      "<C-n><C-\\>",         desc = "Exit terminal",  mode = "t" }, },
        opts = {},
    },
}
