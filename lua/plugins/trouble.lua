return {
    {
        "folke/trouble.nvim",

        dependencies = {
            "nvim-tree/nvim-web-devicons",
            "nvim-lua/plenary.nvim",
        },

        cmd = "Trouble",

        keys = {
            {
                "<leader>xx",
                "<cmd>Trouble diagnostics toggle<cr>",
                desc = "Workspace diagnostics",
            },
            {
                "<leader>xX",
                "<cmd>Trouble diagnostics toggle filter.buf=0<cr>",
                desc = "Document diagnostics",
            },
            {
                "<leader>cs",
                "<cmd>Trouble symbols toggle focus=false<cr>",
                desc = "Document symbols",
            },
            {
                "<leader>cl",
                "<cmd>Trouble lsp toggle focus=false win.position=right<cr>",
                desc = "LSP references",
            },
            {
                "<leader>xL",
                "<cmd>Trouble loclist toggle<cr>",
                desc = "Location list",
            },
            {
                "<leader>xQ",
                "<cmd>Trouble qflist toggle<cr>",
                desc = "Quickfix list",
            },
        },

        opts = {
            auto_close = false,
            auto_open = false,
            auto_preview = true,
            focus = true,
            restore = true,
            follow = true,
            indent_lines = true,
            warn_no_results = false,

            win = {
                position = "bottom",
                size = 10,
            },
        },
    },
}
