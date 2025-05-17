return {
  'nvim-neo-tree/neo-tree.nvim',
  name = 'neo-tree',
  dependencies = {
    'nvim-lua/plenary.nvim',
    'nvim-tree/nvim-web-devicons',
    'MunifTanjim/nui.nvim',
  },
  lazy = false,
  config = function(_, opts)
    vim.keymap.set('n', '<leader>]', ':Neotree filesystem reveal left<CR>', {})
  end
}
