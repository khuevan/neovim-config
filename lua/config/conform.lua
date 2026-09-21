-- Conform.nvim - Modern formatter (null-ls successor)
local conform = require("conform")

conform.setup({
  formatters_by_ft = {
    python = { "ruff_format", "ruff_fix", "black" },
    rust = { "rustfmt" },
    lua = { "stylua" },
    javascript = { "prettier" },
    typescript = { "prettier" },
    javascriptreact = { "prettier" },
    typescriptreact = { "prettier" },
    json = { "prettier" },
    yaml = { "prettier" },
    markdown = { "prettier" },
    bash = { "shfmt" },
    sh = { "shfmt" },
  },
  format_on_save = {
    timeout_ms = 500,
    lsp_fallback = true,
  },
})

-- Format keybinding
vim.keymap.set({ "n", "v" }, "<leader>gf", function()
  conform.format({ async = true, lsp_fallback = true })
end, { noremap = true, silent = true, desc = "Format buffer" })

-- Format current line
vim.keymap.set("n", "gq", function()
  conform.format({ lsp_fallback = true })
end, { noremap = true, silent = true, desc = "Format current line" })
