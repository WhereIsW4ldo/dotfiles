local autoformatting_group = vim.api.nvim_create_augroup("AutoFormatting", { clear = false })

vim.api.nvim_create_autocmd("BufWritePre", {
	pattern = "*",
	group = autoformatting_group,
	callback = function(args)
		require("conform").format({ bufnr = args.buf })
	end,
})
