vim.cmd("set expandtab")
vim.cmd("set tabstop=2")
vim.cmd("set softtabstop=2")
vim.cmd("set shiftwidth=2")
vim.cmd("set number")
vim.cmd("set cursorline")

vim.keymap.set("n", "<leader>h", ":nohlsearch<CR>")
vim.keymap.set("t", "<C-space>", "<C-\\><C-n><C-w>k", { silent = true })
vim.keymap.set("i", "jj", "<Esc>", { noremap = false })

vim.g.mapleader = " "

vim.opt.swapfile = false

require("config.lazy")
