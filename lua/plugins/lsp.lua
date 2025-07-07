return {
	{
		"mason-org/mason.nvim",
		lazy = false,
		config = function()
			require("mason").setup()
		end,
		handlers = {
			function(server_name)
				local capabilities = require("cmp_nvim_lsp").default_capabilities()

				require("lspconfig")[server_name].setup({ capabilities = capabilities })
			end,
		},
	},
	{
		"WhoIsSethDaniel/mason-tool-installer.nvim",
		config = function()
			require("mason-tool-installer").setup({
				ensure_installed = {
					-- lsp
					"lua_ls",
					"csharp_ls",
					"jsonls",
					"rust_analyzer",
					"svelte",
					-- "ts_ls",
					"terraformls",
					"html",
					"cssls",
					"pyright",

					-- formatters
					"stylua",
					"prettierd",
					"rustfmt",
					"eslint_d",
					"terraform",

					-- linters
					"eslint_d",
					"selene",
					"tflint",
				},
				integrations = {
					["mason-lspconfig"] = true,
				},
			})
		end,
	},
	{
		"mason-org/mason-lspconfig.nvim",
		lazy = false,
		config = function()
			require("mason-lspconfig").setup({
				auto_install = true,
			})
		end,
	},
	{
		"neovim/nvim-lspconfig",
		config = function()
			vim.keymap.set("n", "K", function()
				vim.lsp.buf.hover({
					border = "rounded",
					max_width = 80,
					max_height = 30,
				})
			end, {})
			vim.keymap.set({ "n", "v" }, "<leader>ca", vim.lsp.buf.code_action, {})
			vim.keymap.set({ "n" }, "<leader>rr", vim.lsp.buf.rename, {})
		end,
	},
	{
		"pmizio/typescript-tools.nvim",
		dependencies = { "nvim-lua/plenary.nvim", "neovim/nvim-lspconfig" },
		opts = {},
	},
}
