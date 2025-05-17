return {
  'catppuccin/nvim', 
  name = 'catppuccin',
  config = function(_, opts)
    vim.cmd.colorscheme 'catppuccin'
  end
}
