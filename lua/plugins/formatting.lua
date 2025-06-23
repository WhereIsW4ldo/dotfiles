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
				-- javascript = { "eslint_d", "prettierd" },
				-- javascriptreact = { "eslint_d", "prettierd" },
				-- typescript = { "eslint_d", "prettierd" },
				-- typescriptreact = { "eslint_d", "prettierd" },
				terraform = { "terraform_fmt" },
				markdown = { "prettierd" },
				-- svelte = { "eslint_d" },
				json = { "prettierd" },
				["*"] = { "codespell" },
			},
		})
	end,
}
