return {
  'nvim-treesitter/nvim-treesitter',
  name = 'treesitter',
  build = ':TSUpdate',
  config = function()
    ensure_installed = {
      'lua',
      'javascript',
      'svelte',
      'html',
      'css',
      'rust',
      'C#',
      'terraform',
      'hcl'
    }
    highlight = { enable = true }
    indent = { enable = true }

    vim.treesitter.language.register('terraform', { 'terraform', 'terraform-vars' })
  end
}
