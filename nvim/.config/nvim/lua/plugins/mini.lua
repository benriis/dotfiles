return {
	"echasnovski/mini.nvim",
	priority = 1000,
	lazy = false,
	keys = {
		{
			"<leader>ff",
			function()
				MiniPick.builtin.files()
			end,
			desc = "Find Files",
		},
		{
			"<leader>f/",
			function()
				MiniPick.builtin.grep_live()
			end,
			desc = "Live grep",
		},
		{
			"<leader>fb",
			function()
				MiniPick.builtin.buffers()
			end,
			desc = "Buffers",
		},
		{
			"<leader>fh",
			function()
				MiniPick.builtin.help()
			end,
			desc = "Help",
		},
		{
			"<leader>fr",
			function()
				MiniExtra.pickers.visit_paths({ recency_weight = 1, preserve_order = true })
			end,
			desc = "Recent files",
		},
		{
			"<leader>fg",
			function()
				MiniExtra.pickers.git_files({ scope = "modified" })
			end,
			desc = "Git modified files",
		},
		{
			"<leader>e",
			function()
				MiniFiles.open(vim.api.nvim_buf_get_name(0), false)
				MiniFiles.reveal_cwd()
			end,
			desc = "File explorer",
		},
	},
	config = function()
		require("mini.ai").setup()
		require("mini.animate").setup({
			cursor = {
				enable = false,
			},
		})
		require("mini.pairs").setup()
		require("mini.surround").setup()
		require("mini.operators").setup()
		require("mini.icons").setup()
		require("mini.completion").setup()
		require("mini.pick").setup()
		require("mini.extra").setup()
		require("mini.visits").setup()
		require("mini.statusline").setup()
		local miniclue = require("mini.clue")
		miniclue.setup({
			triggers = {
				-- Leader
				{ mode = "n", keys = "<Leader>" },
				{ mode = "x", keys = "<Leader>" },

				-- Built-in completion
				{ mode = "i", keys = "<C-x>" },

				-- g key
				{ mode = "n", keys = "g" },
				{ mode = "x", keys = "g" },

				-- Marks
				{ mode = "n", keys = "'" },
				{ mode = "x", keys = "'" },
				{ mode = "n", keys = "`" },
				{ mode = "x", keys = "`" },

				-- Registers
				{ mode = "n", keys = '"' },
				{ mode = "x", keys = '"' },
				{ mode = "i", keys = "<C-r>" },
				{ mode = "c", keys = "<C-r>" },

				-- Window commands
				{ mode = "n", keys = "<C-w>" },

				-- z key
				{ mode = "n", keys = "z" },
				{ mode = "x", keys = "z" },

				-- Brackets
				{ mode = "n", keys = "[" },
				{ mode = "n", keys = "]" },

				-- Text objects (after operators like c, d, y)
				{ mode = "o", keys = "a" },
				{ mode = "o", keys = "i" },
				{ mode = "x", keys = "a" },
				{ mode = "x", keys = "i" },
			},

			clues = {
				miniclue.gen_clues.builtin_completion(),
				miniclue.gen_clues.g(),
				miniclue.gen_clues.marks(),
				miniclue.gen_clues.registers(),
				miniclue.gen_clues.windows(),
				miniclue.gen_clues.z(),
			},
		})
		require("mini.files").setup({
			mappings = {
				go_in_plus = "<CR>",
			},
		})
	end,
}
