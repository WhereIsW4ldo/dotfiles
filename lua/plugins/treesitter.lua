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
      'C#'
    }
    highlight = { enable = true }
    indent = { enable = true }
  end
}
