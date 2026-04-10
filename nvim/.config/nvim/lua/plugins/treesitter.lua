vim.pack.add({
	{ src = "https://github.com/nvim-lua/plenary.nvim" },
	{ src = "https://github.com/neovim-treesitter/nvim-treesitter" },
})

require("nvim-treesitter").setup()
require("nvim-treesitter").install({
	"typescript",
	"fish",
	"go",
	"javascript",
	"json",
	"lua",
	"markdown",
	"sql",
	"tsx",
})
