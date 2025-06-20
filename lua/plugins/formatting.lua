return {
	"stevearc/conform.nvim",
	name = "conform",
	event = { "BufReadPre", "BufNewFile" },
	config = function()
		local conform = require("conform")

		conform.setup({
			formatters_by_ft = {
				lua = { "stylua" },
				python = { "prettierd" },
				rust = { "rustfmt", lsp_format = "fallback" },
				javascript = { "eslint_d", "prettierd" },
				typescript = { "eslint_d", "prettierd" },
				terraform = { "terraform_fmt" },
				markdown = { "prettierd" },
				svelte = { "eslint_d" },
				["*"] = { "codespell" },
			},
			default_format_opts = {
				lsp_format = "fallback",
			},
			format_on_save = { timeout_ms = 500 },
		})
	end,
}
