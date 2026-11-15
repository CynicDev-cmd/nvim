return {
    {
        "nvim-lualine/lualine.nvim",

        dependencies = {
            "nvim-tree/nvim-web-devicons",
        },

        event = "VeryLazy",

        opts = {
            options = {
                theme = "tokyonight",
                globalstatus = true,
                icons_enabled = true,

                component_separators = {
                    left = "|",
                    right = "|",
                },

                section_separators = {
                    left = "",
                    right = "",
                },

                disabled_filetypes = {
                    statusline = {},
                    winbar = {},
                },
            },

            sections = {
                lualine_a = {
                    "mode",
                },

                lualine_b = {
                    "branch",
                    "diff",
                    {
                        "diagnostics",
                        sources = { "nvim_lsp" },
                        symbols = {
                            error = "E:",
                            warn = "W:",
                            info = "I:",
                            hint = "H:",
                        },
                    },
                },

                lualine_c = {
                    {
                        "filename",
                        path = 1,
                        symbols = {
                            modified = " [+]",
                            readonly = " [RO]",
                            unnamed = "[No Name]",
                        },
                    },
                },

                lualine_x = {
                    "filetype",
                    "encoding",
                    "fileformat",
                },

                lualine_y = {
                    "progress",
                },

                lualine_z = {
                    "location",
                },
            },

            extensions = {
                "neo-tree",
                "lazy",
                "trouble",
                "quickfix",
            },
        },
    },
}
