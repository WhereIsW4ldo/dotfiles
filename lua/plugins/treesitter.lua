return {
  "nvim-treesitter/nvim-treesitter",
  name = "treesitter",
  build = ":TSUpdate",
  config = function()
    local config = require("nvim-treesitter.configs")

    config.setup({
      auto_install = true,
      highlight = { enable = true },
      indent = { enable = true },
    })

    vim.treesitter.language.register("terraform", { "terraform", "terraform-vars" })
  end,
}
