return {
	"stevearc/conform.nvim",
	name = "conform",
	config = function()
		formatters_by_ft = {
			lua = { "stylua" },
			python = { "prettier" },
			rust = { "rustfmt" },
			javascript = { "prettier" },
		}

		format_on_save = {
			timeout_ms = 500,
			lsp_format = "fallback",
		}
	end,
}
