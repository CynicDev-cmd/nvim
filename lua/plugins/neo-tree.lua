return {
    {
        "nvim-neo-tree/neo-tree.nvim",
        branch = "v3.x",
        dependencies = {
            "nvim-lua/plenary.nvim",
            "MunifTanjim/nui.nvim",
            "nvim-tree/nvim-web-devicons",
        },
        cmd = "Neotree",

        keys = {
            {
                "<leader>e",
                "<cmd>Neotree toggle<cr>",
                desc = "Toggle file explorer",
            },
            {
                "<leader>o",
                "<cmd>Neotree focus<cr>",
                desc = "Focus file explorer",
            },
        },

        opts = {
            close_if_last_window = true,
            enable_git_status = true,
            enable_diagnostics = true,

            filesystem = {
                follow_current_file = {
                    enabled = true,
                },
                use_libuv_file_watcher = true,
                filtered_items = {
                    visible = true,
                    hide_dotfiles = false,
                    hide_gitignored = false,
                    hide_by_name = {
                        ".DS_Store",
                        "thumbs.db",
                    },
                },
            },

            window = {
                width = 34,
                mappings = {
                    ["<space>"] = "none",
                    ["l"] = "open",
                    ["h"] = "close_node",
                    ["H"] = "close_all_nodes",
                    ["z"] = "close_all_nodes",
                },
            },

            default_component_configs = {
                indent = {
                    with_expanders = true,
                    expander_collapsed = "",
                    expander_expanded = "",
                },
                git_status = {
                    symbols = {
                        added = "+",
                        modified = "~",
                        deleted = "-",
                        renamed = "R",
                        untracked = "?",
                        ignored = "!",
                        unstaged = "M",
                        staged = "S",
                        conflict = "C",
                    },
                },
            },
        },
    },
}
