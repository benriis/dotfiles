vim.pack.add({
	{ src = "https://github.com/folke/which-key.nvim" },
})

require("which-key").setup({
	preset = "helix",
	spec = {
		{
			mode = { "n", "x" },
			{ "<leader>f", group = "file/find" },
		},
	},
})
