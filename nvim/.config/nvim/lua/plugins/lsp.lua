return {
  { "neovim/nvim-lspconfig" },
  -- Formatting

  -- Linting
  {
    "mfussenegger/nvim-lint",
    config = function()
      local lint = require("lint")
      lint.linters_by_ft = {
        typescript = { "eslint_d" },
        javascript = { "eslint_d" },
        go = { "golangcilint" },
      }
      -- Run linter on save
      vim.api.nvim_create_autocmd({ "BufWritePost", "BufReadPost" }, {
        callback = function()
          lint.try_lint()
        end,
      })
    end,
  },

}
