return {
    "stevearc/conform.nvim",
    keys = {
        {
            -- Customize or remove this keymap to your liking
            "<leader>bF",
            function()
                require("conform").format({ async = true })
            end,
            mode = "",
            desc = "Format buffer",
        },
    },
    opts = {
        -- Define your formatters
        formatters_by_ft = {
            lua = { "stylua" },
            -- python = { "isort", "black" },
            javascript = { "prettierd", "prettier", stop_after_first = true },
            terraform = { "terraformls" }
        },
        -- Set default options
        default_format_opts = {
            lsp_format = "fallback",
        },
        -- Customize formatters
        formatters = {
            shfmt = {
                prepend_args = { "-i", "2" },
            },
        },
    },
}
