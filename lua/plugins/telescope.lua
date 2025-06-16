return {
  {
    "nvim-telescope/telescope.nvim",
    name = "telescope",
    dependencies = {
      "nvim-lua/plenary.nvim",
      "cljoly/telescope-repo.nvim",
      "BurntSushi/ripgrep",
    },
    config = function()
      local CallTelescope = function(input)
        local theme = require("telescope.themes").get_dropdown({})
        input(theme)
      end

      local builtin = require("telescope.builtin")

      vim.keymap.set("n", "<leader>ff", function()
        CallTelescope(builtin.find_files)
      end, { desc = "Telescope find files" })

      vim.keymap.set("n", "<leader>fg", function()
        CallTelescope(builtin.live_grep)
      end, { desc = "Telescope live grep" })

      vim.keymap.set("n", "<leader>fb", function()
        CallTelescope(builtin.buffers)
      end, { desc = "Telescope buffers" })

      vim.keymap.set("n", "<leader>fh", function()
        CallTelescope(builtin.help_tags)
      end, { desc = "Telescope help tags" })

      vim.keymap.set({ "n" }, "<leader>fr", function()
        CallTelescope(builtin.lsp_references)
      end, {})

      vim.keymap.set({ "n" }, "<leader>fi", function()
        CallTelescope(builtin.lsp_implementations)
      end, {})

      vim.keymap.set({ "n" }, "<leader>fd", function()
        CallTelescope(builtin.lsp_definitions)
      end, {})
    end,
  },
  {
    "nvim-telescope/telescope-ui-select.nvim",
    config = function()
      require("telescope").setup({
        extensions = {
          ["ui-select"] = {
            require("telescope.themes").get_dropdown({}),
          },
        },
      })
      -- To get ui-select loaded and working with telescope, you need to call
      -- load_extension, somewhere after setup function:
      require("telescope").load_extension("ui-select")
    end,
  },
  {
    "LukasPietzschmann/telescope-tabs",
    config = function()
      require("telescope").load_extension("telescope-tabs")
      require("telescope-tabs").setup({
        -- Your custom config :^)
      })
    end,
    dependencies = { "nvim-telescope/telescope.nvim" },
  },
}
