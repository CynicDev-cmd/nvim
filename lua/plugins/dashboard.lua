
return {
    {
        "goolord/alpha-nvim",
        lazy = false,

        config = function()
            local alpha = require("alpha")
            local dashboard = require("alpha.themes.dashboard")

            -- Custom Unicode Braille artwork
            local header_path = vim.fn.stdpath("config")
                .. "/lua/plugins/dashboard-art.txt"

            dashboard.section.header.val = vim.fn.readfile(header_path)

            -- Dashboard shortcuts
            dashboard.section.buttons.val = {
                dashboard.button("f", "  Find File", ":Telescope find_files<CR>"),
                dashboard.button("g", "  Find Text", ":Telescope live_grep<CR>"),
                dashboard.button("r", "  Recent Files", ":Telescope oldfiles<CR>"),
                dashboard.button("n", "  New File", ":ene <BAR> startinsert<CR>"),
                dashboard.button("q", "  Quit", ":qa<CR>"),
            }

            -- Footer
            dashboard.section.footer.val = "Powered by Neovim"

            alpha.setup(dashboard.config)
        end,
    },
}
