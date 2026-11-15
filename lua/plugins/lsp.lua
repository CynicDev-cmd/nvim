return {
    {
        "neovim/nvim-lspconfig",
        dependencies = {
            "saghen/blink.cmp",
        },

        config = function()
            vim.lsp.config("clangd", {
                cmd = {
                    "clangd",
                    "--background-index",
                    "--clang-tidy",
                    "--completion-style=detailed",
                    "--header-insertion=iwyu",
                },

                filetypes = {
                    "c",
                    "cpp",
                    "objc",
                    "objcpp",
                },

                root_markers = {
                    "compile_commands.json",
                    "compile_flags.txt",
                    ".git",
                },

                capabilities =
                    require("blink.cmp").get_lsp_capabilities(),

                on_attach = function(client, bufnr)
                    if client:supports_method(
                        "textDocument/formatting"
                    ) then
                        vim.api.nvim_create_autocmd(
                            "BufWritePre",
                            {
                                buffer = bufnr,
                                callback = function()
                                    vim.lsp.buf.format({
                                        bufnr = bufnr,
                                        async = false,
                                    })
                                end,
                            }
                        )
                    end
                end,
            })

            vim.lsp.enable("clangd")
        end,
    },
}