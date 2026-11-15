return {
    {
        "folke/tokyonight.nvim",
        lazy = false,
        priority = 1000,

        opts = {
            style = "storm",
            transparent = false,
            terminal_colors = true,

            styles = {
                comments = { italic = true },
                keywords = { italic = false },
                functions = {},
                variables = {},
                sidebars = "dark",
                floats = "dark",
            },

            on_colors = function(colors)
                -- Backgrounds
                colors.bg = "#17191D"
                colors.bg_dark = "#141619"
                colors.bg_float = "#24272D"
                colors.bg_popup = "#24272D"
                colors.bg_sidebar = "#1D2025"
                colors.bg_statusline = "#24272D"
                colors.bg_highlight = "#343942"
                colors.bg_visual = "#343942"

                -- Foreground
                colors.fg = "#D6C6AE"
                colors.fg_dark = "#B8AD9B"
                colors.fg_gutter = "#666B70"
                colors.comment = "#85877F"

                -- Warm accents
                colors.orange = "#D8A77B"
                colors.yellow = "#D6BD8A"
                colors.green = "#A8B89A"
                colors.teal = "#91B3A1"
                colors.red = "#C98F88"
                colors.magenta = "#C3A0B5"
                colors.purple = "#B6A0C9"
                colors.blue = "#91A9B8"
                colors.cyan = "#91B8B5"
            end,

            on_highlights = function(hl, colors)
                -- Editor
                hl.Normal = {
                    fg = colors.fg,
                    bg = colors.bg,
                }

                hl.NormalFloat = {
                    fg = colors.fg,
                    bg = colors.bg_float,
                }

                hl.FloatBorder = {
                    fg = colors.orange,
                    bg = colors.bg_float,
                }

                hl.CursorLine = {
                    bg = "#20242A",
                }

                hl.LineNr = {
                    fg = "#666B70",
                }

                hl.CursorLineNr = {
                    fg = colors.orange,
                    bold = true,
                }

                hl.Visual = {
                    bg = "#343942",
                }

                hl.WinSeparator = {
                    fg = "#343942",
                }

                -- Search
                hl.Search = {
                    fg = "#17191D",
                    bg = colors.yellow,
                    bold = true,
                }

                hl.IncSearch = {
                    fg = "#17191D",
                    bg = colors.orange,
                    bold = true,
                }

                -- Completion menus
                hl.Pmenu = {
                    fg = colors.fg,
                    bg = colors.bg_float,
                }

                hl.PmenuSel = {
                    fg = colors.bg,
                    bg = colors.orange,
                    bold = true,
                }

                -- Syntax
                hl.Comment = {
                    fg = colors.comment,
                    italic = true,
                }

                hl.String = {
                    fg = colors.green,
                }

                hl.Function = {
                    fg = colors.orange,
                }

                hl.Keyword = {
                    fg = colors.magenta,
                }

                hl.Type = {
                    fg = colors.yellow,
                }

                hl.Constant = {
                    fg = colors.purple,
                }

                hl.Identifier = {
                    fg = colors.blue,
                }

                -- Diagnostics
                hl.DiagnosticError = {
                    fg = colors.red,
                }

                hl.DiagnosticWarn = {
                    fg = colors.yellow,
                }

                hl.DiagnosticInfo = {
                    fg = colors.blue,
                }

                hl.DiagnosticHint = {
                    fg = colors.green,
                }

                -- Git
                hl.DiffAdd = {
                    fg = colors.green,
                    bg = "#202A24",
                }

                hl.DiffChange = {
                    fg = colors.yellow,
                    bg = "#29271F",
                }

                hl.DiffDelete = {
                    fg = colors.red,
                    bg = "#2C2022",
                }
            end,
        },

        config = function(_, opts)
            require("tokyonight").setup(opts)
            vim.cmd.colorscheme("tokyonight-storm")
        end,
    },
}