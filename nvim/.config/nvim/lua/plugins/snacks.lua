vim.pack.add({
	{ src = "https://github.com/folke/snacks.nvim" },
})

local Snacks = require("snacks")

Snacks.setup({
	explorer = {
		enabled = true,
	},
	picker = {
		enabled = true,
		sources = {
			explorer = {
				layout = {
					auto_hide = { "input" },
				},
			},
		},
	},
})

local map = vim.keymap.set
-- stylua: ignore start
map("n", "<leader>e", function() Snacks.explorer() end, { desc = "File Explorer" })
map("n", "<leader>fr", function() Snacks.picker.recent({filter = { cwd = true}}) end, { desc = "Recent" })
map("n", "<leader>ff", function() Snacks.picker.files() end, { desc = "Find Files" })
map("n", "<leader>/", function() Snacks.picker.grep() end, { desc = "Grep" })
-- stylua: ignore end
