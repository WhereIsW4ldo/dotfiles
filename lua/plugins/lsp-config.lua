return {
  {
    'mason-org/mason.nvim',
    config = function()
      require('mason').setup()
    end
  },
  {
    'mason-org/mason-lspconfig.nvim',
    config = function()
      require('mason-lspconfig').setup({
        ensure_installed = {
          'lua_ls',
          'ts_ls',
          'svelte',
          'csharp_ls',
          'jsonls',
        }
      })
    end
  },
  {
    'neovim/nvim-lspconfig',
    config = function()
      local lspconfig = require('lspconfig')

      lspconfig.lua_ls.setup({})
      lspconfig.ts_ls.setup({})
      lspconfig.svelte.setup({})
      lspconfig.csharp_ls.setup({})
      lspconfig.jsonls.setup({})

      vim.keymap.set('n', '<leader>k', vim.lsp.buf.hover, {})
      vim.keymap.set('n', 'gi', vim.lsp.buf.implementation, {})
      vim.keymap.set('n', 'gd', vim.lsp.buf.definition, {})
      vim.keymap.set('n', 'gu', vim.lsp.buf.references, {})
      vim.keymap.set({ 'n', 'v' }, '<leader>ca', vim.lsp.buf.code_action, {})

      vim.keymap.set('n', '<C-R>', vim.lsp.buf.rename, {})
    end
  }
}
