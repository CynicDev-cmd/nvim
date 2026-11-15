return {
    {
        "folke/which-key.nvim",

        event = "VeryLazy",

        opts = {
            preset = "modern",
            delay = 300,

            spec = {
                { "<leader>b", group = "Buffers" },
                { "<leader>c", group = "Code" },
                { "<leader>e", group = "Explorer" },
                { "<leader>g", group = "Git" },
                { "<leader>l", group = "LSP" },
                { "<leader>t", group = "Tools" },
            },
        },
    },
}
