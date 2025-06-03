return {
  "nvim-neo-tree/neo-tree.nvim",
  name = "neo-tree",
  dependencies = {
    "nvim-lua/plenary.nvim",
    "nvim-tree/nvim-web-devicons",
    "MunifTanjim/nui.nvim",
  },
  lazy = false,
  config = function()
    vim.keymap.set("n", "<C-n>", ":Neotree filesystem reveal left toggle<CR>", {})
    vim.keymap.set("n", "<leader>bf", ":Neotree buffers reveal float <CR>", {})
  end,
}
