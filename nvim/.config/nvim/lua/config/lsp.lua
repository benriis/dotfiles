-- Tells mason-lspconfig which servers to auto-install

-- Provides the server configs (cmd, filetypes, root markers, etc.)
-- In 0.11+ you don't call require('lspconfig').server.setup{} anymore


vim.lsp.enable({
  "ts_ls",
  "gopls",
  "sqls",
  "lua_ls",
})

-- Optional: show diagnostic signs in the gutter
vim.diagnostic.config({
  virtual_text = true, -- inline error text
  signs = true,
  underline = true,
  update_in_insert = false, -- don't show errors while you're mid-type
})
