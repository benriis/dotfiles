return {
  "stevearc/conform.nvim",
  opts = {
    format_on_save = {
      timeout_ms = 500,
      lsp_fallback = true,   -- fall back to LSP formatting if no formatter configured
    },
    formatters_by_ft = {
      typescript = { "prettier" },
      javascript = { "prettier" },
      go = { "gofmt" },
      sql = { "sqlfmt" },
      lua = { "stylua" },
    },
  },
}
