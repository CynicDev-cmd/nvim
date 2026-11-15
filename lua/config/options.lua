vim.opt.number = true
vim.opt.relativenumber = true

vim.opt.expandtab = true
vim.opt.shiftwidth = 4
vim.opt.tabstop = 4
vim.opt.softtabstop = 4

vim.opt.smartindent = true
vim.opt.autoindent = true

vim.opt.wrap = false
vim.opt.cursorline = true

vim.opt.termguicolors = true
vim.opt.signcolumn = "yes"
vim.opt.updatetime = 250

vim.opt.ignorecase = true
vim.opt.smartcase = true

vim.opt.splitright = true
vim.opt.splitbelow = true

vim.opt.scrolloff = 8

vim.opt.mouse = "a"
vim.opt.clipboard = "unnamedplus"

vim.opt.completeopt = {
    "menu",
    "menuone",
    "noselect",
}

vim.opt.swapfile = false
vim.opt.backup = false
vim.opt.undofile = true


-- ==========================================
-- PERSISTENT FILE VIEWS
-- ==========================================

vim.opt.viewoptions = { "cursor", "folds" }

vim.opt.viewdir = vim.fn.stdpath("state") .. "/view"
vim.fn.mkdir(vim.o.viewdir, "p")

local view_group = vim.api.nvim_create_augroup(
    "PersistentViews",
    { clear = true }
)

vim.api.nvim_create_autocmd("BufWinLeave", {
    group = view_group,
    pattern = "*",
    callback = function()
        if vim.bo.buftype == "" and vim.api.nvim_buf_get_name(0) ~= "" then
            vim.cmd("silent! mkview")
        end
    end,
})

vim.api.nvim_create_autocmd("BufWinEnter", {
    group = view_group,
    pattern = "*",
    callback = function()
        if vim.bo.buftype == "" and vim.api.nvim_buf_get_name(0) ~= "" then
            vim.cmd("silent! loadview")
        end
    end,
})
