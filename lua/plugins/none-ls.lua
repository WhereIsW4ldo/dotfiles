return {
  {
    "nvimtools/none-ls.nvim",
    dependencies = {
      "nvimtools/none-ls-extras.nvim",
      "mason.nvim",
    },
    config = function()
      local null_ls = require("null-ls")

      local formatting = null_ls.builtins.formatting
      local diagnostics = null_ls.builtins.diagnostics
      local code_actions = null_ls.builtins.code_actions

      null_ls.setup({
        sources = {
          formatting.stylua,
          formatting.prettierd,
          formatting.csharpier,
          formatting.terraform_fmt,

          require("none-ls.diagnostics.eslint_d"),
          diagnostics.mypy,
          diagnostics.todo_comments,

          code_actions.refactoring,
          require("none-ls.code_actions.eslint_d"),
        },
      })

      vim.diagnostic.config({ virtual_text = true })

      vim.keymap.set("n", "<leader>gf", vim.lsp.buf.format, {})
    end,
  },
}
