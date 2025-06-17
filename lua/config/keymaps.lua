-- General keymaps
vim.keymap.set("n", "<leader>h", ":nohlsearch<CR>")
vim.keymap.set("i", "jj", "<Esc>", { noremap = false })

-- Easier window mogevements
vim.keymap.set("n", "<C-h>", "<C-w>h", { desc = "Go to Left Window", remap = true })
vim.keymap.set("n", "<C-j>", "<C-w>j", { desc = "Go to Lower Window", remap = true })
vim.keymap.set("n", "<C-k>", "<C-w>k", { desc = "Go to Upper Window", remap = true })
vim.keymap.set("n", "<C-l>", "<C-w>l", { desc = "Go to Right Window", remap = true })

-- Easier windows size adjustments
vim.keymap.set("n", "<C-Up>", "<cmd>resize -2<cr>", { desc = "Increase Window Height" })
vim.keymap.set("n", "<C-Down>", "<cmd>resize +2<cr>", { desc = "Decrease Window Height" })
vim.keymap.set("n", "<C-Left>", "<cmd>vertical resize +2<cr>", { desc = "Decrease Window Width" })
vim.keymap.set("n", "<C-Right>", "<cmd>vertical resize -2<cr>", { desc = "Increase Window Width" })

-- Keep visual indenting selected after indenting
vim.keymap.set("v", "<", "<gv")
vim.keymap.set("v", ">", ">gv")

-- Terminal keymaps
vim.keymap.set("t", "<leader><Esc>", "<C-\\><C-n>", { noremap = true, silent = true })

vim.keymap.set("t", "<C-h>", "<C-\\><C-n><C-w>h", { desc = "Exit terminal and go to Left Window", remap = true })
vim.keymap.set("t", "<C-j>", "<C-\\><C-n><C-w>j", { desc = "Exit terminal and go to Lower Window", remap = true })
vim.keymap.set("t", "<C-k>", "<C-\\><C-n><C-w>k", { desc = "Exit terminal and go to Upper Window", remap = true })
vim.keymap.set("t", "<C-l>", "<C-\\><C-n><C-w>l", { desc = "Exit terminal and go to Right Window", remap = true })
