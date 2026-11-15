local map = vim.keymap.set

map("n", "<leader>w", "<cmd>write<cr>", { desc = "Save" })
map("n", "<leader>q", "<cmd>quit<cr>", { desc = "Quit" })
map("n", "<leader>h", "<cmd>nohlsearch<cr>", { desc = "Clear search" })

map("n", "<C-h>", "<C-w>h", { desc = "Move left" })
map("n", "<C-j>", "<C-w>j", { desc = "Move down" })
map("n", "<C-k>", "<C-w>k", { desc = "Move up" })
map("n", "<C-l>", "<C-w>l", { desc = "Move right" })

map("n", "<leader>f", function()
    vim.lsp.buf.format({ async = true })
end, { desc = "Format file" })

map("n", "<leader>d", vim.diagnostic.open_float, { desc = "Show diagnostic" })
map("n", "[d", vim.diagnostic.goto_prev, { desc = "Previous diagnostic" })
map("n", "]d", vim.diagnostic.goto_next, { desc = "Next diagnostic" })

map("n", "K", vim.lsp.buf.hover, { desc = "Hover documentation" })
map("n", "gd", vim.lsp.buf.definition, { desc = "Go to definition" })
map("n", "gr", vim.lsp.buf.references, { desc = "Find references" })
map("n", "<leader>rn", vim.lsp.buf.rename, { desc = "Rename symbol" })

-- Window management
map("n", "<leader>sv", "<cmd>vsplit<cr>", { desc = "Vertical split" })
map("n", "<leader>sh", "<cmd>split<cr>", { desc = "Horizontal split" })
map("n", "<leader>se", "<C-w>=", { desc = "Equalize splits" })
map("n", "<leader>sx", "<cmd>close<cr>", { desc = "Close split" })

-- Terminal
map("n", "<leader>tt", "<cmd>belowright 12split | terminal<cr>", { desc = "Open terminal" })
map("n", "<leader>tf", "<cmd>terminal<cr>", { desc = "Terminal in current window" })
map("t", "<C-h>", "<C-\\><C-n><C-w>h", { desc = "Move left from terminal" })
map("t", "<C-j>", "<C-\\><C-n><C-w>j", { desc = "Move down from terminal" })
map("t", "<C-k>", "<C-\\><C-n><C-w>k", { desc = "Move up from terminal" })
map("t", "<C-l>", "<C-\\><C-n><C-w>l", { desc = "Move right from terminal" })
