local map = vim.keymap.set

-- Navigate windows with <ctrl-hjkl>
map("n", "<C-h>", "<C-w>h", { desc = "Go to left window", remap = true })
map("n", "<C-j>", "<C-w>j", { desc = "Go to lower window", remap = true })
map("n", "<C-k>", "<C-w>k", { desc = "Go to upper window", remap = true })
map("n", "<C-l>", "<C-w>l", { desc = "Go to right window", remap = true })

-- Diagnostic
-- stylua: ignore start
map("n", "<leader>ca", function() vim.lsp.buf.code_action() end, { desc = "Go to right window"})
map("n", "<leader>cr", function() vim.lsp.buf.rename() end, { desc = "Go to right window"})
map("n", "K", function() vim.lsp.buf.hover() end, { desc = "Go to right window"})
map("n", "gd", function() vim.lsp.buf.definition() end, { desc = "Go to right window" })
-- stylua: ignore end

-- Trouble 
-- stylua: ignore start
map("n", "<leader>xx", "<cmd>Trouble diagnostics toggle<cr>", { desc = "Diagnostics (Trouble)"})
map("n", "gd", function() vim.lsp.buf.definition() end, { desc = "Go to right window", remap = true })
-- stylua: ignore end
