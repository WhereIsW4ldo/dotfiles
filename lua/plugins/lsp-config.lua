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
    opts = {
      ensure_installed = {
        "lua_ls",
        "csharp_ls",
        "jsonls",
        -- "pylsp",
        "rust_analyzer",
        "svelte",
        "ts_ls",
        "terraformls",
      },
      auto_install = true,
    },
  },
  {
    "neovim/nvim-lspconfig",
  },
  {
    "onsails/lspkind.nvim",
  },
  {
    "ray-x/lsp_signature.nvim",
    opts = {
      bind = true,
      handler_opts = {
        border = "rounded",
      },
    },
  },
  {
    "smjonas/inc-rename.nvim",
  },
  {
    "jubnzv/virtual-types.nvim",
  },
  {
    "aznhe21/actions-preview.nvim",
  },
  {
    "VidocqH/lsp-lens.nvim",
  },
  {
    "hinell/lsp-timeout.nvim",
    dependencies = { "neovim/nvim-lspconfig" },
  },
  {
    "esmuellert/nvim-eslint",
  },
  {
    "sontungexpt/better-diagnostic-virtual-text",
    event = "LspAttach",
    config = function(opts)
      require("better-diagnostic-virtual-text").setup(opts)
    end,
  },
}
