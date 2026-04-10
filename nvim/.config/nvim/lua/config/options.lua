vim.opt.number = true
vim.opt.relativenumber = true
vim.opt.signcolumn = "yes"
vim.opt.completeopt = { "menuone", "noselect", "popup" }
vim.opt.tabstop = 2
vim.opt.shiftwidth = 2
vim.opt.expandtab = true -- use spaces instead of tabs
vim.opt.clipboard = "unnamedplus"
vim.opt.scrolloff = 10

-- Diagnostics
vim.diagnostic.config({
	virtual_text = {
		prefix = ">",
		spacing = 4,
		source = "if_many",
	},
	float = { source = true, border = "rounded" },
})

vim.api.nvim_create_autocmd("TextYankPost", {
	desc = "Highlight on yank",
	group = vim.api.nvim_create_augroup("highlight_yank", { clear = true }),
	callback = function()
		vim.highlight.on_yank({ higroup = "IncSearch", timeout = 150 })
	end,
})
