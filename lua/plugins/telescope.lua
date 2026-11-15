return {
    {
        "nvim-telescope/telescope.nvim",
        branch = "0.1.x",
        cmd = "Telescope",

        dependencies = {
            "nvim-lua/plenary.nvim",
        },

        keys = {
            {
                "<leader>ff",
                "<cmd>Telescope find_files<cr>",
                desc = "Find files",
            },
            {
                "<leader>fg",
                "<cmd>Telescope live_grep<cr>",
                desc = "Search project text",
            },
            {
                "<leader>fb",
                "<cmd>Telescope buffers<cr>",
                desc = "Find buffers",
            },
            {
                "<leader>fr",
                "<cmd>Telescope oldfiles<cr>",
                desc = "Recent files",
            },
            {
                "<leader>fh",
                "<cmd>Telescope help_tags<cr>",
                desc = "Neovim help",
            },
        },

        opts = {
            defaults = {
                prompt_prefix = "  > ",
                selection_caret = "  ",
                sorting_strategy = "ascending",
                layout_strategy = "horizontal",

                layout_config = {
                    horizontal = {
                        prompt_position = "top",
                        preview_width = 0.55,
                    },
                    width = 0.90,
                    height = 0.85,
                },

                file_ignore_patterns = {
                    "%.git/",
                    "node_modules/",
                    "build/",
                    "dist/",
                },
            },

            pickers = {
                find_files = {
                    hidden = true,
                },
            },
        },
    },
}
