return {
  {
    "antosha417/nvim-lsp-file-operations",
    dependencies = {
      "nvim-lua/plenary.nvim",
      "nvim-neo-tree/neo-tree.nvim",
    },
    config = function()
      require("lsp-file-operations").setup()
    end,
  },
  {
    "nvim-neo-tree/neo-tree.nvim",
    name = "neo-tree",
    dependencies = {
      "nvim-lua/plenary.nvim",
      "nvim-tree/nvim-web-devicons",
      "MunifTanjim/nui.nvim",
    },
    lazy = false,
    config = function()
      require("neo-tree").setup({
        window = {
          mappings = {
            ["P"] = { "toggle_preview", config = { use_float = true } },
            ["l"] = "focus_preview",
            ["<C-k>"] = { "scroll_preview", config = { direction = 10 } },
            ["<C-j>"] = { "scroll_preview", config = { direction = -10 } },
          },
        },
        default_component_configs = {
          filesystem = {
            follow_current_file = {
              enabled = true,
              leave_dirs_open = true,
            },
          },
        },
        buffers = {
          follow_current_file = {
            enabled = true,
            leave_dirs_open = true,
          },
        },
      })

      vim.keymap.set("n", "<C-n>", ":Neotree filesystem reveal left toggle<CR>", {})
      vim.keymap.set("n", "<leader>bf", ":Neotree buffers reveal float <CR>", {})
      vim.keymap.set("n", "<leader>sc", ":Neotree reveal<CR>", {})
    end,
  },
}
