return {
    {
        "saghen/blink.cmp",
        version = "1.*",

        opts = {
            keymap = {
                preset = "default",

                ["<Tab>"] = { "accept", "fallback" },
                ["<S-Tab>"] = { "select_prev", "fallback" },
                ["<CR>"] = { "accept", "fallback" },

                ["<C-Space>"] = {
                    "show",
                    "show_documentation",
                    "hide_documentation",
                },

                ["<C-k>"] = {
                    "show_signature",
                    "hide_signature",
                    "fallback",
                },
            },

            appearance = {
                nerd_font_variant = "mono",
            },

            completion = {
                documentation = {
                    auto_show = true,
                    auto_show_delay_ms = 200,
                },
            },

            signature = {
                enabled = true,
                trigger = {
                    enabled = true,
                    show_on_insert = true,
                },
                window = {
                    border = "rounded",
                    show_documentation = true,
                },
            },

            sources = {
                default = {
                    "lsp",
                    "path",
                    "buffer",
                },
            },

            fuzzy = {
                implementation = "prefer_rust_with_warning",
            },
        },
    },
}
