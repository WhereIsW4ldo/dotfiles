return {
  {
    "mason-org/mason.nvim",
    lazy = false,
    config = function()
      require("mason").setup()
    end,
    handlers = {
      function(server_name)
        local capabilities = require("cmp_nvim_lsp").default_capabilities()

        require("lspconfig")[server_name].setup({ capabilities = capabilities })
      end,
    },
  },
  {
    "mason-org/mason-lspconfig.nvim",
    lazy = false,
    config = function()
      require("mason-lspconfig").setup({
        auto_install = true,
      })
    end,
  },
  {
    "neovim/nvim-lspconfig",
    config = function()
      vim.keymap.set("n", "<leader>k", vim.lsp.buf.hover, {})
      vim.keymap.set({ "n", "v" }, "<leader>ca", vim.lsp.buf.code_action, {})

      local telescopeBuiltins = require("telescope.builtin")

      vim.keymap.set("n", "<leader>fr", telescopeBuiltins.lsp_references, { desc = "Telescope find references" })
      vim.keymap.set(
        "n",
        "<leader>fi",
        telescopeBuiltins.lsp_implementations,
        { desc = "Telescope find implementations" }
      )
      vim.keymap.set(
        "n",
        "<leader>fd",
        telescopeBuiltins.lsp_definitions,
        { desc = "Telescope find definitions" }
      )

      vim.keymap.set("n", "<C-R>", vim.lsp.buf.rename, {})
    end,
  },
}
