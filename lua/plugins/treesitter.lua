return {
  "nvim-treesitter/nvim-treesitter",
  build = ":TSUpdate",
  name = "treesitter",
  branch = "main",
  config = function()
    require("nvim-treesitter.install").compilers = { "zig" }

    local treesitter = require("nvim-treesitter")

    treesitter.setup({
      auto_install = true,
      highlight = { enable = true },
      indent = { enable = true },
    })

    treesitter.install({ "rust", "javascript", "zig", "c_sharp", "typescript", "c", "markdown", "lua" })

    vim.treesitter.language.register("terraform", { "terraform", "terraform-vars" })
  end,
}
