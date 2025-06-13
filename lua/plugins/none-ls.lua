return {
  {
    "nvimtools/none-ls.nvim",
    dependencies = {
      "nvimtools/none-ls-extras.nvim",
      "ThePrimeagen/refactoring.nvim",
      "JohnnyMorganz/StyLua",
      "fsouza/prettierd",
      "belav/csharpier",
      "mantoni/eslint_d.js",
      "python/mypy",
    },
    config = function()
      local null_ls = require("null-ls")

      null_ls.setup({
        sources = {
          null_ls.builtins.formatting.stylua,
          null_ls.builtins.formatting.prettierd,
          null_ls.builtins.formatting.csharpier,
          null_ls.builtins.formatting.terraform_fmt,

          require("none-ls.diagnostics.eslint_d"),
          null_ls.builtins.diagnostics.mypy,
          -- null_ls.builtins.diagnostics.terraform_validate,
          null_ls.builtins.diagnostics.todo_comments,

          null_ls.builtins.code_actions.refactoring,
        },
      })

      vim.diagnostic.config({ virtual_text = true })

      vim.keymap.set("n", "<leader>gf", vim.lsp.buf.format, {})
    end,
  },
}
