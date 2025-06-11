local autoformatting_group = vim.api.nvim_create_augroup('AutoFormatting', { clear = false })

vim.api.nvim_create_autocmd("BufWritePre", {
  pattern = "*",
  group = autoformatting_group,
  callback = function()
    vim.lsp.buf.format()
  end,
})

vim.api.nvim_create_autocmd('LspNotify', {
  callback = function(args)
    if args.data.method == 'textDocument/didOpen' then
      vim.lsp.foldclose('imports', vim.fn.bufwinid(args.buf))
    end
  end,
})
