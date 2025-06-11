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
        ensure_installed = {
          "lua_ls",
          "csharp_ls",
          "jsonls",
          "pylsp",
          "rust_analyzer",
          "svelte",
          "ts_ls",
          "terraformls",
        },
        auto_install = true,
      })
    end,
  },
  {
    "neovim/nvim-lspconfig",
    config = function()
      vim.keymap.set("n", "K", function()
        vim.lsp.buf.hover({
          border = "rounded",
          max_width = 80,
          max_height = 30,
        })
      end, {})
      vim.keymap.set({ "n", "v" }, "<leader>ca", vim.lsp.buf.code_action, {})
      vim.keymap.set({ "n" }, "<leader>fr", vim.lsp.buf.references, {})
      vim.keymap.set({ "n" }, "<leader>fi", vim.lsp.buf.implementation, {})
      vim.keymap.set({ "n" }, "<leader>fd", vim.lsp.buf.definition, {})
      vim.keymap.set({ "n" }, "<leader>rr", vim.lsp.buf.rename, {})
    end,
  },
}
