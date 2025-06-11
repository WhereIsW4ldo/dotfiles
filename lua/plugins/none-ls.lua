return {
	{
		"nvimtools/none-ls.nvim",
		dependencies = {
			"nvimtools/none-ls-extras.nvim",
			"ThePrimeagen/refactoring.nvim",
		},
		config = function()
			local null_ls = require("null-ls")

			null_ls.setup({
				sources = {
					null_ls.builtins.formatting.stylua,
					null_ls.builtins.formatting.prettier,

					require("none-ls.diagnostics.eslint_d"),
					null_ls.builtins.diagnostics.mypy,
					null_ls.builtins.diagnostics.terraform_validate,
					null_ls.builtins.diagnostics.todo_comments,

					null_ls.builtins.code_actions.refactoring,

					null_ls.builtins.completion.luasnip,
				},
			})

			vim.diagnostic.config({ virtual_text = true })

			vim.keymap.set("n", "<leader>gf", vim.lsp.buf.format, {})
		end,
	},
	{
		"L3MON4D3/LuaSnip",
		-- follow latest release.
		version = "v2.4", -- Replace <CurrentMajor> by the latest released major (first number of latest release)
		-- install jsregexp (optional!).
		build = "make install_jsregexp",
	},
}
