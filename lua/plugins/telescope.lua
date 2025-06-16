return {
  {
    "nvim-telescope/telescope.nvim",
    name = "telescope",
    dependencies = { "nvim-lua/plenary.nvim", "cljoly/telescope-repo.nvim" },
    config = function()
      local builtin = require("telescope.builtin")

      vim.keymap.set("n", "<leader>ff", builtin.find_files, { desc = "Telescope find files" })
      vim.keymap.set("n", "<leader>fg", builtin.live_grep, { desc = "Telescope live grep" })
      vim.keymap.set("n", "<leader>fb", builtin.buffers, { desc = "Telescope buffers" })
      vim.keymap.set("n", "<leader>fh", builtin.help_tags, { desc = "Telescope help tags" })

      vim.keymap.set({ "n" }, "<leader>fr", builtin.lsp_references, {})
      vim.keymap.set({ "n" }, "<leader>fi", builtin.lsp_implementations, {})
      vim.keymap.set({ "n" }, "<leader>fd", builtin.lsp_definitions, {})
    end,
  },
  {
    "nvim-telescope/telescope-ui-select.nvim",
    config = function()
      require("telescope").setup({
        extensions = {
          ["ui-select"] = {
            require("telescope.themes").get_dropdown({})
          }
        }
      })
      -- To get ui-select loaded and working with telescope, you need to call
      -- load_extension, somewhere after setup function:
      require("telescope").load_extension("ui-select")
    end
  },
}
