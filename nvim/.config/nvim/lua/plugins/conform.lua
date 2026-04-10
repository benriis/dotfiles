vim.pack.add({
	{ src = "https://github.com/stevearc/conform.nvim" },
})

require("conform").setup({
	formatters_by_ft = {
		typescript = { "prettier" },
		javascript = { "prettier" },
		go = { "gofmt" },
		sql = { "sqlfmt" },
		lua = { "stylua" },
	},
	format_on_save = {
		timeout_ms = 500,
		lsp_fallback = true, -- fall back to LSP formatting if no formatter configured
	},
})
